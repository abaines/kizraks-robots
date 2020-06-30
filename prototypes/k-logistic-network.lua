-- Kizrak

-- data.lua

local sb = serpent.block -- luacheck: ignore 211


local k_logistic_network = table.deepcopy(data.raw["item-subgroup"]["logistic-network"])

k_logistic_network.name = "k-logistic-network"

log(sb( k_logistic_network ))
data:extend{k_logistic_network}

