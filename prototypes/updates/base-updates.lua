
RECIPE('atomic-bomb'):remove_ingredient('uranium-235'):add_ingredient({type = "item", name = "yellow-cake", amount = 5})
RECIPE('electric-engine-unit'):add_ingredient({type = "item", name = "iron-stick", amount = 1}):add_ingredient({type = "item", name = "copper-cable", amount = 300}):add_ingredient({type = "item", name = "aluminium-plate", amount = 10}):add_ingredient({type = "item", name = "bolts", amount = 20}):remove_ingredient("engine-unit")

RECIPE('flying-robot-frame'):add_unlock('robotics')
RECIPE('low-density-structure'):change_category('py-rawores-smelter')

TECHNOLOGY('robotics'):add_prereq('construction-robotics'):add_prereq('logistic-robotics')

data.raw.reactor['nuclear-reactor'].use_fuel_glow_color = true
data.raw.item['uranium-fuel-cell'].fuel_glow_color = {0,1,0,1}

data.raw['underground-belt']['fast-underground-belt'].max_distance = 15
data.raw['underground-belt']['express-underground-belt'].max_distance = 30

data.raw.resource['coal'].autoplace = nil
data.raw['autoplace-control']['coal'] = nil

for _, preset in pairs(data.raw["map-gen-presets"]["default"]) do
    if preset and preset.basic_settings and preset.basic_settings.autoplace_controls and preset.basic_settings.autoplace_controls['coal'] then
      preset.basic_settings.autoplace_controls['coal'] = nil
    end
end

data.raw['mining-drill']['electric-mining-drill'].mining_speed = 15

data.raw.furnace['stone-furnace'].crafting_categories = {'basic-smelting-1','smelting'}
data.raw.furnace['steel-furnace'].crafting_categories = {'basic-smelting-2'}
data.raw.furnace['electric-furnace'].crafting_categories = {'basic-smelting-3'}
data.raw.furnace['electric-furnace'].crafting_speed = 3

RECIPE('copper-plate'):set_fields {enabled = false}
