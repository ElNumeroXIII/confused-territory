/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 77BFDDBD
/// @DnDComment : // Los recursos de Script han cambiado para la v2.3.0 Consulta$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
/// @DnDArgument : "funcName" "calc_movement"
function calc_movement() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 027618E5
	/// @DnDParent : 77BFDDBD
	/// @DnDArgument : "expr" "horizontal_speed*drag"
	/// @DnDArgument : "var" "horizontal_speed"
	horizontal_speed = horizontal_speed*drag;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 028FC860
	/// @DnDParent : 77BFDDBD
	/// @DnDArgument : "expr" "global.grav"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vertical_speed"
	vertical_speed += global.grav;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45770598
	/// @DnDParent : 77BFDDBD
	/// @DnDArgument : "var" "abs(horizontal_speed)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "0.3"
	if(abs(horizontal_speed) < 0.3)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7B80B025
		/// @DnDParent : 45770598
		/// @DnDArgument : "var" "horizontal_speed"
		horizontal_speed = 0;
	}
}