AuctionatorReagentSearchButtonMixin = {}

function AuctionatorReagentSearchButtonMixin:OnLoad()
	DynamicResizeButton_Resize(self)

	FrameUtil.RegisterFrameForCustomEvents(self, {"AUCTION_HOUSE_SHOW", "AUCTION_HOUSE_CLOSED"})

	hooksecurefunc("TradeSkillFrame_SetSelection", function(id)
		self:ShowWhenRecipeAndAHOpen()
		if self:IsVisible() then
			self:UpdateTotal()
		end
	end)

	Auctionator.API.v1.RegisterForDBUpdate(AUCTIONATOR_L_REAGENT_SEARCH, function()
		self:ShowWhenRecipeAndAHOpen()

		if self:IsVisible() then
			self:UpdateTotal()
		end
	end)

	DynamicResizeButton_Resize(self)
end

function AuctionatorReagentSearchButtonMixin:ShowWhenRecipeAndAHOpen()
	local selectionIndex = GetTradeSkillSelectionIndex()
	self:SetShown(AuctionHouseFrame ~= nil and AuctionHouseFrame:IsShown() and selectionIndex and selectionIndex <=
		              GetNumTradeSkills())
end

function AuctionatorReagentSearchButtonMixin:UpdateTotal()
	local price

	if Auctionator.Config.Get(Auctionator.Config.Options.CRAFTING_COST_SHOW_PROFIT) then
		local price = WHITE_FONT_COLOR:WrapTextInColorCode(Auctionator.Utilities.CreateMoneyString(Auctionator.ReagentSearch
			                                                                                           .GetAHProfit()))

		self.Total:SetText(AUCTIONATOR_L_PROFIT_COLON .. " " .. price)

	else
		local price = WHITE_FONT_COLOR:WrapTextInColorCode(Auctionator.Utilities.CreateMoneyString(Auctionator.ReagentSearch
			                                                                                           .GetSkillReagentsTotal()))

		self.Total:SetText(AUCTIONATOR_L_TO_CRAFT_COLON .. " " .. price)
	end
end

function AuctionatorReagentSearchButtonMixin:OnClick()
	if AuctionHouseFrame and AuctionHouseFrame:IsShown() then
		Auctionator.ReagentSearch.DoTradeSkillReagentsSearch()
	end
end

function AuctionatorReagentSearchButtonMixin:OnEvent(...)
	self:ShowWhenRecipeAndAHOpen()
end
