In your init.sqf find this;

if (!isDedicated) then {
//Conduct map operations
0 fadeSound 0;
waitUntil {!isNil "dayz_loadScreenMsg"};
dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");

and add this to the very bottom of it:

[] execVM "fixes\kh_actions.sqf";


To example:

if (!isDedicated) then {
//Conduct map operations
0 fadeSound 0;
waitUntil {!isNil "dayz_loadScreenMsg"};
dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
[] execVM "fixes\kh_actions.sqf";