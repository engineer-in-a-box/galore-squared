icons = require("icons")

local function add_recipe(tech, recipe)
    table.insert(data.raw["technology"][tech].effects, {type = "unlock-recipe", recipe = recipe})
end

data:extend{
    {
        type = "recipe",
        name = "vgal-casting-superconductor",
        ingredients = {
            {type = "item", name = "plastic-bar", amount = 1},
            {type = "item", name = "copper-plate", amount = 1},
            {type = "fluid", name = "holmium-solution", amount = 15},
            {type = "fluid", name = "light-oil", amount = 5}
        },
        results = {
            {type = "item", name = "superconductor", amount = 2}
        },
        energy_required = 2.5,
        category = "electromagnetics",
        subgroup = "vgal-intermediate-casting",
        enabled = false,
        allow_as_intermediate = false,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "superconductor"}
            },
            {
                "none",
                {type = "fluid", name = "holmium-solution"}
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-iron-cable",
        ingredients = {
            {type = "item", name = "iron-plate", amount = 1}
        },
        results = {
            {type = "item", name = "copper-cable", amount = 2}
        },
        energy_required = 0.25,
        subgroup = "vgal-basic-intermediate-products",
        enabled = false,
        allow_as_intermediate = false,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "copper-cable"}
            },
            {
                {type = "item", name = "iron-plate"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-casting-iron-cable",
        ingredients = {
            {type = "fluid", name = "molten-iron", amount = 5}
        },
        results = {
            {type = "item", name = "copper-cable", amount = 2}
        },
        energy_required = 0.25,
        category = "metallurgy",
        subgroup = "vgal-intermediate-casting",
        enabled = false,
        allow_as_intermediate = false,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "copper-cable"}
            },
            nil,
            "casting-iron"
        )
    },
    {
        type = "recipe",
        name = "vgal-water-fusion-power-cell",
        ingredients = {
            {type = "item", name = "holmium-plate", amount = 2},
            {type = "fluid", name = "ammonia", amount = 100},
            {type = "fluid", name = "water", amount = 10000}
        },
        results = {
            {type = "item", name = "fusion-power-cell", amount = 1}
        },
        energy_required = 120,
        category = "cryogenics",
        subgroup = "uranium-processing",
        enabled = false,
        allow_productivity = false,
        allow_as_intermediate = false,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "fusion-power-cell"}
            },
            {
                {type = "fluid", name = "water"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-quantum-space-platform-starter-pack",
        ingredients = {
            {type = "item", name = "steel-plate", amount = 100},
            {type = "item", name = "quantum-processor", amount = 1},
            {type = "item", name = "space-platform-foundation", amount = 200}
        },
        results = {
            {type = "item", name = "space-platform-starter-pack", amount = 5}
        },
        energy_required = 120,
        category = "crafting-with-fluid",
        enabled = false,
        allow_as_intermediate = false,
        icons = icons.recipe_icon(
            {
                {type = "space-platform-starter-pack", name = "space-platform-starter-pack"}
            },
            {
                {type = "item", name = "quantum-processor"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-holmium-solution-tungsten-plate",
        ingredients = {
            {type = "item", name = "tungsten-ore", amount = 2},
            {type = "fluid", name = "molten-iron", amount = 15},
            {type = "fluid", name = "holmium-solution", amount = 5}
        },
        results = {
            {type = "item", name = "tungsten-plate", amount = 1}
        },
        energy_required = 10,
        category = "metallurgy",
        subgroup = "vgal-intermediate-casting",
        enabled = false,
        allow_as_intermediate = false,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "tungsten-plate"}
            },
            {
                "none",
                {type = "fluid", name = "holmium-solution"}
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-quantum-speed-module-3",
        ingredients = {
            {type = "item", name = "tungsten-carbide", amount = 2},
            {type = "item", name = "quantum-processor", amount = 1},
            {type = "item", name = "speed-module-2", amount = 6},
            {type = "fluid", name = "fluoroketone-cold", amount = 10}
        },
        results = {
            {type = "item", name = "speed-module-3", amount = 2},
            {type = "fluid", name = "fluoroketone-hot", amount = 8, ignored_by_productivity = 8}
        },
        energy_required = 45,
        category = "electromagnetics",
        subgroup = "vgal-module-speed",
        enabled = false,
        main_product = "speed-module-3",
        allow_as_intermediate = false,
        icons = icons.recipe_icon(
            {
                {type = "module", name = "speed-module-3"}
            },
            {
                {type = "item", name = "quantum-processor"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-quantum-efficiency-module-3",
        ingredients = {
            {type = "item", name = "spoilage", amount = 10},
            {type = "item", name = "quantum-processor", amount = 1},
            {type = "item", name = "efficiency-module-2", amount = 6},
            {type = "fluid", name = "fluoroketone-cold", amount = 10}
        },
        results = {
            {type = "item", name = "efficiency-module-3", amount = 2},
            {type = "fluid", name = "fluoroketone-hot", amount = 8, ignored_by_productivity = 8}
        },
        energy_required = 45,
        category = "electromagnetics",
        subgroup = "vgal-module-efficiency",
        enabled = false,
        main_product = "efficiency-module-3",
        allow_as_intermediate = false,
        icons = icons.recipe_icon(
            {
                {type = "module", name = "efficiency-module-3"}
            },
            {
                {type = "item", name = "quantum-processor"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-quantum-productivity-module-3",
        ingredients = {
            {type = "item", name = "biter-egg", amount = 2},
            {type = "item", name = "quantum-processor", amount = 1},
            {type = "item", name = "productivity-module-2", amount = 6},
            {type = "fluid", name = "fluoroketone-cold", amount = 10}
        },
        results = {
            {type = "item", name = "productivity-module-3", amount = 2},
            {type = "fluid", name = "fluoroketone-hot", amount = 8, ignored_by_productivity = 8}
        },
        energy_required = 45,
        category = "electromagnetics",
        subgroup = "vgal-module-productivity",
        enabled = false,
        main_product = "productivity-module-3",
        allow_as_intermediate = false,
        icons = icons.recipe_icon(
            {
                {type = "module", name = "productivity-module-3"}
            },
            {
                {type = "item", name = "quantum-processor"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-quantum-quality-module-3",
        ingredients = {
            {type = "item", name = "superconductor", amount = 2},
            {type = "item", name = "quantum-processor", amount = 1},
            {type = "item", name = "quality-module-2", amount = 6},
            {type = "fluid", name = "fluoroketone-cold", amount = 10}
        },
        results = {
            {type = "item", name = "quality-module-3", amount = 2},
            {type = "fluid", name = "fluoroketone-hot", amount = 8, ignored_by_productivity = 8}
        },
        energy_required = 45,
        category = "electromagnetics",
        subgroup = "vgal-module-quality",
        enabled = false,
        main_product = "quality-module-3",
        allow_as_intermediate = false,
        icons = icons.recipe_icon(
            {
                {type = "module", name = "quality-module-3"}
            },
            {
                {type = "item", name = "quantum-processor"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-steel-cable",
        ingredients = {
            {type = "item", name = "steel-plate", amount = 1}
        },
        results = {
            {type = "item", name = "copper-cable", amount = 12}
        },
        energy_required = 1,
        subgroup = "vgal-basic-intermediate-products",
        enabled = false,
        allow_as_intermediate = false,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "copper-cable"}
            },
            {
                {type = "item", name = "steel-plate"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-quantum-processing-unit",
        ingredients = {
            {type = "item", name = "quantum-processor", amount = 1},
            {type = "item", name = "electronic-circuit", amount = 5},
            {type = "item", name = "advanced-circuit", amount = 1},
            {type = "fluid", name = "sulfuric-acid", amount = 20},
            {type = "fluid", name = "fluoroketone-cold", amount = 30}
        },
        results = {
            {type = "item", name = "processing-unit", amount = 25},
            {type = "fluid", name = "fluoroketone-hot", amount = 15, ignored_by_productivity = 15}
        },
        energy_required = 120,
        category = "electromagnetics",
        subgroup = "vgal-circuits-t3",
        enabled = false,
        main_product = "processing-unit",
        allow_as_intermediate = false,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "processing-unit"}
            },
            {
                {type = "item", name = "quantum-processor"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-casting-battery",
        ingredients = {
            {type = "fluid", name = "molten-iron", amount = 10},
            {type = "fluid", name = "molten-copper", amount = 10},
            {type = "fluid", name = "sulfuric-acid", amount = 15}
        },
        results = {
            {type = "item", name = "battery", amount = 1}
        },
        energy_required = 3,
        category = "cryogenics",
        subgroup = "vgal-chemistry-products",
        enabled = false,
        allow_as_intermediate = false,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "battery"}
            },
            nil,
            "casting-iron-copper"
        )
    },
    {
        type = "recipe",
        name = "vgal-synthetic-bioflux",
        ingredients = {
            {type = "fluid", name = "heavy-oil", amount = 30},
            {type = "fluid", name = "water", amount = 100},
            {type = "item", name = "nutrients", amount = 15}
        },
        results = {
            {type = "item", name = "bioflux", amount = 2}
        },
        energy_required = 10,
        category = "organic",
        subgroup = "agriculture-products",
        enabled = false,
        allow_as_intermediate = false,
        icons = icons.recipe_icon(
            {
                {type = "capsule", name = "bioflux"}
            },
            {
                {type = "fluid", name = "heavy-oil"},
                {type = "item", name = "nutrients"}
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-lithium-supercapacitor",
        ingredients = {
            {type = "item", name = "battery", amount = 1},
            {type = "item", name = "holmium-plate", amount = 1},
            {type = "item", name = "advanced-circuit", amount = 1},
            {type = "fluid", name = "lithium-brine", amount = 15},
            {type = "fluid", name = "electrolyte", amount = 5}
        },
        results = {
            {type = "item", name = "supercapacitor", amount = 1}
        },
        energy_required = 10,
        category = "electromagnetics",
        subgroup = "intermediate-product",
        enabled = false,
        allow_as_intermediate = false,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "supercapacitor"}
            },
            {
                {type = "fluid", name = "lithium-brine"},
                {type = "item", name = "advanced-circuit"}
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-fusion-rocket-part",
        ingredients = {
            {type = "item", name = "low-density-structure", amount = 1},
            {type = "item", name = "processing-unit", amount = 1},
            {type = "item", name = "fusion-power-cell", amount = 1}
        },
        results = {
            {type = "item", name = "rocket-part", amount = 2}
        },
        energy_required = 4,
        category = "rocket-building",
        subgroup = "vgal-rocket-parts",
        enabled = false,
        allow_as_intermediate = false,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "rocket-part"}
            },
            {
                {type = "item", name = "fusion-power-cell"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-catalyst-lithium",
        ingredients = {
            {type = "item", name = "lithium-plate", amount = 1},
            {type = "fluid", name = "holmium-solution", amount = 10},
            {type = "fluid", name = "lithium-brine", amount = 50},
            {type = "fluid", name = "ammonia", amount = 50}
        },
        results = {
            {type = "item", name = "lithium", amount = 5},
        },
        energy_required = 2,
        category = "cryogenics",
        subgroup = "raw-resource",
        enabled = false,
        allow_as_intermediate = false,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "lithium"}
            },
            {
                {type = "item", name = "lithium-plate"},
                {type = "fluid", name = "holmium-solution"}
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-lithium-plate-rocket-part",
        ingredients = {
            {type = "item", name = "lithium-plate", amount = 3},
            {type = "item", name = "rocket-fuel", amount = 1},
            {type = "item", name = "processing-unit", amount = 2}
        },
        results = {
            {type = "item", name = "rocket-part", amount = 3}
        },
        energy_required = 1.5,
        category = "rocket-building",
        subgroup = "vgal-rocket-parts",
        enabled = false,
        allow_as_intermediate = false,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "rocket-part"}
            },
            {
                {type = "item", name = "lithium-plate"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-lithium-plate-fusion-rocket-part",
        ingredients = {
            {type = "item", name = "lithium-plate", amount = 4},
            {type = "item", name = "fusion-power-cell", amount = 1},
            {type = "item", name = "processing-unit", amount = 2}
        },
        results = {
            {type = "item", name = "rocket-part", amount = 5}
        },
        energy_required = 1.5,
        category = "rocket-building",
        subgroup = "vgal-rocket-parts",
        enabled = false,
        allow_as_intermediate = false,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "rocket-part"}
            },
            {
                {type = "item", name = "lithium-plate"},
                {type = "item", name = "fusion-power-cell"}
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-tungsten-plate-engine-unit",
        ingredients = {
            {type = "item", name = "tungsten-plate", amount = 1},
            {type = "item", name = "iron-gear-wheel", amount = 2},
            {type = "item", name = "pipe", amount = 4}
        },
        results = {
            {type = "item", name = "engine-unit", amount = 6}
        },
        energy_required = 30,
        category = "metallurgy",
        subgroup = "vgal-engines",
        enabled = false,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "engine-unit"}
            },
            {
                {type = "item", name = "tungsten-plate"},
                "none"
            }
        )
    }
}

add_recipe("electromagnetic-plant", "vgal-casting-superconductor")
add_recipe("electronics", "vgal-iron-cable")
add_recipe("foundry", "vgal-casting-iron-cable")
add_recipe("fusion-reactor", "vgal-water-fusion-power-cell")
add_recipe("quantum-processor", "vgal-quantum-space-platform-starter-pack")
add_recipe("tungsten-steel", "vgal-holmium-solution-tungsten-plate")
add_recipe("quantum-processor", "vgal-quantum-speed-module-3")
add_recipe("quantum-processor", "vgal-quantum-efficiency-module-3")
add_recipe("quantum-processor", "vgal-quantum-productivity-module-3")
add_recipe("quantum-processor", "vgal-quantum-quality-module-3")
add_recipe("steel-processing", "vgal-steel-cable")
add_recipe("quantum-processor", "vgal-quantum-processing-unit")
add_recipe("foundry", "vgal-casting-battery")
add_recipe("captive-biter-spawner", "vgal-synthetic-bioflux")
add_recipe("lithium-processing", "vgal-lithium-supercapacitor")
add_recipe("fusion-reactor", "vgal-fusion-rocket-part")
add_recipe("cryogenic-plant", "vgal-catalyst-lithium")
add_recipe("lithium-processing", "vgal-lithium-plate-rocket-part")
add_recipe("fusion-reactor", "vgal-lithium-plate-fusion-rocket-part")
add_recipe("tungsten-steel", "vgal-tungsten-plate-engine-unit")