/*
ORIGINAL CODE BY OFCRA
http://www.ofcrav2.org/
*/

if (isServer) then {
	["[BG21] INFO: enabling kill logs ...", "INFO", true] call bg21_fnc_log;
	
	_index = 1;
	{
		_name = "bot_" + (str _index);
		_x setName _name;
		_x addMPEventHandler ["MPkilled", {diag_log text format ["[BG21] KILL: '%1' tue par '%2'",name (_this select 0),name (_this select 1)];}];
		_x addMPEventHandler ["MPhit", {diag_log text format ["[BG21] HIT: '%1' touche de +'%4' jusqua '%3' par '%2'",name (_this select 0),name (_this select 1),damage (_this select 0),(_this select 2)];}];
		_index = _index + 1;
	} forEach allUnits;

	["[BG21] INFO: kill logs done ...", "INFO", true] call bg21_fnc_log;
};
