AuctionatorUndercutScanMixin = {}

local UNDERCUT_EVENTS = {"OWNED_AUCTIONS_UPDATED", "COMMODITY_SEARCH_RESULTS_UPDATED", "ITEM_SEARCH_RESULTS_UPDATED",
                         "AUCTION_HOUSE_CLOSED"}

local CANCELLING_EVENTS = {"AUCTION_CANCELED"}

function AuctionatorUndercutScanMixin:OnLoad()
	Auctionator.EventBus:RegisterSource(self, "AuctionatorUndercutScanMixin")
	Auctionator.EventBus:Register(self,
		{Auctionator.Cancelling.Events.RequestCancel, Auctionator.Cancelling.Events.RequestCancelUndercut,
   Auctionator.AH.Events.Ready})

	self.undercutAuctions = {}
	self.seenAuctionResults = {}

	self:SetCancel()
end

function AuctionatorUndercutScanMixin:OnShow()
	SetOverrideBinding(self, false, Auctionator.Config.Get(Auctionator.Config.Options.CANCEL_UNDERCUT_SHORTCUT),
		"CLICK AuctionatorCancelUndercutButton:LeftButton")
end

function AuctionatorUndercutScanMixin:OnHide()
	ClearOverrideBindings(self)
	FrameUtil.UnregisterFrameForCustomEvents(self, CANCELLING_EVENTS)
end

function AuctionatorUndercutScanMixin:StartScan()
	Auctionator.Debug.Message("AuctionatorUndercutScanMixin:OnUndercutScanButtonClick()")

	self.currentAuction = nil
	self.undercutAuctions = {}
	self.seenAuctionResults = {}

	Auctionator.EventBus:Fire(self, Auctionator.Cancelling.Events.UndercutScanStart)

	FrameUtil.RegisterFrameForCustomEvents(self, UNDERCUT_EVENTS)

	self.StartScanButton:SetEnabled(false)
	self:SetCancel()

	self:GetParent().DataProvider:QueryAuctions()
end

