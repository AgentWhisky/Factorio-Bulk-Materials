--- Setting Get Functions
local function get_output_multiplier(name)
    return settings.startup[name .. "-output-multiplier"].value or 1
end

local function get_speed_multiplier(name)
    return settings.startup[name .. "-speed-multiplier"].value or 1
end

function update_recipes(items)
    for item, recipes in pairs(items) do
        for _, recipe_name in ipairs(recipes) do
            local recipe = data.raw.recipe[recipe_name]

            if recipe then
                -- Update Result Item Amount
                for _, result in ipairs(recipe.results or {}) do
                    if result.name == item then
                        result.amount = math.floor(result.amount * get_output_multiplier(item))
                    end
                end

                -- Update Energy Required
                if not recipe.energy_required then
                    recipe.energy_required = 0.5 -- Set default if does not exist
                end
                recipe.energy_required = (recipe.energy_required / get_speed_multiplier(item))
            end
        end
    end
end

--- Item List: [item name] = { recipes array }
local base_items = {
    --- Base Recipies
    ["iron-gear-wheel"] = {"iron-gear-wheel"},
    ["iron-stick"] = {"iron-stick"},
    ["steel-plate"] = {"steel-plate"},
    ["concrete"] = {"concrete"},
    ["engine-unit"] = {"engine-unit"},
    ["electric-engine-unit"] = {"electric-engine-unit"},
    ["electronic-circuit"] = {"electronic-circuit"},
    ["advanced-circuit"] = {"advanced-circuit"},
    ["processing-unit"] = {"processing-unit"},
    ["artificial-yumako-soil"] = {"artificial-yumako-soil"},
    ["artificial-jellynut-soil"] = {"artificial-jellynut-soil"},
    ["quantum-processor"] = {"quantum-processor"},
    ["low-density-structure"] = {"low-density-structure"}
}

local foundry_items = {
    ["iron-gear-wheel"] = {"casting-iron-gear-wheel"},
    ["iron-stick"] = {"casting-iron-stick"},
    ["steel-plate"] = {"casting-steel"},
    ["concrete"] = {"concrete-from-molten-iron"},
    ["low-density-structure"] = {"casting-low-density-structure"}
}

--- Output and Speed Multiplier
update_recipes(base_items)
update_recipes(foundry_items)
