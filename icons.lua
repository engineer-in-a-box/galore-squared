local T = {}

function T.recipe_icon(results, ingredients, overlay)
    local icons = {}
    if results and #results > 3 then
        error("`results` argument must have 3 or fewer elements")
    end
    if ingredients and #ingredients > 3 then
        error("`ingredients` argument must have 3 or fewer elements")
    end
    if overlay == nil then
        -- no overlay
        -- results
        if #results == 1 then
            ingredient = data.raw[results[1].type][results[1].name]
            if ingredient then
                table.insert(icons, {icon = ingredient.icon, icon_size = ingredient.icon_size, shift = {0, 0}, scale = 1})
            else
                error(results[1].type .. " " .. results[1].name .. " does not exist")
            end
        elseif #results == 2 then
            ingredient = data.raw[results[1].type][results[1].name]
            if ingredient then
                table.insert(icons, {icon = ingredient.icon, icon_size = ingredient.icon_size, shift = {-8, 12}})
            else
                error(results[1].type .. " " .. results[1].name .. " does not exist")
            end
            ingredient = data.raw[results[2].type][results[2].name]
            if ingredient then
                table.insert(icons, {icon = ingredient.icon, icon_size = ingredient.icon_size, shift = {8, 12}})
            else
                error(results[2].type .. " " .. results[2].name .. " does not exist")
            end
        elseif #results == 3 then
            ingredient = data.raw[results[1].type][results[1].name]
            if ingredient then
                table.insert(icons, {icon = ingredient.icon, icon_size = ingredient.icon_size, shift = {-16, 12}})
            else
                error(results[1].type .. " " .. results[1].name .. " does not exist")
            end
            ingredient = data.raw[results[2].type][results[2].name]
            if ingredient then
                table.insert(icons, {icon = ingredient.icon, icon_size = ingredient.icon_size, shift = {0, 12}})
            else
                error(results[2].type .. " " .. results[2].name .. " does not exist")
            end
            ingredient = data.raw[results[3].type][results[3].name]
            if ingredient then
                table.insert(icons, {icon = ingredient.icon, icon_size = ingredient.icon_size, shift = {16, 12}})
            else
                error(results[3].type .. " " .. results[3].name .. " does not exist")
            end
        end
        -- ingredients
        if #ingredients == 1 then
            if ingredients[1] ~= "none" then
                ingredient = data.raw[ingredients[1].type][ingredients[1].name]
                if ingredient then
                    table.insert(icons, {icon = ingredient.icon, icon_size = ingredient.icon_size, shift = {0, -12}})
                else
                    error(ingredients[1].type .. " " .. ingredients[1].name .. " does not exist")
                end
            end
        elseif #ingredients == 2 then
            if ingredients[1] ~= "none" then
                ingredient = data.raw[ingredients[1].type][ingredients[1].name]
                if ingredient then
                    table.insert(icons, {icon = ingredient.icon, icon_size = ingredient.icon_size, shift = {-16, -16}})
                else
                    error(ingredients[1].type .. " " .. ingredients[1].name .. " does not exist")
                end
            end
            if ingredients[2] ~= "none" then
                ingredient = data.raw[ingredients[2].type][ingredients[2].name]
                if ingredient then
                    table.insert(icons, {icon = ingredient.icon, icon_size = ingredient.icon_size, shift = {16, -16}})
                else
                    error(ingredients[2].type .. " " .. ingredients[2].name .. " does not exist")
                end
            end
        elseif #ingredients == 3 then
            if ingredients[1] ~= "none" then
                ingredient = data.raw[ingredients[1].type][ingredients[1].name]
                if ingredient then
                    table.insert(icons, {icon = ingredient.icon, icon_size = ingredient.icon_size, shift = {-16, -12}})
                else
                    error(ingredients[1].type .. " " .. ingredients[1].name .. " does not exist")
                end
            end
            if ingredients[2] ~= "none" then
                ingredient = data.raw[ingredients[2].type][ingredients[2].name]
                if ingredient then
                    table.insert(icons, {icon = ingredient.icon, icon_size = ingredient.icon_size, shift = {0, -12}})
                else
                    error(ingredients[2].type .. " " .. ingredients[2].name .. " does not exist")
                end
            end
            if ingredients[3] ~= "none" then
                ingredient = data.raw[ingredients[3].type][ingredients[3].name]
                if ingredient then
                    table.insert(icons, {icon = ingredient.icon, icon_size = ingredient.icon_size, shift = {16, -12}})
                else
                    error(ingredients[3].type .. " " .. ingredients[3].name .. " does not exist")
                end
            end
        end
    elseif overlay == "casting-copper"
    or overlay == "casting-iron"
    or overlay == "casting-iron-copper" then
        --casting overlay
        if ingredients and #ingredients ~= 0 then
            error("`ingredients` argument must be empty when `overlay` is \"" .. overlay .. "\"")
        end
        if results == nil or #results ~= 1 then
            error("`results` argument must have 1 element when `overlay` is \"" .. overlay .. "\"")
        end
        if results[1].type == "item" or results[1].type == "fluid" then
            ingredient = data.raw[results[1].type][results[1].name]
            if ingredient then
                table.insert(icons, {icon = ingredient.icon, icon_size = ingredient.icon_size, shift = {0, 0}})
            else
                error(results[1].type .. " " .. results[1].name .. " does not exist")
            end
        else
            error("type must be `item` or `fluid`")
        end
        table.insert(icons, {icon = "__galore_lib__/graphics/overlays/" .. overlay .. "-overlay.png", icon_size = 64})
    elseif overlay == "crushing"
    or overlay == "reprocessing" then
        --crushing overlay
        if ingredients == nil or #ingredients ~= 1 then
            error("`ingredients` argument must have 1 element when `overlay` is \"" .. overlay .. "\"")
        end
        if results and #results ~= 0 then
            error("`results` argument must be empty when `overlay` is \"" .. overlay .. "\"")
        end
        if ingredients[1].type == "item" or ingredients[1].type == "fluid" then
            ingredient = data.raw[ingredients[1].type][ingredients[1].name]
            if ingredient then
                table.insert(icons, {icon = ingredient.icon, icon_size = ingredient.icon_size, shift = {0, 0}})
            else
                error(ingredients[1].type .. " " .. ingredients[1].name .. " does not exist")
            end
        else
            error("type must be `item` or `fluid`")
        end
        table.insert(icons, {icon = "__galore_lib__/graphics/overlays/" .. overlay .. "-overlay.png", icon_size = 64})
    elseif overlay == "to" then
        --to overlay
        if ingredients == nil or #ingredients ~= 1 then
            error("`ingredients` argument must have 1 element when `overlay` is \"" .. overlay .. "\"")
        end
        if results == nil or #results ~= 1 then
            error("`results` argument must have 1 element when `overlay` is \"" .. overlay .. "\"")
        end
        if ingredients[1].type == "item" or ingredients[1].type == "fluid" then
            ingredient = data.raw[ingredients[1].type][ingredients[1].name]
            if ingredient then
                table.insert(icons, {icon = ingredient.icon, icon_size = ingredient.icon_size, shift = {-6.5, -6.5}, scale = 0.38})
            else
                error(ingredients[1].type .. " " .. ingredients[1].name .. " does not exist")
            end
        else
            error("type must be `item` or `fluid`")
        end
        if results[1].type == "item" or results[1].type == "fluid" then
            ingredient = data.raw[results[1].type][results[1].name]
            if ingredient then
                table.insert(icons, {icon = ingredient.icon, icon_size = ingredient.icon_size, shift = {5.5, 6.5}, scale = 0.35})
            else
                error(results[1].type .. " " .. results[1].name .. " does not exist")
            end
        else
            error("type must be `item` or `fluid`")
        end
        table.insert(icons, {icon = "__galore_lib__/graphics/overlays/" .. overlay .. "-overlay.png", icon_size = 64})
    end
    return icons
end

return T