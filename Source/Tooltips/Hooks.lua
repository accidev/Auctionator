-- This is called when mousing over an item in your bags
hooksecurefunc(GameTooltip, "SetBagItem", function(tip, bag, slot)
	local itemLink = GetContainerItemLink(bag, slot)

	if itemLink then
		local _, itemCount = GetContainerItemInfo(bag, slot)

		Auctionator.Tooltip.ShowTipWithPricing(tip, itemLink, itemCount)
	end
end);

-- This is called when mousing over an item in a merchant window (Buyback Pane)
hooksecurefunc(GameTooltip, "SetBuybackItem", function(tip, slotIndex)
	local itemLink = GetBuybackItemLink(slotIndex)
	local _, _, _, itemCount = GetBuybackItemInfo(slotIndex);

	Auctionator.Tooltip.ShowTipWithPricing(tip, itemLink, itemCount)
end);

-- This is called when mousing over an item in a merchant window (Merchant Pane)
hooksecurefunc(GameTooltip, "SetMerchantItem", function(tip, index)
	local itemLink = GetMerchantItemLink(index)
	local _, _, _, itemCount = GetMerchantItemInfo(index);

	Auctionator.Tooltip.ShowTipWithPricing(tip, itemLink, itemCount)
end);

-- This is called when mousing over an item in your bank, or a bag in your bag list
hooksecurefunc(GameTooltip, "SetInventoryItem", function(tip, unit, slot)
	local itemLink = GetInventoryItemLink(unit, slot)
	local itemCount = GetInventoryItemCount(unit, slot)

	Auctionator.Tooltip.ShowTipWithPricing(tip, itemLink, itemCount ~= 0 and itemCount or 1)
end);

-- This is called when mousing over an item in your guild bank
-- Guild banks don't keep track of pets inside them correctly, so showing the AH
-- price is difficult.
hooksecurefunc(GameTooltip, "SetGuildBankItem", function(tip, tab, slot)
	local itemLink = GetGuildBankItemLink(tab, slot)
	local _, itemCount = GetGuildBankItemInfo(tab, slot)

	Auctionator.Tooltip.ShowTipWithPricing(tip, itemLink, itemCount)
end);

hooksecurefunc(GameTooltip, "SetTradeSkillItem", function(tip, skill, id)
	local itemLink = GetTradeSkillItemLink(skill)
	local itemCount = GetTradeSkillNumMade(skill)
	if id then
		itemLink = GetTradeSkillReagentItemLink(skill, id)
		itemCount = select(3, GetTradeSkillReagentInfo(skill, id))
	end

	Auctionator.Tooltip.ShowTipWithPricing(tip, itemLink, itemCount)
end);

-- This is called when mousing over an item in the loot window
hooksecurefunc(GameTooltip, "SetLootItem", function(tip, slot)
	if LootSlotIsItem(slot) then
		local itemLink, _, itemCount = GetLootSlotLink(slot);

		Auctionator.Tooltip.ShowTipWithPricing(tip, itemLink, itemCount)
	end
end);

-- TODO Haven't tested this so making an educated guess:
-- This is called when mousing over an item in the loot roll window
hooksecurefunc(GameTooltip, "SetLootRollItem", function(tip, slot)
	local itemLink = GetLootRollItemLink(slot)

	local _, _, itemCount = GetLootRollItemInfo(slot)

	Auctionator.Tooltip.ShowTipWithPricing(tip, itemLink, itemCount)
end);

-- This is called when mousing over an item in a quest window
hooksecurefunc(GameTooltip, "SetQuestItem", function(tip, type, index)
	local itemLink = GetQuestItemLink(type, index)

	local _, _, itemCount = GetQuestItemInfo(type, index);

	Auctionator.Tooltip.ShowTipWithPricing(tip, itemLink, itemCount)
end);

