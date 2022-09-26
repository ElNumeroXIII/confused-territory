/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1A8CF94B
/// @DnDComment : // Los recursos de Script han cambiado para la v2.3.0 Consulta$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
/// @DnDArgument : "funcName" "check_ground"
function check_ground() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 57803268
	/// @DnDParent : 1A8CF94B
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "global.grav"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_ground"
	/// @DnDSaveInfo : "object" "obj_ground"
	var l57803268_0 = instance_place(x + 0, y + global.grav, obj_ground);
	if ((l57803268_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 54740674
		/// @DnDParent : 57803268
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "on_ground"
		on_ground = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 01120514
		/// @DnDParent : 57803268
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "on_air"
		on_air = false;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 21FDF44D
	/// @DnDParent : 1A8CF94B
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 45E17F1D
		/// @DnDParent : 21FDF44D
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "on_ground"
		on_ground = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 492BDECF
		/// @DnDParent : 21FDF44D
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "on_air"
		on_air = true;
	}
}