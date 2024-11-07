-- Kizrak

-- data.lua

local pathReplaceRecursively = require('prototypes.file-utils')("__kizraks-robots__") -- luacheck: ignore 211

local sb = serpent.block -- luacheck: ignore 211



local logistic_container = {
  animation = {
    layers = {
      {
        filename = "__base__/graphics/entity/logistic-chest/logistic-chest-storage.png",
        frame_count = 7,
        height = 38,
        hr_version = {
          filename = "__base__/graphics/entity/logistic-chest/hr-logistic-chest-storage.png",
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
  corpse = "storage-chest-remnants",
  fast_replaceable_group = "container",
  flags = {
    "placeable-player",
    "player-creation"
  },
  icon = "__base__/graphics/icons/logistic-chest-storage.png",
  icon_size = 64, icon_mipmaps = 4,
  inventory_size = 6,
  max_logistic_slots = 1,
  logistic_mode = "storage",
  max_health = 150,
  minable = {
    mining_time = 0.1,
    result = "k-logistic-chest-storage"
  },
  name = "k-logistic-chest-storage",
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

pathReplaceRecursively(logistic_container)

data:extend{logistic_container}
--log("logistic_container:\n"..sb(logistic_container))


local item = {
  icon = "__base__/graphics/icons/logistic-chest-storage.png",
  icon_size = 64, icon_mipmaps = 4,
  name = "k-logistic-chest-storage",
  order = "kizrak-b[storage]-c[logistic-chest-storage]",
  place_result = "k-logistic-chest-storage",
  stack_size = 5,
  subgroup = "k-logistic-network",
  type = "item"
}

pathReplaceRecursively(item)

data:extend{item}


local recipe = {
  enabled = false,
  ingredients = {
    {
      type = "item",
      name ="steel-chest",
      amount = 1
    },
    {
      type = "item",
      name ="electronic-circuit",
      amount = 6
    },
    {type="fluid", name="steam", amount=120},
    {type = "item",name="coal", amount=10},
  },
  name = "k-logistic-chest-storage",
  results = {{type = "item", name = "k-logistic-chest-storage", amount = 1}},
  category = "crafting-with-fluid",
  energy_required = 13,
  type = "recipe"
}

data:extend{recipe}

