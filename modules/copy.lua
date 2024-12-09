require "utils"

local copiedBlocks = {}

function copy(args, kwargs)
    local minX, maxX = math.min(pos1[1], pos2[1]), math.max(pos1[1], pos2[1])
    local minY, maxY = math.min(pos1[2], pos2[2]), math.max(pos1[2], pos2[2])
    local minZ, maxZ = math.min(pos1[3], pos2[3]), math.max(pos1[3], pos2[3])

    for x = minX, maxX do
        for y = minY, maxY do
            for z = minZ, maxZ do
                local block = block.get(x, y, z)
                if block then
                    table.insert(copiedBlocks, {block, x - pos1[1], y - pos1[2], z - pos1[3]})
                end
            end
        end
    end

    return string.format("%d blocks copied", #copiedBlocks)
end

function cut(args, kwargs)
    local minX, maxX = math.min(pos1[1], pos2[1]), math.max(pos1[1], pos2[1])
    local minY, maxY = math.min(pos1[2], pos2[2]), math.max(pos1[2], pos2[2])
    local minZ, maxZ = math.min(pos1[3], pos2[3]), math.max(pos1[3], pos2[3])

    for x = minX, maxX do
        for y = minY, maxY do
            for z = minZ, maxZ do
                local blockObject = block.get(x, y, z)
                if blockObject then
                    block.set(x, y, z, 0)
                    table.insert(copiedBlocks, {blockObject, x - pos1[1], y - pos1[2], z - pos1[3]})
                end
            end
        end
    end

    return string.format("%d blocks cutted", #copiedBlocks)
end


function paste(args, kwargs)
    startPos = get_player_pos()

    for _, blockData in ipairs(copiedBlocks) do
        local blockType, relX, relY, relZ = unpack(blockData)
        local target = {
            x = startPos[1] + relX,
            y = startPos[2] + relY,
            z = startPos[3] + relZ
        }
        block.set(target.x, target.y, target.z, blockType)
    end
    return string.format("%d blocks pasted", #copiedBlocks)
end

