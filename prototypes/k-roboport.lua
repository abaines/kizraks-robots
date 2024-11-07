-- Kizrak

-- data.lua

local sb = serpent.block -- luacheck: ignore 211

local function logsb(input)
  log(sb(input))
end


local item = {
  icon = "__base__/graphics/icons/roboport.png",
  icon_size = 64,
  name = "k-roboport",
  order = "kizrak-c[signal]-a[roboport]",
  place_result = "k-roboport",
  stack_size = 5,
  subgroup = "k-logistic-network",
  type = "item"
}

data:extend{item}


local recipe = {
  enabled = false,
  energy_required = 5,
  ingredients = {
    {
      type="item",
      name="steel-plate",
      amount=36
    },
    { type="item",name="engine-unit", amount=25},
    {
      type="item",
      name="electronic-circuit",
      amount=90
    },
    {type="fluid", name="steam", amount=2700},
    {type="item", name="coal", amount=220},
  },
  category = "crafting-with-fluid",
  name = "k-roboport",
  results ={{type = "item", name ="k-roboport", amount = 1} },
  type = "recipe"
}

data:extend{recipe}

local function scale(object,scale)
  --log("BEFORE "..sb(object))
  for k1, v1 in ipairs(object) do
   -- logsb(k1)
   -- logsb(v1)
    for k2, v2 in ipairs(v1) do
      --logsb(k2)
      --logsb(v2)
      object[k1][k2] = v2 * scale
    end
  end
  --log("AFTER "..sb(object))
end

local k_roboport = table.deepcopy(data.raw["roboport"]["roboport"])

k_roboport.name = "k-roboport"
k_roboport.circuit_connector = nil
k_roboport.circuit_wire_max_distance = nil
k_roboport.construction_radius = 55/2
k_roboport.energy_usage = "100kW"
k_roboport.robot_slots_count = 7/2
k_roboport.logistics_connection_distance = 25
k_roboport.logistics_radius = 25/2
k_roboport.material_slots_count = 7/2
k_roboport.max_health = 500/2
k_roboport.minable.result = "k-roboport"

k_roboport.recharging_light.color={r=1.0,g=0.4,b=0.0}
k_roboport.recharging_light.intensity=1
k_roboport.recharging_light.size=7

--[[
log("------------------------------------------------------------")
logsb(k_roboport.charging_offsets)
logsb(k_roboport.collision_box)
logsb(k_roboport.selection_box)
log("============================================================")
]]--

local scale_ratio = 1.25

scale(k_roboport.charging_offsets, scale_ratio)
scale(k_roboport.collision_box, scale_ratio)
scale(k_roboport.selection_box, scale_ratio)

--[[
logsb(k_roboport.charging_offsets)
logsb(k_roboport.collision_box)
logsb(k_roboport.selection_box)
log("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
]]--

--[[
charging_offsets *= 1.25
collision_box *= 1.25
selection_box *= 1.25
]]--

k_roboport.base.layers[1].scale = k_roboport.base.layers[1].scale * scale_ratio
k_roboport.base.layers[2].scale = k_roboport.base.layers[2].scale * scale_ratio

k_roboport.base_animation.scale = scale_ratio * k_roboport.base_animation.scale
k_roboport.base_animation.shift[1] = scale_ratio * k_roboport.base_animation.shift[1]
k_roboport.base_animation.shift[2] = scale_ratio * k_roboport.base_animation.shift[2]

k_roboport.base_patch.scale = scale_ratio * k_roboport.base_patch.scale

k_roboport.door_animation_down.scale = scale_ratio * k_roboport.door_animation_down.scale
k_roboport.door_animation_down.shift[1] = scale_ratio * k_roboport.door_animation_down.shift[1]
k_roboport.door_animation_down.shift[2] = scale_ratio * k_roboport.door_animation_down.shift[2]


k_roboport.door_animation_up.scale = scale_ratio * k_roboport.door_animation_up.scale
k_roboport.door_animation_up.shift[1] = scale_ratio * k_roboport.door_animation_up.shift[1]
k_roboport.door_animation_up.shift[2] = scale_ratio * k_roboport.door_animation_up.shift[2]

k_roboport.recharging_animation.scale = scale_ratio * k_roboport.recharging_animation.scale

k_roboport.water_reflection.pictures.scale = scale_ratio * k_roboport.water_reflection.pictures.scale 



local entityold = {
  base = {
    layers = {
      {
        filename = "__base__/graphics/entity/roboport/roboport-base.png",
        height = 135,
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
  icon_size = 64,
  logistics_radius = 25/2.0,
  logistics_connection_distance=25,
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

log(sb(k_roboport))

data:extend{k_roboport}

