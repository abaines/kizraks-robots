-- Kizrak

-- data.lua

local sb = serpent.block -- luacheck: ignore 211



local item = {
  icon = "__base__/graphics/icons/logistic-robot.png",
  icon_size = 64, icon_mipmaps = 4,
  name = "k-logistic-robot",
  order = "kizrak-a[robot]-a[logistic-robot]",
  place_result = "k-logistic-robot",
  stack_size = 50/5,
  subgroup = "k-logistic-network",
  type = "item"
}

data:extend{item}


local recipe = {
  enabled = false,
  ingredients = {
    {
      "k-flying-robot-frame",
      1
    },
    {
      "arithmetic-combinator",
      1
    }
  },
  name = "k-logistic-robot",
  result = "k-logistic-robot",
  type = "recipe"
}

data:extend{recipe}

local copy = table.deepcopy(data.raw["logistic-robot"]["logistic-robot"])

local entity = {
  cargo_centered = {
    0,
    0.2
  },
  collision_box = {
    {
      0,
      0
    },
    {
      0,
      0
    }
  },
  energy_per_move = "5kJ",
  energy_per_tick = "0.05kJ",
  flags = {
    "placeable-player",
    "player-creation",
    "placeable-off-grid",
    "not-on-map"
  },
  icon = "__base__/graphics/icons/logistic-robot.png",
  icon_size = 64, icon_mipmaps = 4,
  idle = copy.idle,
  idle_with_cargo = copy.idle_with_cargo,
  in_motion = copy.in_motion,
  in_motion_with_cargo = copy.in_motion_with_cargo,
  max_energy = "1.5MJ",
  max_health = 100,
  max_payload_size = 1,
  max_to_charge = 0.95,
  min_to_charge = 0.4, -- 0.2
  minable = {
    mining_time = 0.1,
    result = "k-logistic-robot"
  },
  name = "k-logistic-robot",
  resistances = {
    {
      percent = 85,
      type = "fire"
    }
  },
  selection_box = {
    {
      -0.5,
      -1.5
    },
    {
      0.5,
      -0.5
    }
  },
  shadow_idle = copy.shadow_idle,
  shadow_idle_with_cargo = copy.shadow_idle_with_cargo,
  shadow_in_motion = copy.shadow_in_motion,
  shadow_in_motion_with_cargo = copy.shadow_in_motion_with_cargo,
  speed = 0.05/1.75,
  speed_multiplier_when_out_of_energy = 0.2,
  type = "logistic-robot",
  working_sound = copy.working_sound,
}

data:extend{entity}

