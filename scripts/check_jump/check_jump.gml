/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 10EB2867
/// @DnDComment : // Los recursos de Script han cambiado para la v2.3.0 Consulta$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
/// @DnDArgument : "funcName" "check_jump"
function check_jump() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7EE6D155
	/// @DnDParent : 10EB2867
	/// @DnDArgument : "var" "jumping"
	/// @DnDArgument : "value" "true"
	if(jumping == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2C456E29
		/// @DnDParent : 7EE6D155
		/// @DnDArgument : "expr" "-jump_power"
		/// @DnDArgument : "var" "vertical_speed"
		vertical_speed = -jump_power;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 676C93D0
		/// @DnDParent : 7EE6D155
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "jumping"
		jumping = false;
	}
}