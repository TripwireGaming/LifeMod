/*
	File: fn_spawnPointSelected.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Sorts out the spawn point selected and does a map zoom.
*/
disableSerialization;
private["_selector"];
_selector = [_this,0,-1,[0]] call BIS_fnc_param;
if(_selector == -1) exitWith {};

_spCfg = [playerSide] call life_fnc_spawnPointCfg;
_sp = _spCfg select _selector;
[((findDisplay 38500) displayCtrl 38502),1,0.1,getMarkerPos (_sp select 0)] call life_fnc_setMapPosition;
life_spawn_point = _sp;

ctrlSetText[38501,format["Current Spawn Point: %1",_sp select 1]];