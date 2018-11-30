/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 02110DAF
/// @DnDArgument : "obj" "player"
/// @DnDSaveInfo : "obj" "0ec73480-ca6b-4a2e-bb32-400416a8a5af"
var l02110DAF_0 = false;
l02110DAF_0 = instance_exists(player);
if(l02110DAF_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1EA0E4C0
	/// @DnDParent : 02110DAF
	/// @DnDArgument : "x" "player.x"
	/// @DnDArgument : "y" "player.y"
	direction = point_direction(x, y, player.x, player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1F0ACA8C
	/// @DnDParent : 02110DAF
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 538F91CF
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A0FAEAB
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 660CE64F
	/// @DnDApplyTo : 5417116c-9338-4119-a0a7-a0e8c1752ba2
	/// @DnDParent : 4A0FAEAB
	/// @DnDArgument : "expr" "10"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "thescore"
	with(obj_score) {
	thescore += 10;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 5F3E9A37
	/// @DnDParent : 4A0FAEAB
	/// @DnDArgument : "sound" "snd_death"
	/// @DnDArgument : "pitch" "0.5"
	/// @DnDSaveInfo : "sound" "21f269ae-d833-4a3f-b7b3-edde014d5862"
	audio_sound_pitch(snd_death, 0.5);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 4109E8C1
	/// @DnDParent : 4A0FAEAB
	/// @DnDArgument : "soundid" "snd_death"
	/// @DnDSaveInfo : "soundid" "21f269ae-d833-4a3f-b7b3-edde014d5862"
	audio_play_sound(snd_death, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 681B6D68
	/// @DnDParent : 4A0FAEAB
	instance_destroy();
}