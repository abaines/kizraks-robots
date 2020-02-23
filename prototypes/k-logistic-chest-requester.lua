-- Kizrak

-- data.lua

local sb = serpent.block



local logistic_container = {
  animation = {
    layers = {
      {
        filename = "__base__/graphics/entity/logistic-chest/logistic-chest-requester.png",
        frame_count = 7,
        height = 38,
        hr_version = {
          filename = "__base__/graphics/entity/logistic-chest/hr-logistic-chest-requester.png",
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
  circuit_connector_sprites = {
    blue_led_light_offset = {
      0.125,
      0.46875
    },
    connector_main = {
      filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04a-base-sequence.png",
      height = 50,
      priority = "low",
      scale = 0.5,
      shift = {
        0.09375,
        0.203125
      },
      width = 52,
      x = 104,
      y = 150
    },
    connector_shadow = {
      draw_as_shadow = true,
      filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04b-base-shadow-sequence.png",
      height = 46,
      priority = "low",
      scale = 0.5,
      shift = {
        0.3125,
        0.3125
      },
      width = 62,
      x = 124,
      y = 138
    },
    led_blue = {
      filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04e-blue-LED-on-sequence.png",
      height = 60,
      priority = "low",
      scale = 0.5,
      shift = {
        0.09375,
        0.171875
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
        0.09375,
        0.171875
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
        0.09375,
        0.171875
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
        0.09375,
        0.171875
      },
      width = 48,
      x = 96,
      y = 138
    },
    red_green_led_light_offset = {
      0.109375,
      0.359375
    },
    wire_pins = {
      filename = "__base__/graphics/entity/circuit-connector/hr-ccm-universal-04c-wire-sequence.png",
      height = 58,
      priority = "low",
      scale = 0.5,
      shift = {
        0.09375,
        0.171875
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
        0.25,
        0.296875
      },
      width = 70,
      x = 140,
      y = 162
    }
  },
  circuit_wire_connection_point = {
    shadow = {
      green = {
        0.671875,
        0.609375
      },
      red = {
        0.890625,
        0.5625
      }
    },
    wire = {
      green = {
        0.453125,
        0.453125
      },
      red = {
        0.390625,
        0.21875
      }
    }
  },
  circuit_wire_max_distance = 9,
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
  corpse = "requester-chest-remnants",
  fast_replaceable_group = "container",
  flags = {
    "placeable-player",
    "player-creation"
  },
  icon = "__base__/graphics/icons/logistic-chest-requester.png",
  icon_size = 32,
  inventory_size = 48,
  logistic_mode = "requester",
  logistic_slots_count = 12,
  max_health = 350,
  minable = {
    mining_time = 0.1,
    result = "k-logistic-chest-requester"
  },
  name = "k-logistic-chest-requester",
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
  icon = "__base__/graphics/icons/logistic-chest-requester.png",
  icon_size = 32,
  name = "k-logistic-chest-requester",
  order = "b[storage]-e[logistic-chest-requester]",
  place_result = "k-logistic-chest-requester",
  stack_size = 50,
  subgroup = "logistic-network",
  type = "item"
}

data:extend{item}


