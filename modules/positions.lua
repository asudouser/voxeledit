require "utils"

function set_pos1(args, kwargs)
    pos1 = get_player_pos()
    x = pos1[1]
    y = pos1[2]
    z = pos1[3]

    console.log(string.format("First position set at: X: %d, Y: %d, Z: %d", x, y, z))
end

function get_pos1(args, kwargs)
    if pos1 then
        local x, y, z = pos1[1], pos1[2], pos1[3]
        console.log(string.format("First position: X: %d, Y: %d, Z: %d", x, y, z))
    else
        console.log("First position is not set!")
    end
end

function set_pos2(args, kwargs)
    if pos1 == nil then
        console.log("First position is not set!")
    else
        pos2 = get_player_pos()
        
        x = pos1[1]
        y = pos1[2]
        z = pos1[3]
    
        console.log(string.format("Second position set at: X: %d, Y: %d, Z: %d (%d blocks)", x, y, z, get_area_size(pos1, pos2)))
    end
end

function get_pos2(args, kwargs)
    if pos2 then
        local x, y, z = pos2[1], pos2[2], pos2[3]
        console.log(string.format("Second position: X: %d, Y: %d, Z: %d", x, y, z))
    else
        console.log("Second position is not set!")
    end
end

function selection(args, kwargs)
    if pos1 and pos2 then
        console.log("--- Selection info ---")

        local x, y, z = pos1[1], pos1[2], pos1[3]
        console.log(string.format("First position: X: %.2f, Y: %.2f, Z: %.2f", x, y, z))

        x, y, z = pos2[1], pos2[2], pos2[3]
        console.log(string.format("Second position: X: %.2f, Y: %.2f, Z: %.2f", x, y, z))

        local area_blocks = get_area_size(pos1, pos2)

        if area_blocks > 700 then
            console.log("The content pack is in early alpha. Selecting more than 700 blocks may cause the game to freeze or result in world corruption. It is strongly recommended to create a backup of your world.")
        end

        console.log(string.format("Area size: %d", area_blocks))
    else
        console.log("Selection is not full!")
    end
end