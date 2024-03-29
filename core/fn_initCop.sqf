/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
[] spawn life_fnc_copMarkers;

if(life_blacklisted) exitWith
{
	endMission "Loser";
};

switch (true) do
{
	case ((str(player) in ["cop_5","cop_6","cop_7","cop_8","cop_9","cop_10","cop_11","cop_12","cop_13","cop_14","cop_15","cop_16","cop_17","cop_18","cop_19"])):
	{
		switch (true) do
		{
			case (life_coplevel > 0) : {}; // Do nothing
			case (life_adminlevel > 0) : {}; //Do nothing
			default {endMission "Loser";};
		};
	};
	
	case (str(player) in ["cop_1","cop_2","cop_3","cop_4"]):
	{
		if(life_adminlevel < 1)then {endMission "Loser"; } else
		{
		};
	};
	
};

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.