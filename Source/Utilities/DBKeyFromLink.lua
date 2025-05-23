function Auctionator.Utilities.BasicDBKeyFromLink(itemLink)
	if itemLink ~= nil then
		local _, _, itemString = string.find(itemLink, "^|c%x+|H(.+)|h%[.*%]")
		if itemString ~= nil then
			local linkType, itemId, _, _, _, _, _, _, _ = strsplit(":", itemString)
			if linkType == "item" then
				return itemId;
			end
		end
	end
	return nil
end

local function IsGear(itemLink)
	local classType = select(6, GetItemInfo(itemLink))
	return classType == ITEM_CLASS_2 or classType == ITEM_CLASS_4
end

function Auctionator.Utilities.DBKeyFromLink(itemLink, callback)
	if itemLink == nil then
		callback({})
		return
	end

	local basicKey = Auctionator.Utilities.BasicDBKeyFromLink(itemLink)

	if IsGear(itemLink) then
		local _, _, _, itemLevel = GetItemInfo(itemLink)
		if not itemLevel then
			itemLevel = 0
		end

		if itemLevel >= Auctionator.Constants.ITEM_LEVEL_THRESHOLD then
			callback({"g:" .. basicKey .. ":" .. itemLevel, basicKey})
		else
			callback({basicKey})
		end
	else
		callback({basicKey})
	end
end

function Auctionator.Utilities.DBKeysFromMultipleLinks(itemLinks, callback)
	local result = {}

	for index, link in ipairs(itemLinks) do
		Auctionator.Utilities.DBKeyFromLink(link, function(dbKeys)
			result[index] = dbKeys

			for i = 1, #itemLinks do
				if result[i] == nil then
					return
				end
			end
			callback(result)
		end)
	end
end
