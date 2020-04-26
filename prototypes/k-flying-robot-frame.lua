-- Kizrak

-- data.lua

local sb = serpent.block -- luacheck: ignore 211



local item = {
  icon = "__base__/graphics/icons/flying-robot-frame.png",
  icon_size = 64, icon_mipmaps = 4,
  name = "k-flying-robot-frame",
  order = "kizrak-l[flying-robot-frame]",
  stack_size = 10,
  subgroup = "intermediate-product",
  type = "item"
}

data:extend{item}


local recipe = {
  enabled = false,
  energy_required = 20,
  ingredients = {
    {name="electronic-circuit", amount=9},
    {name="engine-unit", amount=4},
    {name="solar-panel", amount=1},
    {name="copper-plate", amount=8},
    {type="fluid", name="steam", amount=200},
    {name="coal", amount=45},
  },
  category = "crafting-with-fluid",
  name = "k-flying-robot-frame",
  result = "k-flying-robot-frame",
  type = "recipe"
}

data:extend{recipe}

