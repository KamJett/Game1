/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 3348F7BF
/// @DnDArgument : "obj" "player"
/// @DnDSaveInfo : "obj" "0ec73480-ca6b-4a2e-bb32-400416a8a5af"
var l3348F7BF_0 = false;
l3348F7BF_0 = instance_exists(player);
if(l3348F7BF_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 370F96DC
	/// @DnDParent : 3348F7BF
	/// @DnDArgument : "x" "player.x"
	/// @DnDArgument : "y" "player.y"
	direction = point_direction(x, y, player.x, player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6C7A64CA
	/// @DnDParent : 3348F7BF
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 104A62A1
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C0656B8
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 49702A30
	/// @DnDApplyTo : 5417116c-9338-4119-a0a7-a0e8c1752ba2
	/// @DnDParent : 5C0656B8
	/// @DnDArgument : "expr" "15"
	/// @DnDArgument : "var" "thescore"
	with(obj_score) {
	thescore = 15;
	
	}

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 66A67C9D
	/// @DnDParent : 5C0656B8
	/// @DnDArgument : "sound" "snd_death"
	/// @DnDArgument : "pitch" "0.5"
	/// @DnDSaveInfo : "sound" "21f269ae-d833-4a3f-b7b3-edde014d5862"
	audio_sound_pitch(snd_death, 0.5);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 1A6B1D62
	/// @DnDParent : 5C0656B8
	/// @DnDArgument : "soundid" "snd_death"
	/// @DnDSaveInfo : "soundid" "21f269ae-d833-4a3f-b7b3-edde014d5862"
	audio_play_sound(snd_death, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 74837AA5
	/// @DnDParent : 5C0656B8
	instance_destroy();
}