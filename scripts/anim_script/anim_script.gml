/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0B000D7F
/// @DnDComment : // Los recursos de Script han cambiado para la v2.3.0 Consulta$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
/// @DnDArgument : "funcName" "anim_script"
function anim_script() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15819DD3
	/// @DnDParent : 0B000D7F
	/// @DnDArgument : "var" "horizontal_speed"
	if(horizontal_speed == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 5C0BF213
		/// @DnDParent : 15819DD3
		/// @DnDArgument : "value" "spr_hero_idle"
		/// @DnDArgument : "instvar" "10"
		sprite_index = spr_hero_idle;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2FBA1682
	/// @DnDParent : 0B000D7F
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 39B721CC
		/// @DnDParent : 2FBA1682
		/// @DnDArgument : "value" "spr_hero_run"
		/// @DnDArgument : "instvar" "10"
		sprite_index = spr_hero_run;
	}
}