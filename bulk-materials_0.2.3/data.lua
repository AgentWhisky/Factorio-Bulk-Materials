--- Setting Get Functions
local function get_output_multiplier(name)
  return settings.startup[name .. "-output-multiplier"] or 1
end

local function get_speed_multiplier(name)
  return settings.startup[name .. "-speed-multiplier"] or 1
end

--- Item List
local items = {
  "iron-gear-wheel",
  "iron-stick",
  "concrete",
  "engine-unit",
  "electronic-circuit",
  "advanced-circuit",
  "processing-unit",
  "artificial-yumako-soil",
  "artificial-jellynut-soi",
  "quantum-processor"
}

--- Output and Speed Multiplier
for _, name in ipairs(items) do
  local recipe = data.raw.recipe[name]

  recipe.amount = math.floor(recipe.amount * get_output_multiplier(name))
  recipe.energy_required = recipe.energy_required * get_speed_multiplier(name)
end

