AuctionatorConfigTabMixin = {}

function AuctionatorConfigTabMixin:OnLoad()
	Auctionator.Debug.Message("AuctionatorConfigTabMixin:OnLoad()")

	AuctionatorInsetMixin.OnLoad(self)
end

function AuctionatorConfigTabMixin:OpenOptions()
	InterfaceOptionsFrame:Show()
	InterfaceOptionsFrame_OpenToCategory(AUCTIONATOR_L_CONFIG_BASIC_OPTIONS_CATEGORY)
end
