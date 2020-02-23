-- Kizrak

-- data.lua

local sb = serpent.block



local item = {
  icon = "__base__/graphics/icons/roboport.png",
  icon_size = 32,
  name = "k-roboport",
  order = "kizrak-c[signal]-a[roboport]",
  place_result = "k-roboport",
  stack_size = 5,
  subgroup = "logistic-network",
  type = "item"
}

data:extend{item}


local recipe = {
  enabled = false,
  energy_required = 5,
  ingredients = {
    {
      "steel-plate",
      36
    },
    {name="engine-unit", amount=25},
    {
      "electronic-circuit",
      90
    },
    {type="fluid", name="steam", amount=2700},
    {name="coal", amount=220},
  },
  category = "crafting-with-fluid",
  name = "k-roboport",
  result = "k-roboport",
  type = "recipe"
}

data:extend{recipe}


local entity = {
  base = {
    layers = {
      {
        filename = "__base__/graphics/entity/roboport/roboport-base.png",
        height = 135,
        hr_version = {
          filename = "__base__/graphics/entity/roboport/hr-roboport-base.png",
          height = 277,
          scale = 0.5*1.25,
          shift = {
            0.0625,
            0.2421875
          },
          width = 228
        },
        scale = 1.25,
        shift = {
          0.5,
          0.25
        },
        width = 143
      },
      {
        draw_as_shadow = true,
        filename = "__base__/graphics/entity/roboport/roboport-shadow.png",
        height = 101,
        hr_version = {
          draw_as_shadow = true,
          filename = "__base__/graphics/entity/roboport/hr-roboport-shadow.png",
          force_hr_shadow = true,
          height = 201,
          scale = 0.5*1.25,
          shift = {
            0.890625,
            0.6015625
          },
          width = 294
        },
        scale = 1.25,
        shift = {
          0.890625,
          0.6015625
        },
        width = 147
      }
    }
  },
  base_animation = {
    animation_speed = 0.5,
    filename = "__base__/graphics/entity/roboport/roboport-base-animation.png",
    frame_count = 8,
    height = 31,
    hr_version = {
      animation_speed = 0.5,
      filename = "__base__/graphics/entity/roboport/hr-roboport-base-animation.png",
      frame_count = 8,
      height = 59,
      priority = "medium",
      scale = 0.5*1.25,
      shift = {
        -0.5546875*1.25,
        -1.9140625*1.25
      },
      width = 83
    },
    priority = "medium",
    scale = 1.25,
    shift = {
      -0.53149999999999995*1.25-0.15,
      -1.9375*1.25
    },
    width = 42
  },
  base_patch = {
    filename = "__base__/graphics/entity/roboport/roboport-base-patch.png",
    frame_count = 1,
    height = 50,
    hr_version = {
      filename = "__base__/graphics/entity/roboport/hr-roboport-base-patch.png",
      frame_count = 1,
      height = 100,
      priority = "medium",
      scale = 0.5*1.25,
      shift = {
        0.046875,
        0.15625
      },
      width = 138
    },
    priority = "medium",
    scale = 1.25,
    shift = {
      0.03125-0.1,
      0.203125-0.0
    },
    width = 69
  },
  charge_approach_distance = 5,
  charging_energy = "500kW",
  charging_offsets = {
    {
      -1.5*1.25,
      -0.5*1.25-0.4
    },
    {
      1.5*1.25,
      -0.5*1.25-0.4
    },
    {
      1.5*1.25,
      1.5*1.25-0.4
    },
    {
      -1.5*1.25,
      1.5*1.25-0.4
    }
  },
  close_door_trigger_effect = {
    {
      sound = {
        filename = "__base__/sound/roboport-door.ogg",
        volume = 0.75
      },
      type = "play-sound"
    }
  },
  collision_box = {
    {
      -1.7*1.25,
      -1.7*1.25
    },
    {
      1.7*1.25,
      1.7*1.25
    }
  },
  construction_radius = 55/2.0,
  corpse = "roboport-remnants",
  door_animation_down = {
    filename = "__base__/graphics/entity/roboport/roboport-door-down.png",
    frame_count = 16,
    height = 22,
    hr_version = {
      filename = "__base__/graphics/entity/roboport/hr-roboport-door-down.png",
      frame_count = 16,
      height = 41,
      priority = "medium",
      scale = 0.5*1.25,
      shift = {
        -0.0078125*1.25,
        -0.3046875*1.25
      },
      width = 97
    },
    priority = "medium",
    scale = 1.25,
    shift = {
      0.015625*1.25,
      -0.234375*1.25
    },
    width = 52
  },
  door_animation_up = {
    filename = "__base__/graphics/entity/roboport/roboport-door-up.png",
    frame_count = 16,
    height = 20,
    hr_version = {
      filename = "__base__/graphics/entity/roboport/hr-roboport-door-up.png",
      frame_count = 16,
      height = 38,
      priority = "medium",
      scale = 0.5*1.25,
      shift = {
        -0.0078125*1.25,
        -0.921875*1.25
      },
      width = 97
    },
    priority = "medium",
    scale = 1.25,
    shift = {
      0.015625*1.25,
      -0.890625*1.25
    },
    width = 52
  },
  draw_construction_radius_visualization = true,
  draw_logistic_radius_visualization = true,
  dying_explosion = "medium-explosion",
  energy_source = {
    buffer_capacity = "100MJ",
    input_flow_limit = "5MW",
    type = "electric",
    usage_priority = "secondary-input"
  },
  energy_usage = "100kW",
  flags = {
    "placeable-player",
    "player-creation"
  },
  icon = "__base__/graphics/icons/roboport.png",
  icon_size = 32,
  logistics_radius = 25/2.0,
  material_slots_count = 7/2.0,
  max_health = 500/2.0,
  minable = {
    mining_time = 0.1,
    result = "k-roboport"
  },
  name = "k-roboport",
  open_door_trigger_effect = {
    {
      sound = {
        filename = "__base__/sound/roboport-door.ogg",
        volume = 1
      },
      type = "play-sound"
    }
  },
  recharge_minimum = "40MJ",
  recharging_animation = {
    animation_speed = 0.5,
    filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
    frame_count = 16,
    height = 35,
    priority = "high",
    scale = 1.5,
    width = 37
  },
  recharging_light = {
    color = {
      b = 1,
      g = 1,
      r = 1
    },
    intensity = 0.4,
    size = 5
  },
  request_to_open_door_timeout = 15,
  resistances = {
    {
      percent = 60,
      type = "fire"
    },
    {
      percent = 30,
      type = "impact"
    }
  },
  robot_slots_count = 7/2.0,
  selection_box = {
    {
      -2*1.25,
      -2*1.25
    },
    {
      2*1.25,
      2*1.25
    }
  },
  spawn_and_station_height = -0.1,
  stationing_offset = {
    0,
    0
  },
  type = "roboport",
  vehicle_impact_sound = {
    filename = "__base__/sound/car-metal-impact.ogg",
    volume = 0.65
  },
  working_sound = {
    audible_distance_modifier = 0.5,
    max_sounds_per_type = 3,
    probability = 0.003333333333333333,
    sound = {
      filename = "__base__/sound/roboport-working.ogg",
      volume = 0.6
    }
  }
}

data:extend{entity}

