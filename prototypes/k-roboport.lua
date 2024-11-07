-- Kizrak
-- data.lua
local sb = serpent.block -- luacheck: ignore 211

local function logsb(input) log(sb(input)) end

local item = {
    icon = "__base__/graphics/icons/roboport.png",
    icon_size = 64,
    name = "k-roboport",
    order = "kizrak-c[signal]-a[roboport]",
    place_result = "k-roboport",
    stack_size = 5,
    subgroup = "k-logistic-network",
    type = "item"
}

data:extend{item}

local recipe = {
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 36},
        {type = "item", name = "engine-unit", amount = 25},
        {type = "item", name = "electronic-circuit", amount = 90},
        {type = "fluid", name = "steam", amount = 2700},
        {type = "item", name = "coal", amount = 220}
    },
    category = "crafting-with-fluid",
    name = "k-roboport",
    results = {{type = "item", name = "k-roboport", amount = 1}},
    type = "recipe"
}

data:extend{recipe}

local function scale(object, scale)
    for k1, v1 in ipairs(object) do
        for k2, v2 in ipairs(v1) do object[k1][k2] = v2 * scale end
    end
end

local k_roboport = table.deepcopy(data.raw["roboport"]["roboport"])

k_roboport.name = "k-roboport"
k_roboport.circuit_connector = nil
k_roboport.circuit_wire_max_distance = nil
k_roboport.construction_radius = 55 / 2
k_roboport.energy_usage = "100kW"
k_roboport.robot_slots_count = 7 / 2
k_roboport.logistics_connection_distance = 25
k_roboport.logistics_radius = 25 / 2
k_roboport.material_slots_count = 7 / 2
k_roboport.max_health = 500 / 2
k_roboport.minable.result = "k-roboport"

k_roboport.recharging_light.color = {r = 1.0, g = 0.4, b = 0.0}
k_roboport.recharging_light.intensity = 1
k_roboport.recharging_light.size = 7

local scale_ratio = 1.25

scale(k_roboport.charging_offsets, scale_ratio)
scale(k_roboport.collision_box, scale_ratio)
scale(k_roboport.selection_box, scale_ratio)

k_roboport.base.layers[1].scale = k_roboport.base.layers[1].scale * scale_ratio
k_roboport.base.layers[2].scale = k_roboport.base.layers[2].scale * scale_ratio

k_roboport.base_animation.scale = scale_ratio * k_roboport.base_animation.scale
k_roboport.base_animation.shift[1] = scale_ratio *
                                         k_roboport.base_animation.shift[1]
k_roboport.base_animation.shift[2] = scale_ratio *
                                         k_roboport.base_animation.shift[2]

k_roboport.base_patch.scale = scale_ratio * k_roboport.base_patch.scale

k_roboport.door_animation_down.scale = scale_ratio *
                                           k_roboport.door_animation_down.scale
k_roboport.door_animation_down.shift[1] = scale_ratio *
                                              k_roboport.door_animation_down
                                                  .shift[1]
k_roboport.door_animation_down.shift[2] = scale_ratio *
                                              k_roboport.door_animation_down
                                                  .shift[2]

k_roboport.door_animation_up.scale = scale_ratio *
                                         k_roboport.door_animation_up.scale
k_roboport.door_animation_up.shift[1] = scale_ratio *
                                            k_roboport.door_animation_up.shift[1]
k_roboport.door_animation_up.shift[2] = scale_ratio *
                                            k_roboport.door_animation_up.shift[2]

k_roboport.recharging_animation.scale = scale_ratio *
                                            k_roboport.recharging_animation
                                                .scale

k_roboport.water_reflection.pictures.scale = scale_ratio *
                                                 k_roboport.water_reflection
                                                     .pictures.scale

data:extend{k_roboport}

