/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 756C866D
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 39AB9485
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 4C21C37E
var l4C21C37E_0;
l4C21C37E_0 = mouse_check_button(mb_left);
if (l4C21C37E_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53EB503E
	/// @DnDParent : 4C21C37E
	/// @DnDArgument : "var" "colddown"
	/// @DnDArgument : "op" "3"
	if(colddown <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1A621AC1
		/// @DnDParent : 53EB503E
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "king_bullet"
		/// @DnDArgument : "layer" ""bullet_layer""
		/// @DnDSaveInfo : "objectid" "755bf8e1-50c8-408f-85f4-d00de29e05a1"
		instance_create_layer(x, y, "bullet_layer", king_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1A6DCA40
		/// @DnDParent : 53EB503E
		/// @DnDArgument : "expr" "10"
		/// @DnDArgument : "var" "colddown"
		colddown = 10;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6962E28B
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "colddown"
colddown += -1;