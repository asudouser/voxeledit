blocks_history = {}
local blockObject = nil

function save_area(args, kwargs)
    -- if pos1 and pos2 then
    --     local minX, maxX = math.min(pos1[1], pos2[1]), math.max(pos1[1], pos2[1])
    --     local minY, maxY = math.min(pos1[2], pos2[2]), math.max(pos1[2], pos2[2])
    --     local minZ, maxZ = math.min(pos1[3], pos2[3]), math.max(pos1[3], pos2[3])
    
    --     for x = minX, maxX do
    --         for y = minY, maxY do
    --             for z = minZ, maxZ do
    --                 blockObject = block.get(x, y, z)

    --                 table.insert(blocks_history, {x, y, z, block})
    --             end
    --         end
    --     end

    --     local result = {}
    --     for _, blockIterable in ipairs(blocks_history) do
    --         table.insert(result, string.format("Block at: (%d, %d, %d) (%s)", blockIterable[1], blockIterable[2], blockIterable[3], blockIterable[4]))
    --     end
    
    --     for _, line in ipairs(result) do
    --         console.log(line)
    --     end

    -- end
    console.log("да")
    console.log(hud.get_player())
end
