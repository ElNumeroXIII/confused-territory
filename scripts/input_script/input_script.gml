/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0DC2D741
/// @DnDComment : // Los recursos de Script han cambiado para la v2.3.0 Consulta$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
/// @DnDArgument : "funcName" "input_script"
function input_script() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A9D3331
	/// @DnDParent : 0DC2D741
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "attacking"
	attacking = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 16E94B99
	/// @DnDParent : 0DC2D741
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "jumping"
	jumping = false;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 41022ADD
	/// @DnDParent : 0DC2D741
	/// @DnDArgument : "key" "ord("D")"
	var l41022ADD_0;
	l41022ADD_0 = keyboard_check(ord("D"));
	if (l41022ADD_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 636EB283
		/// @DnDParent : 41022ADD
		/// @DnDArgument : "expr" "default_speed"
		/// @DnDArgument : "var" "horizontal_speed"
		horizontal_speed = default_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 71151FA3
		/// @DnDParent : 41022ADD
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "orientation"
		orientation = 1;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 7641F30C
	/// @DnDParent : 0DC2D741
	/// @DnDArgument : "key" "ord("A")"
	var l7641F30C_0;
	l7641F30C_0 = keyboard_check(ord("A"));
	if (l7641F30C_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6E4C2696
		/// @DnDParent : 7641F30C
		/// @DnDArgument : "expr" "- default_speed"
		/// @DnDArgument : "var" "horizontal_speed"
		horizontal_speed = - default_speed;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 468EDD69
		/// @DnDParent : 7641F30C
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "orientation"
		orientation = -1;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 603FBCCF
	/// @DnDParent : 0DC2D741
	var l603FBCCF_0;
	l603FBCCF_0 = keyboard_check(vk_space);
	if (l603FBCCF_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 25D9AA6F
		/// @DnDParent : 603FBCCF
		/// @DnDArgument : "var" "on_ground"
		/// @DnDArgument : "value" "true"
		if(on_ground == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1D9A3946
			/// @DnDParent : 25D9AA6F
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "jumping"
			jumping = true;
		}
	}
}