/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6F52D6AE
/// @DnDComment : // Los recursos de Script han cambiado para la v2.3.0 Consulta$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
/// @DnDArgument : "funcName" "collisions_script"
function collisions_script() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 7B405049
	/// @DnDParent : 6F52D6AE
	/// @DnDArgument : "x" "horizontal_speed+1"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_wall"
	/// @DnDSaveInfo : "object" "obj_wall"
	var l7B405049_0 = instance_place(x + horizontal_speed+1, y + 0, obj_wall);
	if ((l7B405049_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A0843A3
		/// @DnDParent : 7B405049
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		var collide = false;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 6A1EE4F0
		/// @DnDParent : 7B405049
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		while ((collide == false)) {
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 67C54BF7
			/// @DnDParent : 6A1EE4F0
			/// @DnDArgument : "x" "sign(horizontal_speed+1)"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "obj_wall"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "obj_wall"
			var l67C54BF7_0 = instance_place(x + sign(horizontal_speed+1), y + 0, obj_wall);
			if (!(l67C54BF7_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6CE7A383
				/// @DnDParent : 67C54BF7
				/// @DnDArgument : "expr" "sign(horizontal_speed)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "x"
				x += sign(horizontal_speed);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 1A65B864
			/// @DnDParent : 6A1EE4F0
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7340CFE3
				/// @DnDParent : 1A65B864
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "collide"
				collide = true;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5332FB5B
				/// @DnDParent : 1A65B864
				/// @DnDArgument : "var" "horizontal_speed"
				horizontal_speed = 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0F75F7F5
				/// @DnDParent : 1A65B864
				/// @DnDArgument : "expr" "0.2"
				/// @DnDArgument : "var" "vertical_speed"
				vertical_speed = 0.2;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03177B75
	/// @DnDParent : 6F52D6AE
	/// @DnDArgument : "expr" "horizontal_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += horizontal_speed;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 22CDBA4E
	/// @DnDParent : 6F52D6AE
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "vertical_speed"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_ground"
	/// @DnDSaveInfo : "object" "obj_ground"
	var l22CDBA4E_0 = instance_place(x + 0, y + vertical_speed, obj_ground);
	if ((l22CDBA4E_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3E77D9FB
		/// @DnDParent : 22CDBA4E
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		var collide = false;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 05ECA11D
		/// @DnDParent : 22CDBA4E
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		while ((collide == false)) {
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 439B8943
			/// @DnDParent : 05ECA11D
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "sign(vertical_speed)"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "obj_ground"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "obj_ground"
			var l439B8943_0 = instance_place(x + 0, y + sign(vertical_speed), obj_ground);
			if (!(l439B8943_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 25EF6892
				/// @DnDParent : 439B8943
				/// @DnDArgument : "expr" "sign(vertical_speed)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "y"
				y += sign(vertical_speed);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 7FC86B95
			/// @DnDParent : 05ECA11D
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 00034E48
				/// @DnDParent : 7FC86B95
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "collide"
				collide = true;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 545EEF8E
				/// @DnDParent : 7FC86B95
				/// @DnDArgument : "var" "vertical_speed"
				vertical_speed = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79F8FB9C
	/// @DnDParent : 6F52D6AE
	/// @DnDArgument : "expr" "vertical_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += vertical_speed;
}