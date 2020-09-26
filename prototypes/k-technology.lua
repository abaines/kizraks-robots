-- Kizrak

-- data.lua

local sb = serpent.block -- luacheck: ignore 211


local technology_chest = {
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
  },
  icon = "__base__/graphics/technology/logistic-system.png",
  icon_size = 128,
  name = "k-logistic-chest-technology",
  order = "kizrak-c-a",
  type = "technology",
  unit = {
    count = 5,
    ingredients = {
      { "automation-science-pack", 1 },
      { "logistic-science-pack", 1 },
    },
    time = 5
  },
  prerequisites = {"steel-processing","automation-2",},
}

data:extend{technology_chest}


local technology_roboport = {
  effects = {
    {
      recipe = "k-roboport",
      type = "unlock-recipe"
    },
  },
  icon = "__kizraks-robots__/graphics/technology/roboport.png",
  icon_size = 128,
  name = "k-roboport-technology",
  order = "kizrak-c-a",
  type = "technology",
  unit = {
    count = 5,
    ingredients = {
      { "automation-science-pack", 1 },
      { "logistic-science-pack", 1 },
    },
    time = 5
  },
  prerequisites = {"engine","automation-2",},
}

data:extend{technology_roboport}


local technology_robot = {
  effects = {
    {
      recipe = "k-flying-robot-frame",
      type = "unlock-recipe"
    },
    {
      recipe = "k-logistic-robot",
      type = "unlock-recipe"
    },
    {
      recipe = "k-construction-robot",
      type = "unlock-recipe"
    },
  },
  icon = "__base__/graphics/technology/robotics.png",
  icon_size = 128,
  name = "k-robot-technology",
  order = "kizrak-c-a",
  type = "technology",
  unit = {
    count = 5,
    ingredients = {
      { "automation-science-pack", 1 },
      { "logistic-science-pack", 1 },
    },
    time = 5
  },
  prerequisites = {"engine","solar-energy","circuit-network","automation-2",},
}

data:extend{technology_robot}


local technology_logistic = {
	effects = {
		{
			type = "character-logistic-requests",
			modifier = true,
		},
		{
			type = "auto-character-logistic-trash-slots",
			modifier = true,
		},
		{
			type = "character-logistic-trash-slots",
			modifier = 25, -- 30
		},
		{
			type = "ghost-time-to-live",
			modifier = 60 * 60 * 60 * 24,
		},
	},
	icon = "__base__/graphics/technology/logistic-robotics.png",
	icon_size = 128,
	name = "k-logistic-robotics-technology",
	order = "kizrak-c-k-c",
	prerequisites = {"automation-2",},
	type = "technology",
	unit = {
		count = 5,
		ingredients = {
			{"automation-science-pack",1},
			{"logistic-science-pack",1},
		},
		time = 5
	}
}

data:extend{technology_logistic}

