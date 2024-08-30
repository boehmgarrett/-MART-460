/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 72A2714D
variable = 0;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 745760F2
/// @DnDArgument : "key" "vk_up"
var l745760F2_0;
l745760F2_0 = keyboard_check(vk_up);
if (l745760F2_0)
{
	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 55B29DD2
	/// @DnDParent : 745760F2
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" "0.1"
	motion_add(image_angle, 0.1);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 078BF731
/// @DnDArgument : "key" "vk_right"
var l078BF731_0;
l078BF731_0 = keyboard_check(vk_right);
if (l078BF731_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0148F5EF
	/// @DnDParent : 078BF731
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += 4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4680FFC7
/// @DnDArgument : "key" "vk_left"
var l4680FFC7_0;
l4680FFC7_0 = keyboard_check(vk_left);
if (l4680FFC7_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B6B15E8
	/// @DnDParent : 4680FFC7
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += -4;
}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 6B3E7862
move_wrap(1, 1, 0);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 220A9989
var l220A9989_0;
l220A9989_0 = mouse_check_button_pressed(mb_left);
if (l220A9989_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7E026F51
	/// @DnDParent : 220A9989
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Bullet"
	/// @DnDSaveInfo : "objectid" "Bullet"
	instance_create_layer(x + 0, y + 0, "Instances", Bullet);
}