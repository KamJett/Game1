/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3E0D1C3F
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "obj_enemyspawn"
/// @DnDArgument : "layer" ""enemy_layer""
/// @DnDSaveInfo : "objectid" "af9a4ab6-e7ef-47a6-82af-d8d557fd6f60"
instance_create_layer(random(room_width), random(room_height), "enemy_layer", obj_enemyspawn);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7CEB95F0
/// @DnDArgument : "steps" "spawnrate"
alarm_set(0, spawnrate);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 50F71C62
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "obj_enemy2spawn"
/// @DnDArgument : "layer" ""enemy_layer""
/// @DnDSaveInfo : "objectid" "5c78acbf-9e74-4e15-afcf-ab5ec04830ba"
instance_create_layer(random(room_width), random(room_height), "enemy_layer", obj_enemy2spawn);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6C953DC8
/// @DnDArgument : "steps" "spawnrate"
alarm_set(0, spawnrate);