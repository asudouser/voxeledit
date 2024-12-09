require "utils"

function set(args, kwargs)
    local block_id = args[1]
    local block_state = args[3]
    local is_hollow = args[2]

    local minX, maxX = math.min(pos1[1], pos2[1]), math.max(pos1[1], pos2[1])
    local minY, maxY = math.min(pos1[2], pos2[2]), math.max(pos1[2], pos2[2])
    local minZ, maxZ = math.min(pos1[3], pos2[3]), math.max(pos1[3], pos2[3])

    for x = minX, maxX do
        for y = minY, maxY do
            for z = minZ, maxZ do
                if is_hollow == 1 then
                    if x == minX or x == maxX or y == minY or y == maxY or z == minZ or z == maxZ then
                        block.set(x, y, z, block_id, block_state)
                    end
                else
                    block.set(x, y, z, block_id, block_state)
                end
            end
        end
    end

    return string.format("%d blocks affected", get_area_size(pos1, pos2))
end
