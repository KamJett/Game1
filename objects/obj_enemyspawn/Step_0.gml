/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 501F1139
/// @DnDArgument : "xscale" "0.02"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "0.02"
/// @DnDArgument : "yscale_relative" "1"
image_xscale += 0.02;
image_yscale += 0.02;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 104666F5
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(image_xscale >= 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 5F3BA698
	/// @DnDParent : 104666F5
	image_xscale = 1;
	image_yscale = 1;

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5B9061DB
	/// @DnDParent : 104666F5
	/// @DnDArgument : "objind" "king_enemy"
	/// @DnDSaveInfo : "objind" "c571367b-0f37-4460-b396-e0f6e7dc3489"
	instance_change(king_enemy, true);
}