function AuctionatorUndercutScanMixin:SetCancel()
	self.CancelNextButton:SetEnabled(#self.undercutAuctions > 0)
end

function AuctionatorUndercutScanMixin:EndScan()
	Auctionator.Debug.Message("undercut scan ended")

	FrameUtil.UnregisterFrameForCustomEvents(self, UNDERCUT_EVENTS)

	self.StartScanButton:SetEnabled(true)

	self:SetCancel()
end

local function ShouldInclude(itemKey)
	if Auctionator.Config.Get(Auctionator.Config.Options.UNDERCUT_SCAN_NOT_LIFO) then
		return true
	else
		local classType = select(6, GetItemInfo(itemLink))
		return classType ~= ITEM_CLASS_2 and classType ~= ITEM_CLASS_4
	end
end
function AuctionatorUndercutScanMixin:NextStep()
	Auctionator.Debug.Message("next step")
	self.scanIndex = self.scanIndex + 1

	if self.scanIndex > C_AuctionHouse.GetNumOwnedAuctions() then
		self:EndScan()
		return
	end

	self.currentAuction = C_AuctionHouse.GetOwnedAuctionInfo(self.scanIndex)
	local itemKeyString = Auctionator.Utilities.ItemKeyString(self.currentAuction.itemKey)

	if (self.currentAuction.status == 1 or (type(self.currentAuction.bidder) == "string") or
		not ShouldInclude(self.currentAuction.itemKey)) then
		Auctionator.Debug.Message("undercut scan skip")

		self:NextStep()
	elseif self.seenAuctionResults[itemKeyString] ~= nil then
		Auctionator.Debug.Message("undercut scan already seen")

		self:ProcessUndercutResult(self.currentAuction, self.seenAuctionResults[itemKeyString])

		self:NextStep()
	else
		Auctionator.Debug.Message("undercut scan searching for undercuts", self.currentAuction.auctionID)

		self:SearchForUndercuts(self.currentAuction)
	end
end

function AuctionatorUndercutScanMixin:OnEvent(eventName, ...)
	if eventName == "OWNED_AUCTIONS_UPDATED" then
		if not self.currentAuction then
			Auctionator.Debug.Message("next step auto")

			self.scanIndex = 0

			self:NextStep()
		else
			Auctionator.Debug.Message("list no step auto")
		end

	elseif eventName == "AUCTION_HOUSE_CLOSED" then
		self:EndScan()

	elseif eventName == "AUCTION_CANCELED" then
		FrameUtil.UnregisterFrameForCustomEvents(self, CANCELLING_EVENTS)
		self:SetCancel()

	else
		Auctionator.Debug.Message("search results")
		self:ProcessSearchResults(self.currentAuction, ...)
	end
end

function AuctionatorUndercutScanMixin:ReceiveEvent(eventName, auctionID)
	if eventName == Auctionator.Cancelling.Events.RequestCancel then
		-- Used to disable button if all the undercut auctions have been cancelled
		for index, info in ipairs(self.undercutAuctions) do
			if info.auctionID == auctionID then
				table.remove(self.undercutAuctions, index)
				break
			end
		end
	elseif eventName == Auctionator.Cancelling.Events.RequestCancelUndercut then
		if self.CancelNextButton:IsEnabled() then
			self:CancelNextAuction()
		end
	elseif eventName == Auctionator.AH.Events.Ready then
		if Auctionator.AH.Internals.throttling:IsReady() then
			self:SetCancel()

			self.CancelAllButton:Enable()
		end
	end
end

function AuctionatorUndercutScanMixin:SearchForUndercuts(auctionInfo)
	local sortingOrder = nil

	local itemKeyInfo = C_AuctionHouse.GetItemKeyInfo(auctionInfo.itemKey)
	if itemKeyInfo == nil then
		self:EndScan()
	elseif itemKeyInfo.isCommodity then
		sortingOrder = {
			sortOrder = 0,
			reverseSort = false
		}
	else
		sortingOrder = {
			sortOrder = 4,
			reverseSort = false
		}
	end

	Auctionator.AH.SendSearchQuery(auctionInfo.itemKey, {sortingOrder}, true)
end

function AuctionatorUndercutScanMixin:ProcessSearchResults(auctionInfo, ...)
	local itemKeyInfo = C_AuctionHouse.GetItemKeyInfo(auctionInfo.itemKey)
	local notUndercutIDs = {}
	local resultCount = 0

	if itemKeyInfo.isCommodity then
		resultCount = C_AuctionHouse.GetNumCommoditySearchResults(auctionInfo.itemKey.itemID)
	else
		resultCount = C_AuctionHouse.GetNumItemSearchResults(auctionInfo.itemKey)
	end

	-- Identify all auctions which aren't undercut
	for index = 1, resultCount do
		local resultInfo
		if itemKeyInfo.isCommodity then
			resultInfo = C_AuctionHouse.GetCommoditySearchResultInfo(auctionInfo.itemKey.itemID, index)
		else
			resultInfo = C_AuctionHouse.GetItemSearchResultInfo(auctionInfo.itemKey, index)
		end

		if resultInfo.owners[1] ~= "player" then
			break
		else
			table.insert(notUndercutIDs, resultInfo.auctionID)
		end
	end

	if resultCount == 0 then
		return
	end

	self:ProcessUndercutResult(auctionInfo, notUndercutIDs)

	self:NextStep()
end

function AuctionatorUndercutScanMixin:ProcessUndercutResult(auctionInfo, notUndercutIDs)
	local isUndercut = tIndexOf(notUndercutIDs, auctionInfo.auctionID) == nil
	if isUndercut then
		table.insert(self.undercutAuctions, auctionInfo)
	end

	local itemKeyString = Auctionator.Utilities.ItemKeyString(self.currentAuction.itemKey)
	self.seenAuctionResults[itemKeyString] = notUndercutIDs

	Auctionator.EventBus:Fire(self, Auctionator.Cancelling.Events.UndercutStatus, auctionInfo.auctionID, isUndercut)
end

function AuctionatorUndercutScanMixin:CancelNextAuction()
	Auctionator.Debug.Message("AuctionatorUndercutScanMixin:CancelNextAuction()")
	FrameUtil.RegisterFrameForCustomEvents(self, CANCELLING_EVENTS)

	Auctionator.EventBus:Fire(self, Auctionator.Cancelling.Events.RequestCancel, self.undercutAuctions[1].auctionID)

	self.CancelNextButton:Disable()
end

function AuctionatorUndercutScanMixin:CancelAllAuctions()
	Auctionator.Debug.Message("AuctionatorUndercutScanMixin:CancelAllAuctions()")

	self.CancelNextButton:Disable()
	self.CancelAllButton:Disable()

	for index = C_AuctionHouse.GetNumOwnedAuctions(), 1, -1 do
		local info = C_AuctionHouse.GetOwnedAuctionInfo(index)

		if info and info.auctionID then
			Auctionator.EventBus:RegisterSource(self, "CancelAllAuctions"):Fire(self,
				Auctionator.Cancelling.Events.RequestAllCancel, info.auctionID):UnregisterSource(self)
		end
	end
end
