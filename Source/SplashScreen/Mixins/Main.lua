-- We should probably move this into another file too
local MESSAGES = {{
	Version = "9.0.10",
	Description = AUCTIONATOR_L_SPLASH_9010_DESCRIPTION,
	Sections = {{
		Title = AUCTIONATOR_L_SPLASH_9010_FEATURES_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_9010_FEATURES_1}
	}, {
		Title = AUCTIONATOR_L_SPLASH_9010_UNANNOUNCED_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_9010_UNANNOUNCED_1}
	}}
}, {
	Version = "9.0.7",
	Description = AUCTIONATOR_L_SPLASH_907_DESCRIPTION,
	Sections = {{
		Title = AUCTIONATOR_L_SPLASH_907_FEATURES_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_907_FEATURES_1, AUCTIONATOR_L_SPLASH_907_FEATURES_2,
             AUCTIONATOR_L_SPLASH_907_FEATURES_3, AUCTIONATOR_L_SPLASH_907_FEATURES_4}
	}, {
		Title = AUCTIONATOR_L_SPLASH_907_UNANNOUNCED_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_907_UNANNOUNCED_1}
	}}
}, {
	Version = "9.0.5",
	Description = AUCTIONATOR_L_SPLASH_905_DESCRIPTION,
	Sections = {{
		Title = AUCTIONATOR_L_SPLASH_905_UPDATES_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_905_UPDATES_1}
	}}
}, {
	Version = "9.0.4",
	Description = AUCTIONATOR_L_SPLASH_904_DESCRIPTION,
	Sections = {{
		Title = AUCTIONATOR_L_SPLASH_904_FEATURES_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_904_FEATURES_1}
	}}
}, {
	Version = "9.0.3",
	Description = AUCTIONATOR_L_SPLASH_903_DESCRIPTION,
	Sections = {{
		Title = AUCTIONATOR_L_SPLASH_903_FEATURES_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_903_FEATURES_1, AUCTIONATOR_L_SPLASH_903_FEATURES_2}
	}}
}, {
	Version = "9.0.2",
	Description = AUCTIONATOR_L_SPLASH_902_DESCRIPTION,
	Sections = {{
		Title = AUCTIONATOR_L_SPLASH_902_FEATURES_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_902_FEATURES_1}
	}}
}, {
	Version = "9.0.1",
	Description = AUCTIONATOR_L_SPLASH_901_DESCRIPTION,
	Sections = {{
		Title = AUCTIONATOR_L_SPLASH_901_FEATURES_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_901_FEATURES_1, AUCTIONATOR_L_SPLASH_901_FEATURES_2}
	}, {
		Title = AUCTIONATOR_L_SPLASH_901_CHANGES_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_901_CHANGES_1, AUCTIONATOR_L_SPLASH_901_CHANGES_2}
	}}
}, {
	Version = "8.3.4",
	Description = AUCTIONATOR_L_SPLASH_834_DESCRIPTION,
	Sections = {{
		Title = AUCTIONATOR_L_SPLASH_834_SHOPPING_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_834_SHOPPING_1, AUCTIONATOR_L_SPLASH_834_SHOPPING_2,
             AUCTIONATOR_L_SPLASH_834_SHOPPING_3}
	}, {
		Title = AUCTIONATOR_L_SPLASH_834_SELLING_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_834_SELLING_1, AUCTIONATOR_L_SPLASH_834_SELLING_2}
	}, {
		Title = AUCTIONATOR_L_SPLASH_834_MISCELLANEOUS_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_834_MISCELLANEOUS_1}
	}}
}, {
	Version = "8.3.3",
	Description = AUCTIONATOR_L_SPLASH_833_DESCRIPTION,
	Sections = {{
		Title = AUCTIONATOR_L_SPLASH_833_SELLING_IMPROVEMENTS_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_833_SELLING_IMPROVEMENTS_1, AUCTIONATOR_L_SPLASH_833_SELLING_IMPROVEMENTS_2,
             AUCTIONATOR_L_SPLASH_833_SELLING_IMPROVEMENTS_3, AUCTIONATOR_L_SPLASH_833_SELLING_IMPROVEMENTS_4}
	}, {
		Title = AUCTIONATOR_L_SPLASH_833_CONNECTED_REALMS_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_833_CONNECTED_REALMS_1}
	}}
}, {
	Version = "8.3.2",
	Description = AUCTIONATOR_L_SPLASH_832_DESCRIPTION,
	Sections = {{
		Title = AUCTIONATOR_L_SPLASH_832_FEATURES_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_832_FEATURES_1, AUCTIONATOR_L_SPLASH_832_FEATURES_2,
             AUCTIONATOR_L_SPLASH_832_FEATURES_3, AUCTIONATOR_L_SPLASH_832_FEATURES_4,
             AUCTIONATOR_L_SPLASH_832_FEATURES_5, AUCTIONATOR_L_SPLASH_832_FEATURES_6,
             AUCTIONATOR_L_SPLASH_832_FEATURES_7}
	}, {
		Title = AUCTIONATOR_L_SPLASH_832_CUSTOMISATION_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_832_CUSTOMISATION_1, AUCTIONATOR_L_SPLASH_832_CUSTOMISATION_2,
             AUCTIONATOR_L_SPLASH_832_CUSTOMISATION_3, AUCTIONATOR_L_SPLASH_832_CUSTOMISATION_4,
             AUCTIONATOR_L_SPLASH_832_CUSTOMISATION_5}
	}}
}, {
	Version = "8.3.1",
	Description = nil,
	Sections = {{
		Title = AUCTIONATOR_L_SPLASH_831_CANCELLING,
		Entries = {AUCTIONATOR_L_SPLASH_831_CANCELLING_1, AUCTIONATOR_L_SPLASH_831_CANCELLING_2,
             AUCTIONATOR_L_SPLASH_831_CANCELLING_3}
	}}
}, {
	Version = "8.3.0",
	Description = AUCTIONATOR_L_SPLASH_830_DESCRIPTION,
	Sections = {{
		Title = AUCTIONATOR_L_SPLASH_830_BUGS_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_830_BUGS_1:format("https://tinyurl.com/AuctionatorDiscord"),
             AUCTIONATOR_L_SPLASH_830_BUGS_2:format("https://tinyurl.com/AuctionatorBug"),
             AUCTIONATOR_L_SPLASH_830_BUGS_3,
             AUCTIONATOR_L_SPLASH_830_BUGS_4:format("https://tinyurl.com/Auctionator83Release")}
	}, {
		Title = AUCTIONATOR_L_SPLASH_830_DONE_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_830_DONE_1, AUCTIONATOR_L_SPLASH_830_DONE_2, AUCTIONATOR_L_SPLASH_830_DONE_3}
	}, {
		Title = AUCTIONATOR_L_SPLASH_830_NOT_DONE_HEADER,
		Entries = {AUCTIONATOR_L_SPLASH_830_NOT_DONE_1, AUCTIONATOR_L_SPLASH_830_NOT_DONE_2,
             AUCTIONATOR_L_SPLASH_830_NOT_DONE_3}
	}}
}}

