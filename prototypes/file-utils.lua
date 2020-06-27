-- Kizrak


local sb = serpent.block -- luacheck: ignore 211


-- replace __base__ path with __vonNeumann__
local function pathReplace(base, modname)
	return string.gsub(base,"__base__",modname)
end


local function isTable(t)
	return type(t) == 'table'
end

local function isString(t)
	return type(t) == 'string'
end

local function ends_with(str, ending)
	return ending == "" or str:sub(-#ending) == ending
end

local function pathReplaceRecursively(object, modname)
	for k,v in pairs(object) do

		if isTable(v) then
			pathReplaceRecursively(v,modname)

		elseif isString(v) and ends_with(v,".png") and not string.find(v, "shadow") then
			--log(v)
			object[k] = pathReplace(v,modname)

		end

	end
end

-- modname: "__vonNeumann__" or "__kizraks-robots__"
return function(modname)
	--log("prototypes.file-utils  " .. modname)
	return function(object)
		return pathReplaceRecursively(object,modname)
	end
end

