/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 594527D0
/// @DnDComment : // Los recursos de Script han cambiado para la v2.3.0 Consulta$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
/// @DnDArgument : "funcName" "orientate_script"
function orientate_script() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6FB3AB7A
	/// @DnDParent : 594527D0
	/// @DnDArgument : "var" "horizontal_speed"
	/// @DnDArgument : "not" "1"
	if(!(horizontal_speed == 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5F9EAADC
		/// @DnDParent : 6FB3AB7A
		/// @DnDArgument : "var" "horizontal_speed"
		/// @DnDArgument : "op" "2"
		if(horizontal_speed > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 62114CED
			/// @DnDParent : 5F9EAADC
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "orientation"
			orientation = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 199DB722
		/// @DnDParent : 6FB3AB7A
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0B7827A3
			/// @DnDParent : 199DB722
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "orientation"
			orientation = -1;
		}
	}
}