local NEW_MESSAGE_FONTS = {
	entry = GameFontHighlight,
	title = GameFontNormal,
	description = GameFontHighlight,
	version = GameFontNormalHuge
}

local VIEWED_MESSAGE_FONTS = {
	entry = GameFontDisable,
	title = GameFontDisable,
	description = GameFontDisable,
	version = GameFontDisableHuge
}

local STRING_WIDTH = 550

AuctionatorSplashScreenMixin = {}

function AuctionatorSplashScreenMixin:OnLoad()
	Auctionator.Debug.Message("AuctionatorSplashScreenMixin:OnLoad()")

	self.NineSlice:SetFrameLevel(self:GetFrameLevel())

	-- Trap mouse events (prevents click-through the frame)
	self:EnableMouse(true)

	table.insert(UISpecialFrames, self:GetName())

	self:ReformatCheckbox()
	self:CreateMessagesText()
end

function AuctionatorSplashScreenMixin:OnShow()
	Auctionator.Config.Set(Auctionator.Config.Options.SPLASH_SCREEN_VERSION, MESSAGES[1].Version)
end

function AuctionatorSplashScreenMixin:ReformatCheckbox()
	self.HideCheckbox.CheckBox:SetSize(28, 28)
	self.HideCheckbox.CheckBox:SetScript("OnClick", function()
		Auctionator.Config.Set(Auctionator.Config.Options.HIDE_SPLASH_SCREEN, self.HideCheckbox.CheckBox:GetChecked() == 1)
	end)

	self.HideCheckbox.CheckBox.Label:SetPoint("TOPLEFT", self.HideCheckbox.CheckBox, "TOPRIGHT", 3, -7)
end

function AuctionatorSplashScreenMixin:GetMostRecentVersion()
	return MESSAGES[1].Version
end

function AuctionatorSplashScreenMixin:CreateMessagesText()
	local lastVersion = Auctionator.Config.Get(Auctionator.Config.Options.SPLASH_SCREEN_VERSION)
	local fonts = NEW_MESSAGE_FONTS

	local previous
	local current
	local height = 0

	for _, messageSpec in ipairs(MESSAGES) do
		-- Gray out previously viewed versions
		if lastVersion == messageSpec.Version then
			fonts = VIEWED_MESSAGE_FONTS
		end

		-- Add version string
		current = self:CreateString(messageSpec.Version, fonts.version, previous, -30)
		height = height + current:GetStringHeight()
		previous = current

		-- Add description string
		if messageSpec.Description ~= nil then
			current = self:CreateString(messageSpec.Description, fonts.description, previous)
			height = height + current:GetStringHeight()
			previous = current
		end

		-- Add sections
		for _, section in ipairs(messageSpec.Sections or {}) do
			current = self:CreateString(section.Title, fonts.title, previous, -8)
			height = height + current:GetStringHeight()
			previous = current

			for _, entry in ipairs(section.Entries) do
				current = self:CreateBulletedString(entry, fonts.entry, previous)
				height = height + current:GetStringHeight()
				previous = current
			end
		end
	end

	self.ScrollFrame.Content:SetSize(600, height)
end

function AuctionatorSplashScreenMixin:CreateString(text, font, previousElement, offset)
	local entry = self.ScrollFrame.Content:CreateFontString(nil, "ARTWORK")

	if offset == nil then
		offset = -5
	end

	entry:SetFontObject(font)
	entry:SetText(text)
	entry:SetJustifyH("LEFT")
	entry:SetWidth(STRING_WIDTH)

	if previousElement ~= nil then
		entry:SetPoint("TOPLEFT", previousElement, "BOTTOMLEFT", 0, offset)
	else
		entry:SetPoint("TOPLEFT", self.ScrollFrame.Content, "TOPLEFT", -5)
	end

	return entry
end

-- Did this just to get nice alignment on the bulleted entries (otherwise the text wrapped below the bullet)
function AuctionatorSplashScreenMixin:CreateBulletedString(text, font, previousElement, offset)
	local bullet = self:CreateString("* ", font, previousElement, offset)
	bullet:SetWidth(20)
	bullet:SetJustifyV("TOP")

	local entry = self:CreateString(text, font, previousElement, offset)
	entry:SetPoint("TOPLEFT", bullet, "TOPRIGHT")
	entry:SetWidth(STRING_WIDTH - 20)

	bullet:SetHeight(entry:GetStringHeight())

	return bullet
end
