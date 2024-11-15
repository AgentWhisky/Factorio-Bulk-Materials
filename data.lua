-- Get multipliers from the startup settings
local gear_multiplier = settings.startup["gear-multiplier"].value
local stick_multiplier = settings.startup["stick-multiplier"].value
local green_circuit_multiplier = settings.startup["green-circuit-multiplier"].value
local red_circuit_multiplier = settings.startup["red-circuit-multiplier"].value
local blue_circuit_multiplier = settings.startup["blue-circuit-multiplier"].value
local concrete_multiplier = settings.startup["concrete-multiplier"].value

-- Update default recipes
data.raw.recipe["iron-gear-wheel"].results = {
  {type = "item", name = "iron-gear-wheel", amount = math.floor(1 * gear_multiplier)}
}

data.raw.recipe["iron-stick"].results = {
  {type = "item", name = "iron-stick", amount = math.floor(2 * stick_multiplier)}
}

data.raw.recipe["electronic-circuit"].results = {
  {type = "item", name = "electronic-circuit", amount = math.floor(1 * green_circuit_multiplier)}
}

data.raw.recipe["advanced-circuit"].results = {
  {type = "item", name = "advanced-circuit", amount = math.floor(1 * red_circuit_multiplier)}
}

data.raw.recipe["processing-unit"].results = {
  {type = "item", name = "processing-unit", amount = math.floor(1 * blue_circuit_multiplier)}
}

data.raw.recipe["concrete"].results = {
  {type = "item", name = "concrete", amount = math.floor(1 * concrete_multiplier)}
}