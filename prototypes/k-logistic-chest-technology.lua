-- Kizrak

-- data.lua

local sb = serpent.block


local technology = {
  effects = {
    {
      recipe = "k-logistic-chest-passive-provider",
      type = "unlock-recipe"
    },
    {
      recipe = "k-logistic-chest-active-provider",
      type = "unlock-recipe"
    },
    {
      recipe = "k-logistic-chest-storage",
      type = "unlock-recipe"
    },
    {
      recipe = "k-logistic-chest-buffer",
      type = "unlock-recipe"
    },
    {
      recipe = "k-logistic-chest-requester",
      type = "unlock-recipe"
    },
    {
      recipe = "k-roboport",
      type = "unlock-recipe"
    },
  },
  icon = "__base__/graphics/technology/logistic-system.png",
  icon_size = 128,
  name = "k-logistic-chest-technology",
  order = "c-a",
  type = "technology",
  unit = {
    count = 5,
    ingredients = {
      {
        "automation-science-pack",
        1
      }
    },
    time = 5
  },
  prerequisites = {"steel-processing", "engine",},
}

data:extend{technology}

