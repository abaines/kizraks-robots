-- Kizrak

-- data.lua

local sb = serpent.block



local item = {
  icon = "__base__/graphics/icons/construction-robot.png",
  icon_size = 32,
  name = "k-construction-robot",
  order = "kizrak-a[robot]-b[construction-robot]",
  place_result = "k-construction-robot",
  stack_size = 50/2,
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
      "decider-combinator",
      1
    }
  },
  name = "k-construction-robot",
  result = "k-construction-robot",
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
  construction_vector = {
    0.3,
    0.22000000000000002
  },
  energy_per_move = "5kJ",
  energy_per_tick = "0.05kJ",
  flags = {
    "placeable-player",
    "player-creation",
    "placeable-off-grid",
    "not-on-map"
  },
  icon = "__base__/graphics/icons/construction-robot.png",
  icon_size = 32,
  idle = {
    direction_count = 16,
    filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
    frame_count = 1,
    height = 36,
    hr_version = {
      direction_count = 16,
      filename = "__base__/graphics/entity/construction-robot/hr-construction-robot.png",
      frame_count = 1,
      height = 76,
      line_length = 16,
      priority = "high",
      scale = 0.5,
      shift = {
        0,
        -0.140625
      },
      width = 66
    },
    line_length = 16,
    priority = "high",
    shift = {
      0,
      -0.15625
    },
    width = 32
  },
  in_motion = {
    direction_count = 16,
    filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
    frame_count = 1,
    height = 36,
    hr_version = {
      direction_count = 16,
      filename = "__base__/graphics/entity/construction-robot/hr-construction-robot.png",
      frame_count = 1,
      height = 76,
      line_length = 16,
      priority = "high",
      scale = 0.5,
      shift = {
        0,
        -0.140625
      },
      width = 66,
      y = 76
    },
    line_length = 16,
    priority = "high",
    shift = {
      0,
      -0.15625
    },
    width = 32,
    y = 36
  },
  max_energy = "1.5MJ",
  max_health = 100,
  max_payload_size = 1,
  max_to_charge = 0.95,
  min_to_charge = 0.4, -- 0.2
  minable = {
    mining_time = 0.1,
    result = "k-construction-robot"
  },
  name = "k-construction-robot",
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
    filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
    frame_count = 1,
    height = 24,
    hr_version = {
      direction_count = 16,
      filename = "__base__/graphics/entity/construction-robot/hr-construction-robot-shadow.png",
      frame_count = 1,
      height = 49,
      line_length = 16,
      priority = "high",
      scale = 0.5,
      shift = {
        1.046875,
        0.5859375
      },
      width = 104
    },
    line_length = 16,
    priority = "high",
    shift = {
      1.09375,
      0.59375
    },
    width = 50
  },
  shadow_in_motion = {
    direction_count = 16,
    filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
    frame_count = 1,
    height = 24,
    hr_version = {
      direction_count = 16,
      filename = "__base__/graphics/entity/construction-robot/hr-construction-robot-shadow.png",
      frame_count = 1,
      height = 49,
      line_length = 16,
      priority = "high",
      scale = 0.5,
      shift = {
        1.046875,
        0.5859375
      },
      width = 104
    },
    line_length = 16,
    priority = "high",
    shift = {
      1.09375,
      0.59375
    },
    width = 50
  },
  shadow_working = {
    direction_count = 16,
    filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
    frame_count = 1,
    height = 24,
    hr_version = {
      direction_count = 16,
      filename = "__base__/graphics/entity/construction-robot/hr-construction-robot-shadow.png",
      frame_count = 1,
      height = 49,
      line_length = 16,
      priority = "high",
      repeat_count = 2,
      scale = 0.5,
      shift = {
        1.046875,
        0.5859375
      },
      width = 104
    },
    line_length = 16,
    priority = "high",
    repeat_count = 2,
    shift = {
      1.09375,
      0.59375
    },
    width = 50
  },
  smoke = {
    animation_speed = 0.3,
    filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
    frame_count = 19,
    height = 32,
    line_length = 19,
    shift = {
      0.078125,
      -0.15625
    },
    width = 39
  },
  sparks = {
    {
      animation_speed = 0.3,
      filename = "__base__/graphics/entity/sparks/sparks-01.png",
      frame_count = 19,
      height = 34,
      line_length = 19,
      shift = {
        -0.109375,
        0.3125
      },
      tint = {
        a = 1,
        b = 0,
        g = 0.9,
        r = 1
      },
      width = 39
    },
    {
      animation_speed = 0.3,
      filename = "__base__/graphics/entity/sparks/sparks-02.png",
      frame_count = 19,
      height = 32,
      line_length = 19,
      shift = {
        0.03125,
        0.125
      },
      tint = {
        a = 1,
        b = 0,
        g = 0.9,
        r = 1
      },
      width = 36
    },
    {
      animation_speed = 0.3,
      filename = "__base__/graphics/entity/sparks/sparks-03.png",
      frame_count = 19,
      height = 29,
      line_length = 19,
      shift = {
        -0.0625,
        0.203125
      },
      tint = {
        a = 1,
        b = 0,
        g = 0.9,
        r = 1
      },
      width = 42
    },
    {
      animation_speed = 0.3,
      filename = "__base__/graphics/entity/sparks/sparks-04.png",
      frame_count = 19,
      height = 35,
      line_length = 19,
      shift = {
        -0.0625,
        0.234375
      },
      tint = {
        a = 1,
        b = 0,
        g = 0.9,
        r = 1
      },
      width = 40
    },
    {
      animation_speed = 0.3,
      filename = "__base__/graphics/entity/sparks/sparks-05.png",
      frame_count = 19,
      height = 29,
      line_length = 19,
      shift = {
        -0.109375,
        0.171875
      },
      tint = {
        a = 1,
        b = 0,
        g = 0.9,
        r = 1
      },
      width = 39
    },
    {
      animation_speed = 0.3,
      filename = "__base__/graphics/entity/sparks/sparks-06.png",
      frame_count = 19,
      height = 36,
      line_length = 19,
      shift = {
        0.03125,
        0.3125
      },
      tint = {
        a = 1,
        b = 0,
        g = 0.9,
        r = 1
      },
      width = 44
    }
  },
  speed = 0.06/1.75,
  speed_multiplier_when_out_of_energy = 0.2,
  type = "construction-robot",
  working = {
    animation_speed = 0.3,
    direction_count = 16,
    filename = "__base__/graphics/entity/construction-robot/construction-robot-working.png",
    frame_count = 2,
    height = 36,
    hr_version = {
      animation_speed = 0.3,
      direction_count = 16,
      filename = "__base__/graphics/entity/construction-robot/hr-construction-robot-working.png",
      frame_count = 2,
      height = 74,
      line_length = 2,
      priority = "high",
      scale = 0.5,
      shift = {
        -0.0078125,
        -0.15625
      },
      width = 57
    },
    line_length = 2,
    priority = "high",
    shift = {
      0,
      -0.15625
    },
    width = 28
  },
  working_light = {
    color = {
      b = 0.8,
      g = 0.8,
      r = 0.8
    },
    intensity = 0.8,
    size = 3
  },
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

