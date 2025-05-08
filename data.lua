require("prototypes.recipes")

data.raw["item"]["rocket-part"].stack_size = 200

pipe_picture = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes[1].pipe_picture)
data.raw["rocket-silo"]["rocket-silo"].fluid_boxes = {
    {
        pipe_connections = {
            {direction = defines.direction.west, flow_direction = "input-output", position = {-4, -3}},
            {direction = defines.direction.east, flow_direction = "input-output", position = {4, -3}}
        },
        volume = 1000,
        pipe_picture = pipe_picture,
        production_type = "input"
    },
    {
        pipe_connections = {
            {direction = defines.direction.west, flow_direction = "input-output", position = {-4, 0}},
            {direction = defines.direction.east, flow_direction = "input-output", position = {4, 0}}
        },
        volume = 1000,
        pipe_picture = pipe_picture,
        production_type = "input"
    },
    {
        pipe_connections = {
            {direction = defines.direction.west, flow_direction = "input-output", position = {-4, 3}},
            {direction = defines.direction.east, flow_direction = "input-output", position = {4, 3}}
        },
        volume = 1000,
        pipe_picture = pipe_picture,
        production_type = "input"
    }
}
data.raw["rocket-silo"]["rocket-silo"].fluid_boxes_off_when_no_fluid_recipe = true