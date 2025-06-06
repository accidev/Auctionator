AuctionatorItemHistoryFrameMixin = CreateFromMixins(AuctionatorEscapeToCloseMixin)

function AuctionatorItemHistoryFrameMixin:Init()
	self.DataProvider:Init(Auctionator.ShoppingLists.Events.ShowHistoricalPrices)
	self.ResultsListing:Init(self.DataProvider)

	Auctionator.EventBus:Register(self, {Auctionator.ShoppingLists.Events.ShowHistoricalPrices})
	self.isDocked = false
end

function AuctionatorItemHistoryFrameMixin:OnShow()
	Auctionator.Debug.Message("AuctionatorItemHistoryFrameMixin:OnShow()")

	AuctionatorEscapeToCloseMixin.OnShow(self)

	Auctionator.EventBus:RegisterSource(self, "lists item history dialog"):Fire(self, Auctionator.ShoppingLists.Events
		.DialogOpened):UnregisterSource(self)
end

function AuctionatorItemHistoryFrameMixin:OnHide()
	AuctionatorEscapeToCloseMixin.OnHide(self)

	self:Hide()

	Auctionator.EventBus:RegisterSource(self, "lists item history 1"):Fire(self,
		Auctionator.ShoppingLists.Events.DialogClosed):UnregisterSource(self)
end

function AuctionatorItemHistoryFrameMixin:ReceiveEvent(event, itemInfo)
	if event == Auctionator.ShoppingLists.Events.ShowHistoricalPrices then
		self.Title:SetText(AUCTIONATOR_L_X_PRICE_HISTORY:format(itemInfo.name))
	end
end

function AuctionatorItemHistoryFrameMixin:OnDockDialogClicked()
	self:ClearAllPoints()
	if self.isDocked then
		self:SetPoint("CENTER", self:GetParent(), "CENTER")
		-- Reset flipping
		self.Dock.Arrow:SetTexCoord(0, 1, 0, 1)
	else
		self:SetPoint("LEFT", AuctionHouseFrame, "RIGHT")
		-- Flip the texture to point back in
		self.Dock.Arrow:SetTexCoord(1, 0, 0, 1)
	end

	self.isDocked = not self.isDocked
end

function AuctionatorItemHistoryFrameMixin:OnCloseDialogClicked()
	self:Hide()
end
