BloodLust_InitUnit =
{
   _unit = _this select 0;
   [_unit] call BloodLust_AddUnitEventHandlers;
};
 
BloodLust_OnUnitRespawn =
{
   _unit = _this select 0;
   _corpse = _this select 1;
   [_unit] remoteExec ["BloodLust_AddUnitEventHandlers"];
};
 
BloodLust_AddUnitEventHandlers =
{
   _unit = _this select 0;
   _unit addEventHandler ["Fired",
   {
       _this call BloodLust_OnUnitFired;
   }];
   _unit addEventHandler ["HitPart",
   {
       _this remoteExec ["BloodLust_OnUnitHitPart"];
   }];
   _unit addEventHandler ["Explosion",
   {
       _this remoteExec ["BloodLust_OnUnitExplosion"];
 
   }];
};
