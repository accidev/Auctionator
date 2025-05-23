AUCTIONATOR_LOCALES.enUS = function()
	local L = {}

	L["CONFIG_BASIC_OPTIONS_CATEGORY"] = "Basic Options"
	L["CONFIG_BASIC_OPTIONS_TEXT"] = "Basic options for enabling features in Auctionator."
	L["CONFIG_AUTO_LIST_SEARCH"] = "Automatically scan for shopping list items."
	L["CONFIG_AUTO_LIST_SEARCH_TOOLTIP_HEADER"] = "Automatic List Search"
	L["CONFIG_AUTO_LIST_SEARCH_TOOLTIP_TEXT"] =
		"When a list is selected, automatically scan the auction house for the list entries. When this option is off, you may scan for the entire list when selecting the 'Search' button in the Shopping List sidebar."
	L["CONFIG_CHAT_LOG"] = "Show your new auctions in chat"
	L["CONFIG_CHAT_LOG_TOOLTIP_HEADER"] = "Auction Chat Log"
	L["CONFIG_CHAT_LOG_TOOLTIP_TEXT"] =
		"If this option is off your auctions will not be scanned to find your new auctions."

	L["CONFIG_SCANNING"] = "Full Scan Settings"
	L["CONFIG_AUTOSCAN"] = "Run autoscan when Auction House is opened."
	L["CONFIG_AUTOSCAN_TOOLTIP_HEADER"] = "Autoscan"
	L["CONFIG_AUTOSCAN_TOOLTIP_TEXT"] =
		"Run a full scan when the auction house is opened. If not selected, you may run a full scan by clicking the 'Full Scan' button in the auction house."
	L["CONFIG_AUTOSCAN_INTERVAL_HEADER"] = "Interval between autoscans"
	L["CONFIG_AUTOSCAN_INTERVAL"] = "Set to the number of minutes to wait between autoscans"
	L["CONFIG_AUTOSCAN_INTERVAL_TOOLTIP_HEADER"] = "Autoscan Delay Interval"
	L["CONFIG_AUTOSCAN_INTERVAL_TOOLTIP_TEXT"] =
		"By default an scan doesn't happen every time you open the Auction House. It waits until a fixed time has elapsed since the last scan."
	L["CONFIG_ALTERNATE_SCAN"] = "Use alternate slower scan mode by default"
	L["CONFIG_ALTERNATE_SCAN_HEADER"] = "Alternate Scan Mode"
	L["CONFIG_ALTERNATE_SCAN_TEXT"] =
		"The fast scan mode can cause disconnections on busy servers. This setting uses a slower and less likely to disconnect, scan method."

	L["CONFIG_DEVELOPER"] = "Developer Settings"
	L["CONFIG_DEBUG"] = "Toggle debug output."
	L["CONFIG_DEBUG_TOOLTIP_HEADER"] = "Auctionator Debug"
	L["CONFIG_DEBUG_TOOLTIP_TEXT"] = "This is used by the maintainers to output debug messages to the chat frame."

	L["CONFIG_SHOPPING_CATEGORY"] = "Shopping"
	L["CONFIG_SHOPPING_TEXT"] = "Options to change the behaviour of the Shopping tab."

	L["CONFIG_CANCELLING_CATEGORY"] = "Cancelling"
	L["CONFIG_CANCELLING_TEXT"] = "Options to change the behaviour of the Cancelling tab."

	L["CONFIG_TOOLTIPS_CATEGORY"] = "Tooltips"
	L["CONFIG_TOOLTIPS_TEXT"] = "Options to display different auction related information on game tooltips."
	L["CONFIG_MAIL_TOOLTIP"] = "Show mailbox tooltips"
	L["MAIL_TOOLTIP_TOOLTIP_HEADER"] = "Mailbox Tooltips"
	L["MAIL_TOOLTIP_TOOLTIP_TEXT"] = "Shows Auctionator information for items in your mailbox on mouseover."
	L["CONFIG_PET_TOOLTIP"] = "Show pet tooltips"
	L["PET_TOOLTIP_TOOLTIP_HEADER"] = "Pet Tooltips"
	L["PET_TOOLTIP_TOOLTIP_TEXT"] = "Shows Auctionator information for caged pets."
	L["CONFIG_VENDOR_TOOLTIP"] = "Show vendor tooltips."
	L["VENDOR_TOOLTIP_TOOLTIP_HEADER"] = "Vendor Tooltip Information"
	L["VENDOR_TOOLTIP_TOOLTIP_TEXT"] = "Show vendor information in tooltip on mouseover."
	L["CONFIG_AUCTION_TOOLTIP"] = "Show auction tooltips."
	L["AUCTION_TOOLTIP_TOOLTIP_HEADER"] = "Auction Tooltip Information"
	L["AUCTION_TOOLTIP_TOOLTIP_TEXT"] = "Show auction information in tooltip on mouseover."
	L["CONFIG_ENCHANT_TOOLTIP"] = "Show enchant tooltips."
	L["ENCHANT_TOOLTIP_TOOLTIP_HEADER"] = "Enchant Tooltip Information"
	L["ENCHANT_TOOLTIP_TOOLTIP_TEXT"] = "Show enchant information in tooltip on mouseover."
	L["CONFIG_STACK_TOOLTIP"] = "Show stack price when holding shift."
	L["STACK_TOOLTIP_TOOLTIP_HEADER"] = "Stack Prices"
	L["STACK_TOOLTIP_TOOLTIP_TEXT"] =
		"When selected, the shift key must be held to see stack prices. When not selected, stack prices show by default."

	L["CONFIG_LIFO_CATEGORY"] = "Selling: Items"
	L["CONFIG_NOT_LIFO_CATEGORY"] = "Selling: Gear/Pets"
	L["CONFIG_SELLING_LIFO_HEADER"] = "Selling: Items"
	L["CONFIG_SELLING_NOT_LIFO_HEADER"] = "Selling: Gear/Pets"
	L["CONFIG_SELLING_LIFO_TEXT"] =
		"Options to set undercutting percent or values and duration of most items. Without an undercut, these item categories group up with the last item added being the first to sell. Undercutting may not be necessary."
	L["CONFIG_SELLING_NOT_LIFO_TEXT"] =
		"Options to set undercutting percent or values and duration of gear and caged pets. These item categories are listed individually and a buyer can choose which one they want. Undercutting may be useful."
	L["DEFAULT_AUCTION_DURATION"] = "Default Auction Duration"
	L["AUCTION_DURATION_12"] = "12 Hours"
	L["AUCTION_DURATION_24"] = "24 Hours"
	L["AUCTION_DURATION_48"] = "48 Hours"

	L["CONFIG_UNDERCUT_SCAN_NOT_LIFO"] = "Include gear and pets in undercut scans"
	L["CONFIG_UNDERCUT_SCAN_NOT_LIFO_TOOLTIP_HEADER"] = "Gear/Pets Undercut Scans"
	L["CONFIG_UNDERCUT_SCAN_NOT_LIFO_TOOLTIP_TEXT"] =
		"Leave this on to include any pets and gear auctions when using the undercut scan. Turn this off to exclude pets and gear."
	L["CONFIG_CANCEL_UNDERCUT_SHORTCUT"] = "A shortcut to cancel the next undercut item found is"
	L["CONFIG_CANCEL_UNDERCUT_SHORTCUT_TOOLTIP_TEXT"] =
		"Click and then press the buttons that you wish to use as the shortcut. This shortcut will only be active in the Cancelling tab and won't affect any other shortcuts bound to the buttons."

	L["SALES_PREFERENCE"] = "Sales Preference"
	L["PERCENTAGE"] = "Percentage"
	L["SET_VALUE"] = "Set Value"

	L["PERCENTAGE_SUFFIX"] = "% Undercut"
	L["SET_VALUE_SUFFIX"] = "Undercut"

	L["PERCENTAGE_TOOLTIP_HEADER"] = "Undercut percentage"
	L["PERCENTAGE_TOOLTIP_TEXT"] =
		"The undercut percentage that will be used to calculate the sell price. For example, a value of 5 means that your item will be posted at 5% less than the current lowest price."

	L["UNDERCUT_TOOLTIP_HEADER"] = "Undercut Value"
	L["UNDERCUT_TOOLTIP_TEXT"] = "The undercut value that will be used to calculate the sell price."

	L["CONFIG_ADVANCED_CATEGORY"] = "Advanced"
	L["CONFIG_ADVANCED_TEXT"] = "Only look here if you know what you're doing"
	L["CONFIG_SCAN_SETTINGS"] = "Scan Settings"

	L["CONFIG_QUANTITIES_CATEGORY"] = "Selling: Quantities"
	L["CONFIG_QUANTITIES_TEXT"] = "Choose the default quantity used for the different item categories."

	L["AUTHOR_HEADER"] = "Author"
	L["TRANSLATORS_HEADER"] = "Translators"
	L["VERSION_HEADER"] = "Version"
	L["OPEN_ADDON_OPTIONS"] = "Open Addon Options"
	L["ENGAGE_HEADER"] = "Engage With Auctionator"
	L["DISCORD"] = "Discord"
	L["DISCORD_TOOLTIP_HEADER"] = "Join us in Discord!"
	L["DISCORD_TOOLTIP_TEXT"] =
		"We have an active community of Auctionator users that can help answer any questions you might have."
	L["BUG_REPORT"] = "Report a Bug"
	L["BUG_TOOLTIP_HEADER"] = "Report a Bug on Github"
	L["BUG_TOOLTIP_TEXT"] =
		"If you encounter an error while using Auctionator, please report on Github. Please provide enough details so that we can reproduce the bug! Using !BugGrabber and BugSack addons will help us as well."
	L["TRANSLATORS_HELP"] = "Please help translate!"
	L["TRANSLATORS_RUSSIAN"] = "Russian"

	L["STACK_AUCTION_INFO"] = "%s for %s (at %s each)"
	L["BIDDING_AUCTION_INFO"] = "%s bidding at %s"
	L["BUYOUT_AUCTION_INFO"] = "%s buyout at %s"

	L["STARTING_FULL_SCAN"] = "Starting a full scan."
	L["FULL_SCAN_IN_PROGRESS"] = "Full scan in progress."
	L["NEXT_SCAN_MESSAGE"] = "A full scan may be started in %s minutes and %s seconds."
	L["FULL_SCAN_FAILED"] = "Full scan failed to complete."
	L["FINISHED_PROCESSING"] = "Finished processing %s items."
	L["STARTING_FULL_SCAN_ALTERNATE"] = "Starting a full scan (alternate mode)."
	L["FULL_SCAN_ALTERNATE_FAILED"] = "Full scan (alternate mode) failed to complete."

	L["TOO_MANY_SEARCH_RESULTS"] = "Too many search results. Limiting results displayed."
	L["LIST_DELETE_ERROR"] = "An error occurred attempting to delete a list."
	L["LIST_ADD_ERROR"] = "An error occurred attempting to add an item to a list."

	L["TOO_SMALL_PERCENTAGE"] = "%% must be >= 0 (provided %s)"
	L["TOO_BIG_PERCENTAGE"] = "%% must be <= 100 (provided %s)"

	L["AUCTION"] = "Auction"
	L["CANNOT_AUCTION"] = "Cannot Auction"
	L["UNKNOWN"] = "unknown"
	L["VENDOR"] = "Vendor"
	L["DISENCHANT"] = "Disenchant"
	L["TOTAL_ITEMS_COLORED"] = "Total |cFFAAAAFF %s items|r"

	L["DELETE_LIST_NONE_SELECTED"] = "You must select a list to delete."
	L["DELETE_LIST_CONFIRM"] = "Are you SURE you want to delete '%s'?"
	L["CREATE_LIST_DIALOG"] = "Enter the name of the new shopping list:"
	L["RENAME_LIST_DIALOG"] = "Enter the new name for the shopping list:"
	L["ADD_TERM_TO_LIST_DIALOG"] = "Enter the search term to add:"

	L["RENAME"] = "Rename"
	L["SAVE_AS"] = "Save As"
	L["DELETE"] = "Delete"
	L["CREATE"] = "Create"
	L["ADD_ITEM"] = "Add Item"
	L["EDIT_ITEM"] = "Edit Item"
	L["SEARCH"] = "Search"
	L["EXPORT"] = "Export"
	L["IMPORT"] = "Import"

	L["SHOPPING_TAB"] = "Shopping"
	L["SHOPPING_TAB_HEADER"] = "Auctionator - Shopping Lists"
	L["INFO_TAB_HEADER"] = "Auctionator - Info"

	L["SELLING_TAB"] = "Selling"
	L["SELLING_TAB_HEADER"] = "Auctionator - Selling"

	L["CANCELLING_TAB"] = "Cancelling"
	L["CANCELLING_TAB_HEADER"] = "Auctionator - Cancelling"

	L["FETCHING_ITEM_INFO"] = "Fetching item info..."
	L["LIST_SEARCH_START"] = "Searching for items in %s..."
	L["LIST_SEARCH_STATUS"] = "Search for item %s/%s in\\n %s"
	L["RESULTS_PRICE_COLUMN"] = "Price"
	L["RESULTS_NAME_COLUMN"] = "Name"
	L["RESULTS_AVAILABLE_COLUMN"] = "Available"
	L["ITEM_LEVEL_COLUMN"] = "Item Level"
	L["SELLERS_COLUMN"] = "Seller(s)"
	L["SELLERS_OVERFLOW_TEXT"] = "%s, and %s more"
	L["OWNED_COLUMN"] = "Owned?"

	L["FULL_SCAN_BUTTON"] = "Full Scan"

	L["SPLASH_SCREEN_HEADER"] = "Welcome to Auctionator"
	L["SPLASH_830_DESCRIPTION"] =
		"Auctionator 8.3.0 is a complete re-write of Auctionator to work with the changes that Blizzard made to the Auction House in their 8.3 release. Please note that many of the features you may be used to from previous versions of Auctionator may not be implemented yet or may be in a different location! Please read the notes below for details."
	L["SPLASH_830_BUGS_HEADER"] = "Communication and Bug Reports"
	L["SPLASH_830_BUGS_1"] = "Please join us in the Auctionator Discord server %s"
	L["SPLASH_830_BUGS_2"] = "Please report bugs on Github %s"
	L["SPLASH_830_BUGS_3"] =
		"We are most active on Discord, and do not take bug reports on curseforge or Auctionator forums"

	L["SPLASH_830_DONE_HEADER"] = "Implemented Features"
	L["SPLASH_830_DONE_1"] =
		"Automatic scanning of the Auction House when opened (limited by Blizzard to every 15 minutes)"
	L["SPLASH_830_DONE_2"] = "Manual scanning of the Auction House from the 'Auctionator' tab in the Auction House"
	L["SPLASH_830_DONE_3"] = "Shopping Lists with advanced search terms from the 'Shopping' tab in the Auction House"

	L["SPLASH_830_NOT_DONE_HEADER"] = "Not Yet Implemented (But Coming Soon!)"
	L["SPLASH_830_NOT_DONE_1"] = "Undercut Scanning"
	L["SPLASH_830_NOT_DONE_2"] = "Price Histories"
	L["SPLASH_830_NOT_DONE_3"] = "Advanced Selling Functionality"

	L["SPLASH_831_CANCELLING"] = "New Cancelling Tab"
	L["SPLASH_831_CANCELLING_1"] = "Click once on any auction to cancel it."
	L["SPLASH_831_CANCELLING_2"] = "Scan for undercuts for all your auctions by clicking \"Undercut Scan\""
	L["SPLASH_831_CANCELLING_3"] = "Click \"Cancel Undercut\" repeatedly to cancel all undercut auctions."
	L["SPLASH_832_DESCRIPTION"] =
		"This release adds a new selling tab which replaces the modifications to the Blizzard Sell tab found in previous releases. To use undercutting or the different default duration features please use the \"Selling\" tab (the \"Sell\" tab no longer has those features)."
	L["SPLASH_832_FEATURES_HEADER"] = "Features of the Selling Tab"
	L["SPLASH_832_FEATURES_1"] = "Automatic undercutting (set a custom price or percentage to undercut with)"
	L["SPLASH_832_FEATURES_2"] = "Custom default auction duration (12/24/48 hours)"
	L["SPLASH_832_FEATURES_3"] = "Price histories (derived from the last 21 days of full scans)"
	L["SPLASH_832_FEATURES_4"] = "A bag view inside the tab to avoid needing to open your bags"
	L["SPLASH_832_FEATURES_5"] =
		"Existing owned auctions for the item being posted can be cancelled by right clicking on the auction listing"
	L["SPLASH_832_FEATURES_6"] =
		"Auctions which you don't own can be purchased by holding Alt and right clicking on the auction"
	L["SPLASH_832_FEATURES_7"] =
		"Holding the Alt key while clicking on an item in your bag puts it in the Selling tab ready to post (this can be changed to a right click in the settings)"
	L["SPLASH_832_CUSTOMISATION_HEADER"] = "Customising the Selling Tab"
	L["SPLASH_832_CUSTOMISATION_1"] = "The price history pane and the bag pane can be disabled"
	L["SPLASH_832_CUSTOMISATION_2"] =
		"The bag pane sections can start expanded (the default) or be configured to start collapsed"
	L["SPLASH_832_CUSTOMISATION_3"] =
		"The message in your chat telling you what auction you just created can be turned off"
	L["SPLASH_832_CUSTOMISATION_4"] =
		"Gear/Pets have their own undercutting and duration settings to configure, separate from the settings for most items"
	L["SPLASH_832_CUSTOMISATION_5"] =
		"The shortcuts to buy auctions, cancel auctions and select an item from your bag can be changed"
	L["SPLASH_833_DESCRIPTION"] = "This is a small release, with various quality of life improvements and bugfixes"
	L["SPLASH_833_SELLING_IMPROVEMENTS_HEADER"] = "Selling Tab Improvements"
	L["SPLASH_833_SELLING_IMPROVEMENTS_1"] =
		"Specific items can be hidden from the bag view (right-click the item icon and click \"Hide\")"
	L["SPLASH_833_SELLING_IMPROVEMENTS_2"] = "The bid price (if any) for auctions from other sellers is now shown"
	L["SPLASH_833_SELLING_IMPROVEMENTS_3"] = "Pets now have their level shown in the \"Item Level\" column"
	L["SPLASH_833_SELLING_IMPROVEMENTS_4"] = "New option to change the default quantity used when posting items"
	L["SPLASH_833_CONNECTED_REALMS_HEADER"] = "Connected Realms"
	L["SPLASH_833_CONNECTED_REALMS_1"] = "Full scan prices are now shared between connected realms"

	L["SPLASH_834_DESCRIPTION"] =
		"The highlights of this release are being able to import/export shopping lists and the return of the reagents search from a crafting window."

	L["SPLASH_834_SHOPPING_HEADER"] = "Shopping Tab"
	L["SPLASH_834_SHOPPING_1"] = "Added import and export feature to share shopping lists"
	L["SPLASH_834_SHOPPING_2"] = "You can set a default shopping list to search for when opening the Shopping tab"
	L["SPLASH_834_SHOPPING_3"] = "Ability to reorder and edit shopping list items"
	L["SPLASH_834_SELLING_HEADER"] = "Selling Tab"
	L["SPLASH_834_SELLING_1"] =
		"New favourites section in the selling tab. Right-click an item and click \"Add Favourite\" to use the feature."
	L["SPLASH_834_SELLING_2"] = "New default quantities for selling are separated for items vs gear/pets."
	L["SPLASH_834_MISCELLANEOUS_HEADER"] = "Miscellaneous"
	L["SPLASH_834_MISCELLANEOUS_1"] =
		"Search the AH for reagents from the crafting window (a \"Search\" button appears when both the crafting window and the AH are open)"

	L["SPLASH_901_DESCRIPTION"] =
		"Biggest changes in this release are customisable columns for item listings and the changes to the full scan. As always there are various bugfixes."

	L["SPLASH_901_FEATURES_HEADER"] = "New Features"
	L["SPLASH_901_FEATURES_1"] =
		"Customisable columns on all results views. Do a right click on any column header to see the options."
	L["SPLASH_901_FEATURES_2"] = "Small tabs option for when too many addons add tabs to the Auction House"
	L["SPLASH_901_CHANGES_HEADER"] = "Changes"
	L["SPLASH_901_CHANGES_1"] =
		"Replaced the full scan with a different method to avoid getting disconnected on busy servers."
	L["SPLASH_901_CHANGES_2"] = "The autoscan option now defaults to off."
	L["SPLASH_902_DESCRIPTION"] = "Along with the various bugfixes, there is one new feature."

	L["SPLASH_902_FEATURES_HEADER"] = "New Features"
	L["SPLASH_902_FEATURES_1"] =
		"A new \"Your History\" section on the Selling tab to show the prices of past auctions you have created."
	L["SPLASH_903_DESCRIPTION"] = "One bugfix, and a couple of new features."

	L["SPLASH_903_FEATURES_HEADER"] = "Features"
	L["SPLASH_903_FEATURES_1"] =
		"A new \"Export Results\" button has been added to the Shopping tab to export the current search results in CSV format, suitable for importing into Excel."
	L["SPLASH_903_FEATURES_2"] =
		"Favourite items in the Selling tab now stay visible even if they are no longer in your bag. This update resets your favourites list."

	L["SPLASH_904_DESCRIPTION"] = "Bugfixes and a new history view"
	L["SPLASH_904_FEATURES_HEADER"] = "Features"
	L["SPLASH_904_FEATURES_1"] =
		"Right-clicking on a result in the Shopping tab will now open a dialog showing its price history."
	L["SPLASH_905_DESCRIPTION"] = "Bugfixes and minor visual changes"
	L["SPLASH_905_UPDATES_HEADER"] = "Updates"
	L["SPLASH_905_UPDATES_1"] = "Smoother interactions in the Cancelling tab."

	L["SPLASH_907_DESCRIPTION"] = "A few new features and the usual bugfixes."
	L["SPLASH_907_FEATURES_HEADER"] = "Features"
	L["SPLASH_907_FEATURES_1"] = "Gear with item levels of at least 168 are now differentiated in tooltip auction prices."
	L["SPLASH_907_FEATURES_2"] =
		"A new \"Skip\" button will show to skip posting the current item when the option \"Automatically select the next item in your bag\" is on."
	L["SPLASH_907_FEATURES_3"] =
		"New keybinding options added for posting, skipping and cancelling. For example you can now set the space key to post or cancel, without impacting any other bindings. Find them in the \"Selling: Shortcuts\" and \"Cancelling\" options."
	L["SPLASH_907_FEATURES_4"] = "The Cancelling tab has a new search box."
	L["SPLASH_907_UNANNOUNCED_HEADER"] = "Unannounced features from 9.0.6"
	L["SPLASH_907_UNANNOUNCED_1"] =
		"An optional \"Seller(s)\" column (to see who is selling the auctions) has been added to the Selling tab. To activate it right-click a column header (e.g. \"Owned?\") in the current auctions listings."

	L["SPLASH_9010_DESCRIPTION"] =
		"Revamped selling quantity settings, if you have custom quantities set you'll likely need to set them again for this update."
	L["SPLASH_9010_FEATURES_HEADER"] = "Features"
	L["SPLASH_9010_FEATURES_1"] =
		"The default quantities for use in the Selling tab are now set based on the item's type. Find them in the \"Selling: Quantities\" options"
	L["SPLASH_9010_UNANNOUNCED_HEADER"] = "Unannounced features from 9.0.9"
	L["SPLASH_9010_UNANNOUNCED_1"] =
		"A new \"Show bid price option when listing an item\" option, found in \"Selling\" options, to allow bid prices to be set from the Selling tab"

	L["SPLASH_HIDE_MESSAGE"] = "Do not show until next update"

	L["LIST_ADD_ITEM_HEADER"] = "Add Shopping List Item"
	L["LIST_EDIT_ITEM_HEADER"] = "Edit Shopping List Item"
	L["SEARCH_TERM"] = "Search Term"
	L["EXACT_SEARCH"] = "Exact Search"
	L["ITEM_CLASS"] = "Item Class"
	L["ITEM_LEVEL"] = "Item Level"
	L["LEVEL"] = "Level"
	L["PRICE"] = "Price"
	L["DATE"] = "Date"
	L["CRAFTED_LEVEL"] = "Crafted Level"
	L["MIN"] = "Min"
	L["MAX"] = "Max"
	L["CANCEL"] = "Cancel"
	L["RESET_ALL"] = "Reset All"
	L["LIST_IMPORT_HEADER"] = "Import Shopping Lists"
	L["LIST_EXPORT_HEADER"] = "Export Shopping Lists"
	L["EXPORT_AS"] = "Export as:"
	L["EXPORT_STRING"] = "Shareable string"
	L["EXPORT_WHISPER"] = "Whisper to"
	L["CLOSE"] = "Close"
	L["COPY_TEXT_HEADER"] = "Copy Text"
	L["SELECT_ALL"] = "Select All"
	L["UNSELECT_ALL"] = "Unselect All"
	L["CONFIRM"] = "Confirm"
	L["X_PRICE_HISTORY"] = "%s Price History"

	L["ANY_LOWER"] = "any"

	L["NO_RESULTS"] = "No results found."

	L["UNDERCUT_SCAN"] = "Undercut Scan"
	L["CANCEL_UNDERCUT"] = "Cancel Undercut"
	L["NAME"] = "Name"
	L["QUANTITY"] = "Quantity"
	L["MAX"] = "Max"
	L["UNIT_PRICE"] = "Unit Price"
	L["UPPER_UNIT_PRICE"] = "Upper Unit Price"
	L["TIME_LEFT"] = "Time Left"
	L["IS_UNDERCUT"] = "Undercut?"
	L["UNDERCUT_YES"] = "Yes"
	L["UNDERCUT_NO"] = "No"
	L["UNDERCUT_UNKNOWN"] = "?"

	L["MONTH_1"] = "January"
	L["MONTH_2"] = "February"
	L["MONTH_3"] = "March"
	L["MONTH_4"] = "April"
	L["MONTH_5"] = "May"
	L["MONTH_6"] = "June"
	L["MONTH_7"] = "July"
	L["MONTH_8"] = "August"
	L["MONTH_9"] = "September"
	L["MONTH_10"] = "October"
	L["MONTH_11"] = "November"
	L["MONTH_12"] = "December"

	L["DAY_1"] = "Sunday"
	L["DAY_2"] = "Monday"
	L["DAY_3"] = "Tuesday"
	L["DAY_4"] = "Wednesday"
	L["DAY_5"] = "Thursday"
	L["DAY_6"] = "Friday"
	L["DAY_7"] = "Saturday"

	L["TEMPORARY_LOWER_CASE"] = "temporary"

	L["CONFIG_PROFILE_CATEGORY"] = "Profile"
	L["CONFIG_PROFILE_TEXT"] = "Setup per-character settings."
	L["CONFIG_PROFILE_TOGGLE"] = "Only apply settings to this character"
	L["PROFILE_TOGGLE_TOOLTIP_HEADER"] = "Enable per character settings"
	L["PROFILE_TOGGLE_TOOLTIP_TEXT"] = "Makes changes to the Auctionator settings only affect this character."

	L["BUYOUT_PRICE"] = "Buyout Price"
	L["BID_PRICE"] = "Bid Price"
	L["BIDDER"] = "Bidder"
	L["DURATION"] = "Duration"
	L["POST"] = "Post"
	L["SKIP"] = "Skip"
	L["DEPOSIT"] = "Deposit:"
	L["TOTAL_PRICE"] = "Total Price:"

	L["DEFAULT_TAB"] = "Default Tab"
	L["DEFAULT_TAB_TEXT"] = "shows as the default tab"
	L["NONE"] = "None"

	L["CONFIG_SMALL_TABS"] = "Use small tabs for the Auction House (reopen the Auction House for it to take effect)"
	L["CONFIG_SMALL_TABS_TOOLTIP_HEADER"] = "Small Tabs"
	L["CONFIG_SMALL_TABS_TOOLTIP_TEXT"] =
		"When too many addons add tabs to the Auction House they can end up overflowing past the end of the Auction House window. This setting makes the tabs smaller so they fit better."

	L["REAGENT_SEARCH"] = "Reagent Search"
	L["CONFIG_CRAFTING_COST_SHOW_PROFIT"] = "Show profit instead of crafting cost"
	L["CONFIG_CRAFTING_COST_SHOW_PROFIT_TOOLTIP_HEADER"] = "Crafting Cost Show Profit"
	L["CONFIG_CRAFTING_COST_SHOW_PROFIT_TOOLTIP_TEXT"] =
		"When the Auction House is open the crafting screen will show the cost of crafting an item. Enable this option to show the profit instead."

	L["CONFIG_SELLING_CATEGORY"] = "Selling"
	L["CONFIG_SELLING_TEXT"] = "Options to change the behaviour of the Selling tab"

	L["CONFIG_SELLING_SHORTCUTS_CATEGORY"] = "Selling: Shortcuts"
	L["CONFIG_SELLING_SHORTCUTS_TEXT"] = "Options for keyboard and mouse shortcuts inside the Selling tab"

	L["CONFIG_PRICE_HISTORY"] = "Show historical prices in the selling tab (reload required)"
	L["CONFIG_PRICE_HISTORY_TOOLTIP_HEADER"] = "Price History"
	L["CONFIG_PRICE_HISTORY_TOOLTIP_TEXT"] =
		"If this option is off the price history pane in the Selling tab will be hidden."
	L["CONFIG_SELLING_SHOW_BID_PRICE"] = "Show bid price option when listing an item (reload required)"
	L["CONFIG_SELLING_SHOW_BID_PRICE_TOOLTIP_HEADER"] = "Bid Options"
	L["CONFIG_SELLING_SHOW_BID_PRICE_TOOLTIP_TEXT"] = "Controls whether the bid price option appears when posting an item."
	L["CONFIG_BAG_COLLAPSED"] = "Bag sections start collapsed (reload required)"
	L["CONFIG_BAG_COLLAPSED_TOOLTIP_HEADER"] = "Bag collapsing on start"
	L["CONFIG_BAG_COLLAPSED_TOOLTIP_TEXT"] = "If this option is on the bag sections will start closed, instead of open."
	L["CONFIG_SELLING_BAG_SELECT_SHORTCUT"] = "on an item in your bag puts it in the Selling tab"
	L["CONFIG_SELLING_CANCEL_SHORTCUT"] = "on an auction you own will cancel it"
	L["CONFIG_SELLING_BUY_SHORTCUT"] = "on an auction you don't own will buy it"
	L["CONFIG_BAG_SHOW_SELLING_BAG"] = "Bag items list is shown (reload required)"
	L["CONFIG_BAG_SHOW_SELLING_BAG_TOOLTIP_HEADER"] = "Bag Items Listing"
	L["CONFIG_BAG_SHOW_SELLING_BAG_TOOLTIP_TEXT"] = "If this option is off the bag items pane will be hidden."
	L["CONFIG_SELLING_ICON_SIZE"] = "Bag icon size (reload required)"
	L["CONFIG_SELLING_ICON_SIZE_TOOLTIP_HEADER"] = "Size of Icons"
	L["CONFIG_SELLING_ICON_SIZE_TOOLTIP_TEXT"] =
		"This lets you make the bag item icons in the selling tab larger (up to 50) or smaller (down to 10). Default size is 42."
	L["CONFIG_SELLING_AUTO_SELECT_NEXT"] = "Automatically select the next item in your bag"
	L["CONFIG_SELLING_AUTO_SELECT_NEXT_TOOLTIP_HEADER"] = "Automatic item selection"
	L["CONFIG_SELLING_AUTO_SELECT_NEXT_TOOLTIP_TEXT"] = "When posting automatically select the next item in the bag view."
	L["CONFIG_SELLING_MISSING_FAVOURITES"] = "Always show favourite items, including when not in your bag."
	L["CONFIG_SELLING_MISSING_FAVOURITES_TOOLTIP_HEADER"] = "Missing favourites visible"
	L["CONFIG_SELLING_MISSING_FAVOURITES_TOOLTIP_TEXT"] =
		"Show favourite items in the bag view even when they aren't in your bag."
	L["CONFIG_SELLING_POST_SHORTCUT"] = "A keyboard/mouse shortcut to post the current item is"
	L["CUSTOM_KEYBOARD_SHORTCUTS"] = "Custom keyboard shortcuts"
	L["CONFIG_SELLING_POST_SHORTCUT_TOOLTIP_TEXT"] =
		"Click and then press the buttons that you wish to use as the shortcut. This shortcut will only be active in the Selling tab and won't affect any other shortcuts bound to the buttons."
	L["CONFIG_SELLING_SKIP_SHORTCUT"] = "A shortcut to skip posting the currently selected item is"
	L["CONFIG_BAG"] = "Bag"

	L["HIDE"] = "Hide"
	L["UNHIDE"] = "Unhide"
	L["UNHIDE_ALL"] = "Unhide All"
	L["UNHIDE_ALL_HIDDEN_ITEMS"] = "Unhide all hidden items"
	L["FAVOURITES"] = "Favourites"
	L["ADD_FAVOURITE"] = "Add Favourite"
	L["REMOVE_FAVOURITE"] = "Remove Favourite"

	L["LEFT_CLICK"] = "Left Click"
	L["RIGHT_CLICK"] = "Right Click"
	L["ALT_LEFT_CLICK"] = "Alt Left Click"
	L["ALT_RIGHT_CLICK"] = "Alt Right Click"
	L["SHIFT_LEFT_CLICK"] = "Shift Left Click"
	L["SHIFT_RIGHT_CLICK"] = "Shift Right Click"
	L["DISABLED"] = "Disabled"
	L["AUCTIONATOR"] = "Auctionator"

	L["GEAR_VENDOR_PRICE_MULTIPLIER"] = "Gear vendor price multiplier"

	L["CONFIG_SELLING_DEFAULT_QUANTITY_SUFFIX"] = "Set to 0 for max. amount"
	L["CONFIG_SELLING_DEFAULT_QUANTITY_TOOLTIP_HEADER"] = "Default Posting Quantity"
	L["CONFIG_SELLING_DEFAULT_QUANTITY_TOOLTIP_TEXT"] =
		"This lets you change the default amount used when posting an item. Set this to 0 to use the maximum possible amount."
	L["CONFIG_SELLING_GEAR_VENDOR_PRICE_MULTIPLIER_SUFFIX"] = "Set to 0 for no price"
	L["CONFIG_SELLING_GEAR_VENDOR_PRICE_MULTIPLIER_TOOLTIP_HEADER"] = "Gear Vendor Price Default"
	L["CONFIG_SELLING_GEAR_VENDOR_PRICE_MULTIPLIER_TOOLTIP_TEXT"] =
		"This lets you set a default price for gear as a multiple of the vendor price. This is used for any gear Auctionator doesn't have a price for. Set this to 0 to not set a price."
	L["CONFIG_SELLING_GEAR_USE_ILVL_VARIANTS"] =
		"For gear, use item level and title when selecting the price to compete with"
	L["CONFIG_SELLING_GEAR_USE_ILVL_VARIANTS_TOOLTIP_HEADER"] = "Use Item Level and Title"
	L["CONFIG_SELLING_GEAR_USE_ILVL_VARIANTS_TOOLTIP_TEXT"] =
		"Normally gear is compared with any other gear that is similar, but without taking item level and the \"of the\" titles into account. This will make them be taken into account."

	L["CLASSIC_SUPPORT_ERROR"] = "This version of Auctionator DOES NOT support Classic. Stuff may break and not work."

	L["DEFAULT_LIST_HEADER"] = "Default Shopping List"

	L["REAGENT_SEARCH"] = "Reagent Search"
	L["NUMBER_SEPARATOR"] = ","
	L["TOTAL_ON_SALE"] = "Total on sale: %s"
	L["REALM_HISTORY"] = "Realm History"
	L["YOUR_HISTORY"] = "Your History"
	L["EXPORT_RESULTS"] = "Export Results"
	L["TO_CRAFT_COLON"] = "To Craft:"
	L["PROFIT_COLON"] = "Profit:"
	L["SCROLL_OF_ENCHANTS"] = "Scroll of Enchants"
	L["ENCHANT"] = "Enchant"

	L["DETAILS_ENCHANT_TOOLTIPS"] = "Details enchant tooltips."
	L["DETAILS_ENCHANT_TOOLTIPS_TEXT"] = ""
	L["REQUIRED_DE_SKILL_LEVEL"] = "Required DE skill level"
	L["SHIFT"] = "SHIFT"
	L["CONTROL"] = "CONTROL"
	L["ALT"] = "ALT"
	L["NEVER"] = "Never"
	L["ALWAYS"] = "Always"

	return L
end
