-- Kizrak

-- data.lua

local sb = serpent.block -- luacheck: ignore 211



local logistic_container = {
  animation = {
    layers = {
      {
        filename = "__base__/graphics/entity/logistic-chest/logistic-chest-passive-provider.png",
        frame_count = 7,
        height = 38,
        hr_version = {
          filename = "__base__/graphics/entity/logistic-chest/hr-logistic-chest-passive-provider.png",
          frame_count = 7,
          height = 74,
          priority = "extra-high",
          scale = 0.5,
          shift = {
            0,
            -0.0625
          },
          width = 66
        },
        priority = "extra-high",
        shift = {
          0,
          -0.0625
        },
        width = 34
      },
      {
        draw_as_shadow = true,
        filename = "__base__/graphics/entity/logistic-chest/logistic-chest-shadow.png",
        height = 24,
        hr_version = {
          draw_as_shadow = true,
          filename = "__base__/graphics/entity/logistic-chest/hr-logistic-chest-shadow.png",
          height = 44,
          priority = "extra-high",
          repeat_count = 7,
          scale = 0.5,
          shift = {
            0.265625,
            0.15625
          },
          width = 96
        },
        priority = "extra-high",
        repeat_count = 7,
        shift = {
          0.265625,
          0.171875
        },
        width = 48
      }
    }
  },
  close_sound = {
    filename = "__base__/sound/metallic-chest-close.ogg",
    volume = 0.7
  },
  collision_box = {
    {
      -0.35,
      -0.35
    },
    {
      0.35,
      0.35
    }
  },
  corpse = "passive-provider-chest-remnants",
  fast_replaceable_group = "container",
  flags = {
    "placeable-player",
    "player-creation"
  },
  icon = "__base__/graphics/icons/logistic-chest-passive-provider.png",
  icon_size = 64, icon_mipmaps = 4,
  inventory_size = 6,
  logistic_mode = "passive-provider",
  logistic_slots_count = 1,
  max_health = 150,
  minable = {
    mining_time = 0.1,
    result = "k-logistic-chest-passive-provider"
  },
  name = "k-logistic-chest-passive-provider",
  open_sound = {
    filename = "__base__/sound/metallic-chest-open.ogg",
    volume = 0.65
  },
  opened_duration = 7,
  resistances = {
    {
      percent = 90,
      type = "fire"
    },
    {
      percent = 60,
      type = "impact"
    }
  },
  selection_box = {
    {
      -0.5,
      -0.5
    },
    {
      0.5,
      0.5
    }
  },
  type = "logistic-container",
  vehicle_impact_sound = {
    filename = "__base__/sound/car-metal-impact.ogg",
    volume = 0.65
  }
}

data:extend{logistic_container}


local item = {
  icon = "__base__/graphics/icons/logistic-chest-passive-provider.png",
  icon_size = 64, icon_mipmaps = 4,
  name = "k-logistic-chest-passive-provider",
  order = "kizrak-b[storage]-c[logistic-chest-passive-provider]",
  place_result = "k-logistic-chest-passive-provider",
  stack_size = 5,
  subgroup = "logistic-network",
  type = "item"
}

data:extend{item}


local recipe = {
  enabled = false,
  ingredients = {
    {
      "steel-chest",
      1
    },
    {
      "electronic-circuit",
      6
    },
    {type="fluid", name="steam", amount=120},
    {name="coal", amount=10},
  },
  name = "k-logistic-chest-passive-provider",
  result = "k-logistic-chest-passive-provider",
  category = "crafting-with-fluid",
  energy_required = 13,
  type = "recipe"
}

data:extend{recipe}

