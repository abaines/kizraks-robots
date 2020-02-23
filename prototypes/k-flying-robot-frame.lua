-- Kizrak

-- data.lua

local sb = serpent.block



local item = {
  icon = "__base__/graphics/icons/flying-robot-frame.png",
  icon_size = 32,
  name = "k-flying-robot-frame",
  order = "kizrak-l[flying-robot-frame]",
  stack_size = 50,
  subgroup = "intermediate-product",
  type = "item"
}

data:extend{item}


local recipe = {
  enabled = false,
  energy_required = 20,
  ingredients = {
    {
      "electric-engine-unit",
      1
    },
    {
      "battery",
      2
    },
    {
      "steel-plate",
      1
    },
    {
      "electronic-circuit",
      3
    }
  },
  name = "k-flying-robot-frame",
  result = "k-flying-robot-frame",
  type = "recipe"
}

data:extend{recipe}

