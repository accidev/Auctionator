AuctionatorConfigShoppingFrameMixin = CreateFromMixins(AuctionatorPanelConfigMixin)

function AuctionatorConfigShoppingFrameMixin:OnLoad()
	Auctionator.Debug.Message("AuctionatorConfigShoppingFrameMixin:OnLoad()")

	self.name = AUCTIONATOR_L_CONFIG_SHOPPING_CATEGORY
	self.parent = "Auctionator"

	self:SetupPanel()
end

local function GetShoppingListNames()
	local names = {AUCTIONATOR_L_NONE}
	local values = {Auctionator.Constants.NO_LIST}
	for index, list in ipairs(Auctionator.ShoppingLists.Lists or {}) do
		table.insert(names, list.name)
		table.insert(values, list.name)
	end
	return names, values
end

function AuctionatorConfigShoppingFrameMixin:OnShow()
	self.AutoListSearch:SetChecked(Auctionator.Config.Get(Auctionator.Config.Options.AUTO_LIST_SEARCH))

	self.DefaultShoppingList:InitAgain(GetShoppingListNames())

	local currentDefault = Auctionator.Config.Get(Auctionator.Config.Options.DEFAULT_LIST)
	if Auctionator.ShoppingLists.ListIndex(currentDefault) == nil then
		currentDefault = ""
	end

	self.DefaultShoppingList:SetValue(currentDefault)
end

function AuctionatorConfigShoppingFrameMixin:Save()
	Auctionator.Debug.Message("AuctionatorConfigShoppingFrameMixin:Save()")

	Auctionator.Config.Set(Auctionator.Config.Options.AUTO_LIST_SEARCH, self.AutoListSearch:GetChecked())

	Auctionator.Config.Set(Auctionator.Config.Options.DEFAULT_LIST, self.DefaultShoppingList:GetValue())
end

function AuctionatorConfigShoppingFrameMixin:Cancel()
	Auctionator.Debug.Message("AuctionatorConfigShoppingFrameMixin:Cancel()")
end