-- This is called when mousing over an item in a quest description in your quest log
hooksecurefunc(GameTooltip, "SetQuestLogItem", function(tip, type, index)
	local itemLink = GetQuestLogItemLink(type, index)

	local itemCount;
	if type == "choice" then
		_, _, itemCount = GetQuestLogChoiceInfo(index);
	else
		_, _, itemCount = GetQuestLogRewardInfo(index)
	end

	Auctionator.Tooltip.ShowTipWithPricing(tip, itemLink, itemCount)
end);

-- This is called when mousing over an item in the send mail window
hooksecurefunc(GameTooltip, "SetSendMailItem", function(tip, id)
	local _, _, _, itemCount = GetSendMailItem(id)
	local itemLink = GetSendMailItemLink(id);

	Auctionator.Tooltip.ShowTipWithPricing(tip, itemLink, itemCount)
end);

-- This occurs when:
-- 1. mousing over an item in the Open Mail frame
-- 2. mousing over an item in the Inbox frame
hooksecurefunc(GameTooltip, "SetInboxItem", function(tip, index, attachIndex)
	if Auctionator.Config.Get(Auctionator.Config.Options.MAILBOX_TOOLTIPS) then
		local attachmentIndex = attachIndex or 1

		local itemLink = GetInboxItemLink(index, attachmentIndex)

		local _, _, _, itemCount = GetInboxItem(index, attachmentIndex);

		Auctionator.Tooltip.ShowTipWithPricing(tip, itemLink, itemCount)
	end
end);

-- This occurs when mousing over an item in the Inbox frame
hooksecurefunc("InboxFrameItem_OnEnter", function(self)
	local itemCount = select(8, GetInboxHeaderInfo(self.index))
	local tooltipEnabled = Auctionator.Config.Get(Auctionator.Config.Options.MAILBOX_TOOLTIPS) and
		                       (Auctionator.Config.Get(Auctionator.Config.Options.VENDOR_TOOLTIPS) or
			                       Auctionator.Config.Get(Auctionator.Config.Options.AUCTION_TOOLTIPS) or
			                       Auctionator.Config.Get(Auctionator.Config.Options.ENCHANT_TOOLTIPS))

	if tooltipEnabled and itemCount and itemCount > 1 then
		local itemEntries = {}
		local name, itemCount, itemLink

		for attachmentIndex = 1, ATTACHMENTS_MAX_RECEIVE do
			name, _, _, itemCount = GetInboxItem(self.index, attachmentIndex)

			if name then
				itemLink = GetInboxItemLink(self.index, attachmentIndex)

				if itemLink then
					table.insert(itemEntries, {
						link = itemLink,
						count = itemCount,
						name = name
					})
				end
			end
		end

		Auctionator.Tooltip.ShowTipWithMultiplePricing(GameTooltip, itemEntries)
	end
end);

-- This occurs when clicking on an item link (i.e. in chat)
hooksecurefunc(ItemRefTooltip, "SetHyperlink", function(tip, itemstring)
	local _, itemLink = GetItemInfo(itemstring);

	Auctionator.Tooltip.ShowTipWithPricing(tip, itemLink, 1)
end);

-- Occurs when mousing over  items I'm trading
hooksecurefunc(GameTooltip, "SetTradePlayerItem", function(tip, id)
	local itemLink = GetTradePlayerItemLink(id)
	if itemLink ~= nil then
		local _, _, itemCount = GetTradePlayerItemInfo(id);

		Auctionator.Tooltip.ShowTipWithPricing(tip, itemLink, itemCount)
	end
end);

-- Occurs when mousing over items other player are trading
hooksecurefunc(GameTooltip, "SetTradeTargetItem", function(tip, id)
	local itemLink = GetTradeTargetItemLink(id)
	if itemLink ~= nil then
		local _, _, itemCount = GetTradeTargetItemInfo(id)

		Auctionator.Tooltip.ShowTipWithPricing(tip, itemLink, itemCount)
	end
end);

-- Occurs mainly with addons (Blizzard and otherwise)
hooksecurefunc(GameTooltip, "SetHyperlink", function(tip, itemID)
	if not itemID then
		return
	end

	local itemLink = select(2, GetItemInfo(itemID))

	Auctionator.Tooltip.ShowTipWithPricing(tip, itemLink, 1)
end);
