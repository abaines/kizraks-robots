-- Kizrak
-- data.lua
local sb = serpent.block -- luacheck: ignore 211

local item = {
    icon = "__base__/graphics/icons/construction-robot.png",
    icon_size = 64,
    name = "k-construction-robot",
    order = "kizrak-a[robot]-b[construction-robot]",
    place_result = "k-construction-robot",
    stack_size = 50 / 2,
    subgroup = "k-logistic-network",
    type = "item"
}

data:extend{item}

local recipe = {
    enabled = false,
    ingredients = {
        {type = "item", name = "k-flying-robot-frame", amount = 1},
        {type = "item", name = "decider-combinator", amount = 1}
    },
    name = "k-construction-robot",
    results = {{type = "item", name = "k-construction-robot", amount = 1}},
    type = "recipe"
}

data:extend{recipe}

local copy =
    table.deepcopy(data.raw["construction-robot"]["construction-robot"])

local entity = {
    collision_box = {{0, 0}, {0, 0}},
    construction_vector = {0.3, 0.22000000000000002},
    energy_per_move = "5kJ",
    energy_per_tick = "0.05kJ",
    flags = {
        "placeable-player", "player-creation", "placeable-off-grid",
        "not-on-map"
    },
    icon = "__base__/graphics/icons/construction-robot.png",
    icon_size = 64,
    idle = copy.idle,
    in_motion = copy.in_motion,
    max_energy = "1.5MJ",
    max_health = 100,
    max_payload_size = 1,
    max_to_charge = 0.95,
    min_to_charge = 0.4, -- 0.2
    minable = {mining_time = 0.1, result = "k-construction-robot"},
    name = "k-construction-robot",
    resistances = {{percent = 85, type = "fire"}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    shadow_idle = copy.shadow_idle,
    shadow_in_motion = copy.shadow_in_motion,
    shadow_working = copy.shadow_working,
    smoke = copy.smoke,
    sparks = copy.sparks,
    speed = 0.06 / 1.75,
    speed_multiplier_when_out_of_energy = 0.2,
    type = "construction-robot",
    working = copy.working,
    working_light = copy.working_light,
    working_sound = copy.working_sound
}

data:extend{entity}

