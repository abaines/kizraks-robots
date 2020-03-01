-- Kizrak

-- data.lua

local sb = serpent.block



local item = {
  icon = "__base__/graphics/icons/logistic-robot.png",
  icon_size = 32,
  name = "logistic-robot",
  order = "a[robot]-a[logistic-robot]",
  place_result = "logistic-robot",
  stack_size = 50,
  subgroup = "logistic-network",
  type = "item"
}

data:extend{item}


local recipe = {
  enabled = false,
  ingredients = {
    {
      "flying-robot-frame",
      1
    },
    {
      "advanced-circuit",
      2
    }
  },
  name = "logistic-robot",
  result = "logistic-robot",
  type = "recipe"
}

data:extend{recipe}


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
  icon_size = 32,
  idle = {
    direction_count = 16,
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
    frame_count = 1,
    height = 42,
    hr_version = {
      direction_count = 16,
      filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot.png",
      frame_count = 1,
      height = 84,
      line_length = 16,
      priority = "high",
      scale = 0.5,
      shift = {
        0,
        -0.09375
      },
      width = 80,
      y = 84
    },
    line_length = 16,
    priority = "high",
    shift = {
      0.015625,
      -0.09375
    },
    width = 41,
    y = 42
  },
  idle_with_cargo = {
    direction_count = 16,
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
    frame_count = 1,
    height = 42,
    hr_version = {
      direction_count = 16,
      filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot.png",
      frame_count = 1,
      height = 84,
      line_length = 16,
      priority = "high",
      scale = 0.5,
      shift = {
        0,
        -0.09375
      },
      width = 80
    },
    line_length = 16,
    priority = "high",
    shift = {
      0.015625,
      -0.09375
    },
    width = 41
  },
  in_motion = {
    direction_count = 16,
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
    frame_count = 1,
    height = 42,
    hr_version = {
      direction_count = 16,
      filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot.png",
      frame_count = 1,
      height = 84,
      line_length = 16,
      priority = "high",
      scale = 0.5,
      shift = {
        0,
        -0.09375
      },
      width = 80,
      y = 252
    },
    line_length = 16,
    priority = "high",
    shift = {
      0.015625,
      -0.09375
    },
    width = 41,
    y = 126
  },
  in_motion_with_cargo = {
    direction_count = 16,
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
    frame_count = 1,
    height = 42,
    hr_version = {
      direction_count = 16,
      filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot.png",
      frame_count = 1,
      height = 84,
      line_length = 16,
      priority = "high",
      scale = 0.5,
      shift = {
        0,
        -0.09375
      },
      width = 80,
      y = 168
    },
    line_length = 16,
    priority = "high",
    shift = {
      0.015625,
      -0.09375
    },
    width = 41,
    y = 84
  },
  max_energy = "1.5MJ",
  max_health = 100,
  max_payload_size = 1,
  max_to_charge = 0.95,
  min_to_charge = 0.2,
  minable = {
    mining_time = 0.1,
    result = "logistic-robot"
  },
  name = "logistic-robot",
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
  shadow_idle = {
    direction_count = 16,
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
    frame_count = 1,
    height = 23,
    hr_version = {
      direction_count = 16,
      filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
      frame_count = 1,
      height = 57,
      line_length = 16,
      priority = "high",
      scale = 0.5,
      shift = {
        0.9921875,
        0.6171875
      },
      width = 115,
      y = 57
    },
    line_length = 16,
    priority = "high",
    shift = {
      0.96875,
      0.609375
    },
    width = 59,
    y = 23
  },
  shadow_idle_with_cargo = {
    direction_count = 16,
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
    frame_count = 1,
    height = 23,
    hr_version = {
      direction_count = 16,
      filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
      frame_count = 1,
      height = 57,
      line_length = 16,
      priority = "high",
      scale = 0.5,
      shift = {
        0.9921875,
        0.6171875
      },
      width = 115
    },
    line_length = 16,
    priority = "high",
    shift = {
      0.96875,
      0.609375
    },
    width = 59
  },
  shadow_in_motion = {
    direction_count = 16,
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
    frame_count = 1,
    height = 23,
    hr_version = {
      direction_count = 16,
      filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
      frame_count = 1,
      height = 57,
      line_length = 16,
      priority = "high",
      scale = 0.5,
      shift = {
        0.9921875,
        0.6171875
      },
      width = 115,
      y = 171
    },
    line_length = 16,
    priority = "high",
    shift = {
      0.96875,
      0.609375
    },
    width = 59,
    y = 23
  },
  shadow_in_motion_with_cargo = {
    direction_count = 16,
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
    frame_count = 1,
    height = 23,
    hr_version = {
      direction_count = 16,
      filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
      frame_count = 1,
      height = 57,
      line_length = 16,
      priority = "high",
      scale = 0.5,
      shift = {
        0.9921875,
        0.6171875
      },
      width = 115,
      y = 114
    },
    line_length = 16,
    priority = "high",
    shift = {
      0.96875,
      0.609375
    },
    width = 59
  },
  speed = 0.05,
  speed_multiplier_when_out_of_energy = 0.2,
  type = "logistic-robot",
  working_sound = {
    audible_distance_modifier = 0.5,
    max_sounds_per_type = 3,
    probability = 0.0055555555555555554,
    sound = {
      {
        filename = "__base__/sound/flying-robot-1.ogg",
        volume = 0.6
      },
      {
        filename = "__base__/sound/flying-robot-2.ogg",
        volume = 0.6
      },
      {
        filename = "__base__/sound/flying-robot-3.ogg",
        volume = 0.6
      },
      {
        filename = "__base__/sound/flying-robot-4.ogg",
        volume = 0.6
      },
      {
        filename = "__base__/sound/flying-robot-5.ogg",
        volume = 0.6
      }
    }
  }
}

data:extend{entity}

