/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	Edit: MiNoxus for Tripwire Gaming's Altis Life Server
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,5000],
			["U_O_SpecopsUniform_ocamo",nil,17500],
			["U_O_PilotCoveralls",nil,15610],
			["U_IG_leader","Guerilla Leader",15340],
			["U_O_GhillieSuit",nil,35000],
			["U_O_OfficerUniform_ocamo","Guerilla Officer",30000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_Shemag_olive",nil,850],
			["H_HelmetO_ocamo",nil,2500],
			["H_MilCap_oucamo",nil,1200],
			["H_Bandanna_camo",nil,650],
			["H_MilCap_ocamo",nil,1200],
			["H_Shemag_olive_hs","Shemag Headset",4000],
			["H_HelmetSpecO_ocamo",nil,3000]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,7500],
			["V_BandollierB_cbr",nil,1000],
			["V_HarnessO_brn",nil,5000],
			["V_TacVestIR_blk","The Russian Elite",10000],
			["V_Rangemaster_belt",nil,1000],
			["V_PlateCarrier1_blk","Black Tacvest",10000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_Kitbag_mcamo",nil,1250],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,5000],
			["B_AssaultPack_cbr",nil,2500],
			["G_FieldPack_Medic",nil,2000],
			["C_Bergen_Base",nil,5000]
		];
	};
};