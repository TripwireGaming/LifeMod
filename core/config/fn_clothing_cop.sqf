/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	Edit: MiNoxus for Tripwire Gaming's Altis Life Server
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["U_Rangemaster","Cop Uniform",25]];
		if(life_coplevel > 1) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt",nil,350]];
		};
		if(life_copLevel > 2) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn",nil,550]];
			_ret set[count _ret,["U_B_Wetsuit",nil,550]];
		};
	};
	
	//Hats
	case 1:
	{
		if(life_coplevel > 1) then
		{
			_ret set[count _ret,["H_HelmetB_plain_mcamo",nil,75]];
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
		};
		
		if(life_copLevel > 2) then
		{
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Diving",nil,200]
		];
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
		if(life_coplevel > 1) then
		{
			_ret set[count _ret,["V_PlateCarrier2_rgr",nil,1500]];
			_ret set[count _ret,["V_RebreatherB",nil,2000]];
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,2500]];
		};
		if(life_coplevel > 6) then
		{
			_ret set[count _ret,["V_PlateCarrier3_rgr","Officer Vest",3000]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_FieldPack_blk_DiverExp",nil,2500]
		];
	};
};

_ret;