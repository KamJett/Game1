/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6C7E7DBB
/// @DnDArgument : "expr" "60"
/// @DnDArgument : "var" "spawnrate"
spawnrate = 60;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 09E2C0A8
/// @DnDArgument : "steps" "spawnrate"
alarm_set(0, spawnrate);