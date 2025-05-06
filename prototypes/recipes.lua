icons = require("icons")

local function add_recipe(tech, recipe)
    table.insert(data.raw["technology"][tech].effects, {type = "unlock-recipe", recipe = recipe})
end

local function add_prod(tech, recipe, change)
    table.insert(data.raw["technology"][tech].effects, {type = "change-recipe-productivity", recipe = recipe, change = change or 0.1})
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
        auto_recycle = false,
        allow_productivity = true,
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
        auto_recycle = false,
        allow_productivity = true,
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
        auto_recycle = false,
        allow_productivity = true,
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
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
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
        category = "electromagnetics",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
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
        auto_recycle = false,
        allow_productivity = true,
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
        main_product = "speed-module-3",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
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
        main_product = "efficiency-module-3",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
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
        main_product = "productivity-module-3",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
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
        main_product = "quality-module-3",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
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
        auto_recycle = false,
        allow_productivity = true,
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
        main_product = "processing-unit",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
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
        auto_recycle = false,
        allow_productivity = true,
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
        auto_recycle = false,
        allow_productivity = true,
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
        auto_recycle = false,
        allow_productivity = true,
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
            {type = "item", name = "advanced-circuit", amount = 3},
            {type = "item", name = "fusion-power-cell", amount = 1}
        },
        results = {
            {type = "item", name = "rocket-part", amount = 2}
        },
        energy_required = 4,
        category = "advanced-crafting",
        subgroup = "vgal-rocket-parts",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
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
        auto_recycle = false,
        allow_productivity = true,
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
            {type = "item", name = "lithium-plate", amount = 1},
            {type = "item", name = "rocket-fuel", amount = 1},
            {type = "item", name = "advanced-circuit", amount = 2}
        },
        results = {
            {type = "item", name = "rocket-part", amount = 3}
        },
        energy_required = 1.5,
        category = "advanced-crafting",
        subgroup = "vgal-rocket-parts",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
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
            {type = "item", name = "lithium-plate", amount = 1},
            {type = "item", name = "fusion-power-cell", amount = 1},
            {type = "item", name = "processing-unit", amount = 1}
        },
        results = {
            {type = "item", name = "rocket-part", amount = 5}
        },
        energy_required = 1.5,
        category = "advanced-crafting",
        subgroup = "vgal-rocket-parts",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
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
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "engine-unit"}
            },
            {
                {type = "item", name = "tungsten-plate"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-engine-unit-assembling-machine-1",
        ingredients = {
            {type = "item", name = "engine-unit", amount = 2},
            {type = "item", name = "steel-plate", amount = 1}
        },
        results = {
            {type = "item", name = "assembling-machine-1", amount = 1}
        },
        energy_required = 1,
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "assembling-machine-1"}
            },
            {
                {type = "item", name = "engine-unit"}
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-jelly-advanced-circuit",
        ingredients = {
            {type = "item", name = "copper-cable", amount = 6},
            {type = "item", name = "jelly", amount = 2},
            {type = "item", name = "electronic-circuit", amount = 3}
        },
        results = {
            {type = "item", name = "advanced-circuit", amount = 2}
        },
        energy_required = 10,
        category = "organic",
        subgroup = "vgal-circuits-t2",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "advanced-circuit"}
            },
            {
                {type = "capsule", name = "jelly"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-carbon-lubricant",
        ingredients = {
            {type = "item", name = "carbon", amount = 4},
            {type = "fluid", name = "water", amount = 30}
        },
        results = {
            {type = "fluid", name = "lubricant", amount = 10}
        },
        energy_required = 2,
        category = "chemistry-or-cryogenics",
        subgroup = "fluid-recipes",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
        icons = icons.recipe_icon(
            {
                {type = "fluid", name = "lubricant"}
            },
            {
                {type = "item", name = "carbon"}
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-organic-rocket-part",
        ingredients = {
            {type = "item", name = "jelly", amount = 10},
            {type = "item", name = "nutrients", amount = 20},
            {type = "item", name = "bioflux", amount = 2}
        },
        results = {
            {type = "item", name = "rocket-part", amount = 1}
        },
        energy_required = 0.5,
        category = "organic",
        subgroup = "vgal-rocket-parts",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "rocket-part"}
            },
            {
                {type = "capsule", name = "jelly"},
                {type = "capsule", name = "bioflux"}
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-uranium-space-science-pack",
        ingredients = {
            {type = "item", name = "uranium-235", amount = 1},
            {type = "item", name = "ice", amount = 30},
            {type = "item", name = "carbon", amount = 30},
            {type = "item", name = "iron-plate", amount = 60}
        },
        results = {
            {type = "item", name = "space-science-pack", amount = 200}
        },
        energy_required = 120,
        category = "centrifuging",
        subgroup = "vgal-space-science-pack",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
        icons = icons.recipe_icon(
            {
                {type = "tool", name = "space-science-pack"}
            },
            {
                {type = "item", name = "uranium-235"},
                "none"
            }
        ),
        surface_conditions = {
            {property = "gravity", min = 0, max = 0}
        }
    },
    {
        type = "recipe",
        name = "vgal-lithium-plate-electronic-circuit",
        ingredients = {
            {type = "item", name = "lithium-plate", amount = 4},
            {type = "item", name = "copper-cable", amount = 12}
        },
        results = {
            {type = "item", name = "electronic-circuit", amount = 8}
        },
        energy_required = 6,
        category = "electronics",
        subgroup = "vgal-circuits-t1",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "electronic-circuit"}
            },
            {
                {type = "item", name = "lithium-plate"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-holmium-plate-heat-pipe",
        ingredients = {
            {type = "item", name = "holmium-plate", amount = 4},
            {type = "fluid", name = "molten-copper", amount = 180},
            {type = "fluid", name = "molten-iron", amount = 100}
        },
        results = {
            {type = "item", name = "heat-pipe", amount = 1}
        },
        energy_required = 120,
        category = "metallurgy",
        subgroup = "vgal-nuclear-energy",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "heat-pipe"}
            },
            {
                {type = "item", name = "holmium-plate"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-pentapod-egg-promethium-science-pack",
        ingredients = {
            {type = "item", name = "processing-unit", amount = 10},
            {type = "item", name = "pentapod-egg", amount = 5},
            {type = "item", name = "promethium-asteroid-chunk", amount = 20}
        },
        results = {
            {type = "item", name = "promethium-science-pack", amount = 50}
        },
        energy_required = 1,
        category = "cryogenics",
        subgroup = "vgal-endgame-science-pack",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
        icons = icons.recipe_icon(
            {
                {type = "tool", name = "promethium-science-pack"}
            },
            {
                {type = "item", name = "pentapod-egg"},
                "none"
            }
        ),
        surface_conditions = {
            {property = "gravity", min = 0, max = 0}
        }
    },
    {
        type = "recipe",
        name = "vgal-advanced-space-science-pack",
        ingredients = {
            {type = "fluid", name = "water", amount = 80},
            {type = "item", name = "coal", amount = 1},
            {type = "item", name = "sulfur", amount = 1},
            {type = "item", name = "steel-plate", amount = 2}
        },
        results = {
            {type = "item", name = "space-science-pack", amount = 40}
        },
        energy_required = 120,
        category = "crafting-with-fluid",
        subgroup = "vgal-space-science-pack",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
        icons = icons.recipe_icon(
            {
                {type = "tool", name = "space-science-pack"}
            },
            {
                {type = "fluid", name = "water"},
                {type = "item", name = "sulfur"},
                {type = "item", name = "steel-plate"}
            }
        ),
        surface_conditions = {
            {property = "gravity", min = 0, max = 0}
        }
    },
    {
        type = "recipe",
        name = "vgal-lithium-plate-space-platform-foundation",
        ingredients = {
            {type = "item", name = "lithium-plate", amount = 2},
            {type = "fluid", name = "molten-copper", amount = 50},
            {type = "fluid", name = "molten-iron", amount = 250}
        },
        results = {
            {type = "item", name = "space-platform-foundation", amount = 1}
        },
        energy_required = 120,
        category = "metallurgy",
        subgroup = "space-platform",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "space-platform-foundation"}
            },
            {
                {type = "item", name = "lithium-plate"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-lightning-collector-electromagnetic-science-pack",
        ingredients = {
            {type = "item", name = "lightning-collector", amount = 1},
            {type = "item", name = "superconductor", amount = 2},
            {type = "fluid", name = "holmium-solution", amount = 20}
        },
        results = {
            {type = "item", name = "electromagnetic-science-pack", amount = 12}
        },
        energy_required = 100,
        category = "electromagnetics",
        subgroup = "vgal-planetary-science-pack",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
        icons = icons.recipe_icon(
            {
                {type = "tool", name = "electromagnetic-science-pack"}
            },
            {
                {type = "item", name = "lightning-collector"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-holmium-plate-advanced-circuit",
        ingredients = {
            {type = "item", name = "holmium-plate", amount = 2},
            {type = "item", name = "superconductor", amount = 1},
            {type = "item", name = "copper-cable", amount = 40},
            {type = "fluid", name = "sulfuric-acid", amount = 60}
        },
        results = {
            {type = "item", name = "advanced-circuit", amount = 20}
        },
        energy_required = 100,
        category = "electromagnetics",
        subgroup = "vgal-circuits-t2",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "advanced-circuit"}
            },
            {
                {type = "item", name = "holmium-plate"},
                {type = "item", name = "superconductor"}
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-simple-quantum-processor",
        ingredients = {
            {type = "item", name = "superconductor", amount = 1},
            {type = "item", name = "tungsten-carbide", amount = 1},
            {type = "item", name = "lithium-plate", amount = 2},
            {type = "item", name = "carbon-fiber", amount = 1},
            {type = "item", name = "electronic-circuit", amount = 30},
            {type = "item", name = "plastic-bar", amount = 5},
            {type = "fluid", name = "sulfuric-acid", amount = 5},
            {type = "fluid", name = "fluoroketone-cold", amount = 10}
        },
        results = {
            {type = "item", name = "quantum-processor", amount = 1},
            {type = "fluid", name = "fluoroketone-hot", amount = 2, ignored_by_productivity = 2}
        },
        energy_required = 40,
        category = "electromagnetics",
        subgroup = "vgal-circuits-t4",
        main_product = "quantum-processor",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "quantum-processor"}
            },
            {
                {type = "item", name = "electronic-circuit"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-tungsten-plate-quantum-processor",
        ingredients = {
            {type = "item", name = "superconductor", amount = 1},
            {type = "item", name = "tungsten-plate", amount = 1},
            {type = "item", name = "lithium-plate", amount = 2},
            {type = "item", name = "carbon-fiber", amount = 1},
            {type = "fluid", name = "fluoroketone-cold", amount = 15}
        },
        results = {
            {type = "item", name = "quantum-processor", amount = 2},
            {type = "fluid", name = "fluoroketone-hot", amount = 7.5, ignored_by_productivity = 7.5}
        },
        energy_required = 40,
        category = "electromagnetics",
        subgroup = "vgal-circuits-t4",
        main_product = "quantum-processor",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "quantum-processor"}
            },
            {
                {type = "item", name = "tungsten-plate"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-lithium-plate-holmium-plate",
        ingredients = {
            {type = "fluid", name = "holmium-solution", amount = 20},
            {type = "item", name = "lithium-plate", amount = 2}
        },
        results = {
            {type = "item", name = "holmium-plate", amount = 5},
            {type = "fluid", name = "lithium-brine", amount = 4, ignored_by_productivity = 4}
        },
        energy_required = 40,
        category = "cryogenics",
        subgroup = "vgal-smelting",
        main_product = "holmium-plate",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "holmium-plate"}
            },
            {
                {type = "item", name = "lithium-plate"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-liquid-fuel-rocket-part",
        ingredients = {
            {type = "fluid", name = "thruster-fuel", amount = 5000},
            {type = "fluid", name = "thruster-oxidizer", amount = 5000},
            {type = "fluid", name = "fluoroketone-cold", amount = 200},
            {type = "item", name = "low-density-structure", amount = 20},
            {type = "item", name = "processing-unit", amount = 20}
        },
        results = {
            {type = "item", name = "rocket-part", amount = 50},
            {type = "fluid", name = "fluoroketone-hot", amount = 200, ignored_by_productivity = 200}
        },
        energy_required = 10,
        category = "cryogenics",
        subgroup = "vgal-rocket-parts",
        main_product = "rocket-part",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "rocket-part"}
            },
            {
                {type = "fluid", name = "thruster-fuel"},
                {type = "fluid", name = "thruster-oxidizer"}
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-liquid-fuel-lithium-plate-rocket-part",
        ingredients = {
            {type = "fluid", name = "thruster-fuel", amount = 5000},
            {type = "fluid", name = "thruster-oxidizer", amount = 5000},
            {type = "fluid", name = "fluoroketone-cold", amount = 200},
            {type = "item", name = "lithium-plate", amount = 20},
            {type = "item", name = "advanced-circuit", amount = 40}
        },
        results = {
            {type = "item", name = "rocket-part", amount = 150},
            {type = "fluid", name = "fluoroketone-hot", amount = 200, ignored_by_productivity = 200}
        },
        energy_required = 10,
        category = "cryogenics",
        subgroup = "vgal-rocket-parts",
        main_product = "rocket-part",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "rocket-part"}
            },
            {
                {type = "fluid", name = "thruster-fuel"},
                {type = "item", name = "lithium-plate"},
                {type = "fluid", name = "thruster-oxidizer"}
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-quantum-cryogenic-science-pack",
        ingredients = {
            {type = "fluid", name = "fluoroketone-cold", amount = 200},
            {type = "item", name = "quantum-processor", amount = 1},
            {type = "item", name = "ice", amount = 200}
        },
        results = {
            {type = "item", name = "cryogenic-science-pack", amount = 100},
            {type = "fluid", name = "fluoroketone-hot", amount = 200, ignored_by_productivity = 200}
        },
        energy_required = 1200,
        category = "cryogenics",
        subgroup = "vgal-endgame-science-pack",
        main_product = "cryogenic-science-pack",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
        icons = icons.recipe_icon(
            {
                {type = "tool", name = "cryogenic-science-pack"}
            },
            {
                {type = "item", name = "quantum-processor"},
                "none"
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-organic-processing-unit",
        ingredients = {
            {type = "item", name = "electronic-circuit", amount = 15},
            {type = "item", name = "jelly", amount = 5},
            {type = "item", name = "bioflux", amount = 1},
            {type = "fluid", name = "ammonia", amount = 10},
            {type = "fluid", name = "sulfuric-acid", amount = 2.5}
        },
        results = {
            {type = "item", name = "processing-unit", amount = 1}
        },
        energy_required = 5,
        category = "organic",
        subgroup = "vgal-circuits-t3",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "processing-unit"}
            },
            {
                {type = "capsule", name = "jelly"},
                {type = "capsule", name = "bioflux"}
            }
        )
    },
    {
        type = "recipe",
        name = "vgal-holmium-plate-barrel",
        ingredients = {
            {type = "item", name = "holmium-plate", amount = 1},
            {type = "item", name = "iron-plate", amount = 20}
        },
        results = {
            {type = "item", name = "barrel", amount = 40}
        },
        energy_required = 5,
        category = "pressing",
        subgroup = "vgal-barrels",
        enabled = false,
        allow_as_intermediate = false,
        auto_recycle = false,
        allow_productivity = true,
        icons = icons.recipe_icon(
            {
                {type = "item", name = "barrel"}
            },
            {
                {type = "item", name = "holmium-plate"},
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
add_recipe("quantum-processor", "vgal-quantum-quality-module-3") -- recipe #10
add_recipe("steel-processing", "vgal-steel-cable")
add_recipe("quantum-processor", "vgal-quantum-processing-unit")
add_recipe("foundry", "vgal-casting-battery")
add_recipe("captive-biter-spawner", "vgal-synthetic-bioflux")
add_recipe("lithium-processing", "vgal-lithium-supercapacitor")
add_recipe("fusion-reactor", "vgal-fusion-rocket-part")
add_recipe("cryogenic-plant", "vgal-catalyst-lithium")
add_recipe("lithium-processing", "vgal-lithium-plate-rocket-part")
add_recipe("fusion-reactor", "vgal-lithium-plate-fusion-rocket-part")
add_recipe("tungsten-steel", "vgal-tungsten-plate-engine-unit") -- recipe #20
add_recipe("engine", "vgal-engine-unit-assembling-machine-1")
add_recipe("biochamber", "vgal-jelly-advanced-circuit") -- everything after this has no locale
add_recipe("space-platform", "vgal-carbon-lubricant")
add_recipe("bioflux", "vgal-organic-rocket-part")
add_recipe("kovarex-enrichment-process", "vgal-uranium-space-science-pack")
add_recipe("lithium-processing", "vgal-lithium-plate-electronic-circuit")
add_recipe("lithium-processing", "vgal-holmium-plate-heat-pipe")
add_recipe("promethium-science-pack", "vgal-pentapod-egg-promethium-science-pack")
add_recipe("advanced-asteroid-processing", "vgal-advanced-space-science-pack")
add_recipe("lithium-processing", "vgal-lithium-plate-space-platform-foundation") -- recipe #30
add_recipe("lightning-collector", "vgal-lightning-collector-electromagnetic-science-pack")
add_recipe("holmium-processing", "vgal-holmium-plate-advanced-circuit")
add_recipe("quantum-processor", "vgal-simple-quantum-processor")
add_recipe("quantum-processor", "vgal-tungsten-plate-quantum-processor")
add_recipe("lithium-processing", "vgal-lithium-plate-holmium-plate")
add_recipe("cryogenic-plant", "vgal-liquid-fuel-rocket-part")
add_recipe("cryogenic-plant", "vgal-liquid-fuel-lithium-plate-rocket-part")
add_recipe("quantum-processor", "vgal-quantum-cryogenic-science-pack")
add_recipe("bioflux", "vgal-organic-processing-unit")
add_recipe("holmium-processing", "vgal-holmium-plate-barrel") -- recipe #40

add_prod("processing-unit-productivity", "vgal-quantum-processing-unit")
add_prod("processing-unit-productivity", "vgal-organic-processing-unit")
add_prod("rocket-part-productivity", "vgal-fusion-rocket-part")
add_prod("rocket-part-productivity", "vgal-lithium-plate-rocket-part")
add_prod("rocket-part-productivity", "vgal-lithium-plate-fusion-rocket-part")
add_prod("rocket-part-productivity", "vgal-organic-rocket-part")
add_prod("rocket-part-productivity", "vgal-liquid-fuel-rocket-part")
add_prod("rocket-part-productivity", "vgal-liquid-fuel-lithium-plate-rocket-part")

data.raw["recipe"]["rocket-part"].category = "advanced-crafting"
data.raw["recipe"]["vgal-engine-unit-rocket-part"].category = "advanced-crafting"
data.raw["recipe"]["vgal-uranium-fuel-cell-rocket-part"].category = "advanced-crafting"
data.raw["rocket-silo"]["rocket-silo"].fixed_recipe = "rocket-building"
data.raw["item"]["rocket-part"].stack_size = 200

data:extend{
    {
        type = "recipe",
        name = "rocket-building",
        ingredients = {
            {type = "item", name = "rocket-part", amount = 1}
        },
        results = {
            {type = "item", name = "rocket-part", amount = 1}
        },
        energy_required = 3,
        category = "rocket-building",
        hidden = true,
        hidden_in_factoriopedia = true
    }
}