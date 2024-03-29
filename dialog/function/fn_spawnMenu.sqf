/*
	File: fn_spawnMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the spawn point selection menu.
*/
private["_spCfg","_sp"];
disableSerialization;
if(!(createDialog "life_spawn_selection")) exitWith {[] call life_fnc_spawnMenu;};
(findDisplay 38500) displaySetEventHandler ["keyDown","_this call life_fnc_displayHandler"];

_spCfg = [playerSide] call life_fnc_spawnPointCfg;

if(playerSide != west) then
{
	ctrlShow[38514,false];
};

for "_i" from 0 to (count _spCfg)-1 do
{
	_ctrl = ((findDisplay 38500) displayCtrl ((call compile format["3851%1",_i])));
	_ctrl ctrlSetText ((_spCfg select _i) select 1);
};

_sp = _spCfg select 0; //First option is set by default

[((findDisplay 38500) displayCtrl 38502),1,0.1,getMarkerPos (_sp select 0)] call life_fnc_setMapPosition;
life_spawn_point = _sp;

ctrlSetText[38501,format["Current Spawn Point: %1",_sp select 1]];