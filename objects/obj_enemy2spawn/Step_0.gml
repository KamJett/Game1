/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 6B47A44C
/// @DnDArgument : "xscale" "0.03"
/// @DnDArgument : "yscale" "0.03"
image_xscale = 0.03;
image_yscale = 0.03;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C49E9DB
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(image_xscale >= 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 2D20CDC4
	/// @DnDParent : 5C49E9DB
	image_xscale = 1;
	image_yscale = 1;

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 635DC351
	/// @DnDParent : 5C49E9DB
	/// @DnDArgument : "objind" "obj_enemy2"
	/// @DnDSaveInfo : "objind" "3d78d74a-f5f1-4fc4-b770-d3dfe6801215"
	instance_change(obj_enemy2, true);
}