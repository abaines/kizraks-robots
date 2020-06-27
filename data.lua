-- Kizrak

-- data.lua


local sb = serpent.block -- luacheck: ignore 211


local function compactLog(preamble,list,max_size)
	-- full|total size of input list
	local size = #list

	-- return result
	local r = preamble

	-- max number of rows (lines) for displaying list
	local max_rows = math.ceil(size/max_size)

	-- math desired number of items per line|row (should always be <= max_size)
	local columns = math.ceil(size/max_rows)

	-- number of rows that contain columns-1 number of items
	local shortRows = math.ceil(size/columns)*columns-size


	--log(string.rep("=",80))
	local i = 1
	for _=1,max_rows-shortRows do
		local sublist = {table.unpack(list, i, i+columns-1)}
		i = columns + i
		r = r .. "\n   " .. table.concat(sublist,", ")..","
	end
	for _=1+max_rows-shortRows,max_rows do
		local sublist = {table.unpack(list, i, i+columns-1-1)}
		i = columns + i - 1
		r = r .. "\n   " .. table.concat(sublist,", ")..","
	end
	--log(string.rep("-",80))

	return r
end


local function logDataRawTypeList() -- luacheck: ignore 211
	local dataRawTypeList = {}
	for k, _ in pairs(data.raw) do
		if not string.find(k, "achievement") then
			table.insert(dataRawTypeList,k)
		end
	end
	log(compactLog("types in `data.raw`:",dataRawTypeList,6))
end


local function logDataRawType(rawType) -- luacheck: ignore 211
	local rawTypeList = {}
	for k, _ in pairs(data.raw[rawType]) do
		table.insert(rawTypeList,k)
	end
	log(compactLog("keys in `data.raw."..rawType.."`:",rawTypeList,6))
end


local function logRecipeCategoryMap() -- luacheck: ignore 211
	local recipeCategoryMap = {}
	for k, v in pairs(data.raw.recipe) do
		-- https://wiki.factorio.com/Prototype/Recipe#category Default: "crafting"
		local category = v.category or "crafting"
		if not recipeCategoryMap[category] then
			recipeCategoryMap[category] = {}
		end
		table.insert(recipeCategoryMap[category],k)
	end

	log("data.raw.recipe:")
	for k, v in pairs(recipeCategoryMap) do
		log(compactLog("keys in `"..k.."`:",v,6))
	end
end


require("prototypes.k-logistic-chest.k-passive-provider")
require("prototypes.k-logistic-chest.k-active-provider")
require("prototypes.k-logistic-chest.k-storage")
require("prototypes.k-logistic-chest.k-buffer")
require("prototypes.k-logistic-chest.k-requester")

require("prototypes.k-roboport")

require("prototypes.k-robot.k-flying-robot-frame")
require("prototypes.k-robot.k-logistic-robot")
require("prototypes.k-robot.k-construction-robot")

require("prototypes.k-technology")


--logDataRawTypeList()

--logRecipeCategoryMap()

--logDataRawType("item")



--logDataRawType("construction-robot")

--log(sb( data.raw["item"]["construction-robot"] ))
--log(sb( data.raw["recipe"]["construction-robot"] ))
--log(sb( data.raw["construction-robot"]["construction-robot"] ))


-- TODO: i18n K2 Flying Robot Frame, K2 Roboport, K2 Chest, etc



