/*
	File: fn_impoundMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Not actually a impound menu, may act as confusion to some but that is what I wanted.
	The purpose of this menu is it is now called a 'Garage' where vehicles are stored (persistent ones).
*/
private["_vehicles","_control"];
disableSerialization;
_vehicles = [_this,0,[],[[]]] call BIS_fnc_param;

waitUntil {!isNull (findDisplay 2800)};

if(count _vehicles == 0) exitWith
{
	ctrlSetText[2802,"Error fetching vehicles..."];
};

ctrlSetText[2802,"Connection Good"];
_control = ((findDisplay 2800) displayCtrl 2801);
lbClear _control;

{
	_displayName = getText(configFile >> "CfgVehicles" >> (_x select 2) >> "displayName");
	_picture = getText(configFile >> "CfgVehicles" >> (_x select 2) >> "picture");
	_price = [_x select 2,life_garage_prices] call fnc_index;
	_sPrice = [_x select 2,life_garage_sell] call fnc_index;
	if(_price == -1) then {_price = 1000;} else {_price = (life_garage_prices select _price) select 1;};
	if(_sPrice == -1) then {_sPrice = 1500;} else {_sPrice = (life_garage_sell select _sPrice) select 1;};
	
	_control lbAdd format["%1 - Storage Fee: $%2 || Sell Price: $%3", _displayName,[_price] call life_fnc_numberText,[_sPrice] call life_fnc_numberText];
	_control lbSetData [(lbSize _control)-1,(_x select 2)];
	_control lbSetValue [(lbSize _control)-1,(call compile format["%1", _x select 0])];
	_control lbSetPicture [(lbSize _control)-1,_picture];
} foreach _vehicles;