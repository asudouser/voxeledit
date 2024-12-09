require "utils"

function cyl(args, kwargs)
    local block_id = args[1] 
    local radius = args[2]
    local height = args[3] - 1
    local pos = get_player_pos()

    for y = pos[2], pos[2] + height do
        for x = -radius, radius do
            for z = -radius, radius do
                if x * x + z * z <= radius * radius then
                    block.set(pos[1] + x, y, pos[3] + z, block_id, 0)

                    return string.format("%d blocks affected", get_area_size(pos1, pos1))
                end
            end
        end
    end
end
