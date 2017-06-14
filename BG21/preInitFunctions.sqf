bg21_fnc_ismodloaded = {
	params [["_modName", "", [""]]];

	isClass (configFile >> "CfgPatches" >> _modName)
};

bg21_fnc_log = {
	private ["_msg", "_tag", "_chat"];
	_msg  = _this select 0;
	_tag = _this select 1;
	_chat = _this select 2;
	
	if (_chat) then { systemChat ('[SYSTEM] ' + _msg)};
	diag_log  ('[BG21] ' + _tag + ': ' + _msg);
};
