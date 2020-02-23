-- Kizrak

-- data.lua

local sb = serpent.block



local item = {
  icon = "__base__/graphics/icons/roboport.png",
  icon_size = 32,
  name = "k-roboport",
  order = "kizrak-c[signal]-a[roboport]",
  place_result = "k-roboport",
  stack_size = 10,
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
      45
    },
    {
      "iron-gear-wheel",
      45
    },
    {
      "advanced-circuit",
      45
    }
  },
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
          scale = 0.5,
          shift = {
            0.0625,
            0.2421875
          },
          width = 228
        },
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
          scale = 0.5,
          shift = {
            0.890625,
            0.6015625
          },
          width = 294
        },
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
      scale = 0.5,
      shift = {
        -0.5546875,
        -1.9140625
      },
      width = 83
    },
    priority = "medium",
    shift = {
      -0.53149999999999995,
      -1.9375
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
      scale = 0.5,
      shift = {
        0.046875,
        0.15625
      },
      width = 138
    },
    priority = "medium",
    shift = {
      0.03125,
      0.203125
    },
    width = 69
  },
  charge_approach_distance = 5,
  charging_energy = "1000kW",
  charging_offsets = {
    {
      -1.5,
      -0.5
    },
    {
      1.5,
      -0.5
    },
    {
      1.5,
      1.5
    },
    {
      -1.5,
      1.5
    }
  },
  circuit_connector_sprites = {
    blue_led_light_offset = {
      0.609375,
      1.578125
    },
    connector_main = {
      filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04a-base-sequence.png",
      height = 50,
      priority = "low",
      scale = 0.5,
      shift = {
        0.578125,
        1.3125
      },
      width = 52,
      x = 104,
      y = 150
    },
    led_blue = {
      filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04e-blue-LED-on-sequence.png",
      height = 60,
      priority = "low",
      scale = 0.5,
      shift = {
        0.578125,
        1.28125
      },
      width = 60,
      x = 120,
      y = 180
    },
    led_blue_off = {
      filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04f-blue-LED-off-sequence.png",
      height = 44,
      priority = "low",
      scale = 0.5,
      shift = {
        0.578125,
        1.28125
      },
      width = 46,
      x = 92,
      y = 132
    },
    led_green = {
      filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04h-green-LED-sequence.png",
      height = 46,
      priority = "low",
      scale = 0.5,
      shift = {
        0.578125,
        1.28125
      },
      width = 48,
      x = 96,
      y = 138
    },
    led_light = {
      intensity = 0.8,
      size = 0.9
    },
    led_red = {
      filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04i-red-LED-sequence.png",
      height = 46,
      priority = "low",
      scale = 0.5,
      shift = {
        0.578125,
        1.28125
      },
      width = 48,
      x = 96,
      y = 138
    },
    red_green_led_light_offset = {
      0.59375,
      1.46875
    },
    wire_pins = {
      filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04c-wire-sequence.png",
      height = 58,
      priority = "low",
      scale = 0.5,
      shift = {
        0.578125,
        1.28125
      },
      width = 62,
      x = 124,
      y = 174
    },
    wire_pins_shadow = {
      draw_as_shadow = true,
      filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04d-wire-shadow-sequence.png",
      height = 54,
      priority = "low",
      scale = 0.5,
      shift = {
        0.734375,
        1.40625
      },
      width = 70,
      x = 140,
      y = 162
    }
  },
  circuit_wire_connection_point = {
    shadow = {
      green = {
        1.078125,
        2.140625
      },
      red = {
        1.296875,
        2.09375
      }
    },
    wire = {
      green = {
        0.9375,
        1.5625
      },
      red = {
        0.875,
        1.328125
      }
    }
  },
  circuit_wire_max_distance = 9,
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
      -1.7,
      -1.7
    },
    {
      1.7,
      1.7
    }
  },
  construction_radius = 55,
  corpse = "roboport-remnants",
  default_available_construction_output_signal = {
    name = "signal-Z",
    type = "virtual"
  },
  default_available_logistic_output_signal = {
    name = "signal-X",
    type = "virtual"
  },
  default_total_construction_output_signal = {
    name = "signal-T",
    type = "virtual"
  },
  default_total_logistic_output_signal = {
    name = "signal-Y",
    type = "virtual"
  },
  door_animation_down = {
    filename = "__base__/graphics/entity/roboport/roboport-door-down.png",
    frame_count = 16,
    height = 22,
    hr_version = {
      filename = "__base__/graphics/entity/roboport/hr-roboport-door-down.png",
      frame_count = 16,
      height = 41,
      priority = "medium",
      scale = 0.5,
      shift = {
        -0.0078125,
        -0.3046875
      },
      width = 97
    },
    priority = "medium",
    shift = {
      0.015625,
      -0.234375
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
      scale = 0.5,
      shift = {
        -0.0078125,
        -0.921875
      },
      width = 97
    },
    priority = "medium",
    shift = {
      0.015625,
      -0.890625
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
  energy_usage = "50kW",
  flags = {
    "placeable-player",
    "player-creation"
  },
  icon = "__base__/graphics/icons/roboport.png",
  icon_size = 32,
  logistics_radius = 25,
  material_slots_count = 7,
  max_health = 500,
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
  robot_slots_count = 7,
  selection_box = {
    {
      -2,
      -2
    },
    {
      2,
      2
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

