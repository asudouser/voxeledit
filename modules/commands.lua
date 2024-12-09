require "positions"
require "replace"
require "set"
require "utils"
require "cyl"
require "undo"

pos1 = nil
pos2 = nil

function register()
    console.add_command("ve.pos1", "Set first position for VoxelEdit.", set_pos1)
    console.add_command("ve.pos2", "Set second position for VoxelEdit.", set_pos2)

    console.add_command("ve.getpos1", "Get first position in VoxelEdit.", get_pos1)
    console.add_command("ve.getpos2", "Get second position in VoxelEdit.", get_pos2)

    console.add_command("ve.sel", "Get info about selection in VoxelEdit.", selection)

    console.add_command("ve.replace block_id_from:int=0 block_id_to:int", "Replace blocks in the area with VoxelEdit.", replace)
    console.add_command("ve.set block_id:int=0 is_hollow:int=0 block_state:int=0", "Fill the area with blocks with VoxelEdit.", set)
    console.add_command("ve.cyl block_id:str radius:int height:int=1", "Create an cylinder with set radius and height with VoxelEdit", cyl)

    console.add_command("ve.id block_id:str", "Get block integer id by it string id.", get_int_id)

    console.add_command("ve.save_area", "", save_area)
end
