AuctionatorBagClassListingMixin = {}

function AuctionatorBagClassListingMixin:OnLoad()
	self.iconSize = Auctionator.Config.Get(Auctionator.Config.Options.SELLING_ICON_SIZE)

	self.items = {}
	self.buttons = {}
	self.buttonPool = CreateAndInitFromMixin(Auctionator.Utilities.PoolMixin)
	self.buttonPool:SetCreator(function()
		local button = CreateFrame("Button", self.buttonNamePrefix .. #self.items, self.ItemContainer, "AuctionatorBagItem")
		button:SetSize(self.iconSize, self.iconSize)
		return button
	end)

	local title = self:GetAttribute("title")
	title = _G[title] or title
	local classId = self:GetAttribute("classId")
	classId = _G[classId] or classId

	if title == nil and classId ~= nil then
		title = GetItemClassInfo(classId)
		self:SetAttribute("title", title)
	end

	self:UpdateTitle()
	self:SetHeight(self.SectionTitle:GetHeight())

	self.SectionTitle:SetWidth(self:GetRowWidth())
	self.SectionTitle.NormalTexture:SetWidth(self:GetRowWidth() + 8)
	self.SectionTitle.Text:SetPoint("LEFT", 12, 0)
	self.SectionTitle.HighlightTexture:SetSize(self:GetRowWidth() + 9, self.SectionTitle:GetHeight())

	self.buttonNamePrefix = (self:GetName() or "") .. "Item"

	self.collapsed = false

	if Auctionator.Config.Get(Auctionator.Config.Options.SELLING_BAG_COLLAPSED) then
		self.collapsed = true
		self.ItemContainer:Hide()
	end
end

function AuctionatorBagClassListingMixin:Reset()
	self.items = {}

	for _, item in ipairs(self.buttons) do
		item:Hide()
		self.buttonPool:Return(item)
	end

	self.buttons = {}
end

function AuctionatorBagClassListingMixin:GetRowLength()
	return math.floor(250 / self.iconSize)
end

function AuctionatorBagClassListingMixin:GetRowWidth()
	return self:GetRowLength() * self.iconSize
end

function AuctionatorBagClassListingMixin:UpdateTitle()
	local title = self:GetAttribute("title")
	title = (_G[title] or title) or ""
	self.SectionTitle:SetText(title .. " (" .. #self.items .. ")")
end

function AuctionatorBagClassListingMixin:AddItems(itemList)
	for _, item in ipairs(itemList) do
		self:AddItem(item)
	end

	self:UpdateTitle()

	self:DrawButtons()

	self:UpdateForCollapsing()

	self:UpdateForEmpty()
end

function AuctionatorBagClassListingMixin:AddItem(item)
	local button = self.buttonPool:Get()

	button:Show()

	button:SetItemInfo(item)

	table.insert(self.buttons, button)
	table.insert(self.items, item)
end

function AuctionatorBagClassListingMixin:DrawButtons()
	local rows = 1

	for index, button in ipairs(self.buttons) do
		if index == 1 then
			button:SetPoint("TOPLEFT", self.ItemContainer, "TOPLEFT", 0, -2)
		elseif ((index - 1) % self:GetRowLength()) == 0 then
			rows = rows + 1
			button:SetPoint("TOPLEFT", self.buttons[index - self:GetRowLength()], "BOTTOMLEFT")
		else
			button:SetPoint("TOPLEFT", self.buttons[index - 1], "TOPRIGHT")
		end
	end

	if #self.buttons > 0 then
		self.ItemContainer:SetSize(self.buttons[1]:GetWidth() * 3, rows * self.iconSize + 2)
	else
		self.ItemContainer:SetSize(0, 0)
	end

	self:SetSize(self.iconSize * self:GetRowLength(), self.ItemContainer:GetHeight() + self.SectionTitle:GetHeight())
end

function AuctionatorBagClassListingMixin:UpdateForCollapsing()
	if self.collapsed then
		self.ItemContainer:Hide()
		self:SetHeight(self.SectionTitle:GetHeight())
	else
		self.ItemContainer:Show()
		self:SetHeight(self.ItemContainer:GetHeight() + self.SectionTitle:GetHeight())
	end
end

-- Hide the frame if there are no buttons in it.
-- Anchors are updated to ensure a blank space isn't left behind
function AuctionatorBagClassListingMixin:UpdateForEmpty()
	-- Get the TOPLEFT anchor and its relative frame
	local relativeTo, relativePoint
	for i = 1, self:GetNumPoints() do
		local point, anchor, point2 = self:GetPoint(1)
		if point == "TOPLEFT" then
			relativeTo = anchor
			relativePoint = point2
			break
		end
	end

	-- Shift the title up slightly
	if #self.buttons == 0 then
		self:SetPoint("TOPLEFT", relativeTo, relativePoint, 0, self.SectionTitle:GetHeight())
		self:SetPoint("RIGHT", self:GetParent(), "RIGHT")
		self:Hide()
	else
		self:SetPoint("TOPLEFT", relativeTo, relativePoint, 0, 0)
		self:SetPoint("RIGHT", self:GetParent(), "RIGHT")
		self:Show()
	end
end

function AuctionatorBagClassListingMixin:OnClick()
	self.collapsed = not self.collapsed

	self:UpdateForCollapsing()
end
