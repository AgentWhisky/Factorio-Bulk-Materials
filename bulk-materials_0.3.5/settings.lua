data:extend({{
    type = "bool-setting",
    name = "enable-normalized-rocket-weight",
    setting_type = "startup",
    default_value = false
}, 
--- OUTPUT MULTIPLIERS
{
    type = "int-setting",
    name = "iron-gear-wheel-output-multiplier",
    setting_type = "startup",
    default_value = 4,
    minimum_value = 1,
    maximum_value = 128,
    order = "a"
}, {
    type = "int-setting",
    name = "iron-stick-output-multiplier",
    setting_type = "startup",
    default_value = 4,
    minimum_value = 1,
    maximum_value = 128,
    order = "b"
}, {
    type = "int-setting",
    name = "steel-plate-output-multiplier",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 128,
    order = "c"
}, {
    type = "int-setting",
    name = "concrete-output-multiplier",
    setting_type = "startup",
    default_value = 4,
    minimum_value = 1,
    maximum_value = 128,
    order = "d"
}, {
    type = "int-setting",
    name = "engine-unit-output-multiplier",
    setting_type = "startup",
    default_value = 2,
    minimum_value = 1,
    maximum_value = 128,
    order = "e"
}, {
    type = "int-setting",
    name = "electric-engine-unit-output-multiplier",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 128,
    order = "f"
}, {
    type = "int-setting",
    name = "electronic-circuit-output-multiplier",
    setting_type = "startup",
    default_value = 16,
    minimum_value = 1,
    maximum_value = 128,
    order = "g"
}, {
    type = "int-setting",
    name = "advanced-circuit-output-multiplier",
    setting_type = "startup",
    default_value = 16,
    minimum_value = 1,
    maximum_value = 128,
    order = "h"
}, {
    type = "int-setting",
    name = "processing-unit-output-multiplier",
    setting_type = "startup",
    default_value = 16,
    minimum_value = 1,
    maximum_value = 128,
    order = "i"
}, {
    type = "int-setting",
    name = "low-density-structure-output-multiplier",
    setting_type = "startup",
    default_value = 2,
    minimum_value = 1,
    maximum_value = 128,
    order = "j"
}, {
    type = "int-setting",
    name = "flying-robot-frame-output-multiplier",
    setting_type = "startup",
    default_value = 2,
    minimum_value = 1,
    maximum_value = 128,
    order = "k"
}, {
    type = "int-setting",
    name = "artificial-yumako-soil-output-multiplier",
    setting_type = "startup",
    default_value = 4,
    minimum_value = 1,
    maximum_value = 128,
    order = "l"
}, {
    type = "int-setting",
    name = "artificial-jellynut-soil-output-multiplier",
    setting_type = "startup",
    default_value = 4,
    minimum_value = 1,
    maximum_value = 128,
    order = "m"
}, {
    type = "int-setting",
    name = "quantum-processor-output-multiplier",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 128,
    order = "n"
}, {
    type = "int-setting",
    name = "sulfur-output-multiplier",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 128,
    order = "o"
}, --- SPEED MULTIPLIERS
{
    type = "int-setting",
    name = "iron-gear-wheel-speed-multiplier",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 128,
    order = "za"
}, {
    type = "int-setting",
    name = "iron-stick-speed-multiplier",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 128,
    order = "zb"
}, {
    type = "int-setting",
    name = "steel-plate-speed-multiplier",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 128,
    order = "zc"
}, {
    type = "int-setting",
    name = "concrete-speed-multiplier",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 128,
    order = "zd"
}, {
    type = "int-setting",
    name = "engine-unit-speed-multiplier",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 128,
    order = "ze"
}, {
    type = "int-setting",
    name = "electric-engine-unit-speed-multiplier",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 128,
    order = "zf"
}, {
    type = "int-setting",
    name = "electronic-circuit-speed-multiplier",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 128,
    order = "zg"
}, {
    type = "int-setting",
    name = "advanced-circuit-speed-multiplier",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 128,
    order = "zh"
}, {
    type = "int-setting",
    name = "processing-unit-speed-multiplier",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 128,
    order = "zi"
}, {
    type = "int-setting",
    name = "low-density-structure-speed-multiplier",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 128,
    order = "zj"
}, {
    type = "int-setting",
    name = "flying-robot-frame-speed-multiplier",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 128,
    order = "zk"
}, {
    type = "int-setting",
    name = "artificial-yumako-soil-speed-multiplier",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 128,
    order = "zl"
}, {
    type = "int-setting",
    name = "artificial-jellynut-soil-speed-multiplier",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 128,
    order = "zm"
}, {
    type = "int-setting",
    name = "quantum-processor-speed-multiplier",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 128,
    order = "zn"
}, {
    type = "int-setting",
    name = "sulfur-speed-multiplier",
    setting_type = "startup",
    default_value = 1,
    minimum_value = 1,
    maximum_value = 128,
    order = "zo"
}})
