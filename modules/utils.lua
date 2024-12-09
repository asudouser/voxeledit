function get_player_pos()
    local x, y, z = player.get_pos()
    x, y, z = math.floor(x), math.floor(y), math.floor(z)

    return {x, y, z}
end

function get_int_id(args, kwargs)
    return block.index(unpack(args))
end

function get_area_size()
    local x_min = math.min(pos1[1], pos2[1])
    local x_max = math.max(pos1[1], pos2[1])

    local y_min = math.min(pos1[2], pos2[2])
    local y_max = math.max(pos1[2], pos2[2])

    local z_min = math.min(pos1[3], pos2[3])
    local z_max = math.max(pos1[3], pos2[3])

    local size_x = x_max - x_min + 1
    local size_y = y_max - y_min + 1
    local size_z = z_max - z_min + 1

    return size_x * size_y * size_z
end

blocks_history = {}

function get_selected_block(args, kwargs)
    local pid = hud.get_player();
    local block = {player.get_selected_block(pid)}

    debug.print(block) 
end
