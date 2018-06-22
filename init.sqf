// #include "BG21\StartOnSafe.sqf"
// #include "BG21\StartWithEarplugs.sqf"
// #include "BG21\intro\intro.sqf";

// execVM "BG21\kill_logger.sqf";

// ACRE 2 [babel,radios]
// babel (bool) – True/False setting to specify whether each side should speak their own Babel language; making them incomprehensible to eachother.
// radios (bool) – True/False to specify whether default radio channels should be setup differently for each side in the game.
[false, true] call acre_api_fnc_setupMission;

//blooslust cleanup - activate if respawns
//execVM "BloodSplatter\Scripts\Cleanup.sqf"; 

// Artillery
// _nul = ["Bo_GBU12_LGB",-1,5,180,240,2,6,120,"f0","f1"] execVM "BG21\exploArty.sqf";
