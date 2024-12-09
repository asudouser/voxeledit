require "utils"

function replace(args, kwargs)
    local block_id_from = args[1]
    local block_id_to = args[2]

    local minX, maxX = math.min(pos1[1], pos2[1]), math.max(pos1[1], pos2[1])
    local minY, maxY = math.min(pos1[2], pos2[2]), math.max(pos1[2], pos2[2])
    local minZ, maxZ = math.min(pos1[3], pos2[3]), math.max(pos1[3], pos2[3])
    local current_block = nil

    for x = minX, maxX do
        for y = minY, maxY do
            for z = minZ, maxZ do
                current_block = block.get(x, y, z)

                if (current_block == block_id_from) then
                    block.set(x, y, z, block_id_to)
                end
            end
        end
    end

    return string.format("%d blocks affected", get_area_size(pos1, pos1))
end
