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
    ["low-density-structure"] = {"low-density-structure"},
    ["sulfur"] = {"sulfur"},
    ["flying-robot-frame"] = {"flying-robot-frame"},

}

local foundry_items = {
    ["iron-gear-wheel"] = {"casting-iron-gear-wheel"},
    ["iron-stick"] = {"casting-iron-stick"},
    ["steel-plate"] = {"casting-steel"},
    ["concrete"] = {"concrete-from-molten-iron"},
    ["low-density-structure"] = {"casting-low-density-structure"}
}

local default_weight = {
    ["iron-gear-wheel"] = 1000,
    ["iron-stick"] = 500,
    ["steel-plate"] = 2500,
    ["concrete"] = 10000,
    ["engine-unit"] = 2500,
    ["electric-engine-unit"] = 2500,
    ["electronic-circuit"] = 500,
    ["advanced-circuit"] = 1000,
    ["processing-unit"] = 3333.33,
    ["artificial-yumako-soil"] = 14750,
    ["artificial-jellynut-soil"] = 14750,
    ["quantum-processor"] = 5000,
    ["low-density-structure"] = 5000,
    ["sulfur"] = 1000,
    ["flying-robot-frame"] = 150
}

--- Getting individual settings
local normalize_weight = settings.startup['enable-normalized-rocket-weight'].value

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
                local base_energy = recipe.energy_required or 0.5
                local multiplier = get_speed_multiplier(item) or 1

                multiplier = math.min(multiplier, base_energy / 0.002)
                recipe.energy_required = math.max(0.02, base_energy / multiplier)
            end
        end

        --- Update item weight
        if normalize_weight then
            data.raw['item'][item].weight = default_weight[item]
        end
    end
end

--- Output and Speed Multiplier
update_recipes(base_items)
update_recipes(foundry_items)
