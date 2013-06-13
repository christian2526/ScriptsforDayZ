//// Wait until player ready, exit if server
waitUntil {!isNull player};
if (!local player) exitWith {};


///// Launch the init once
execVM "BTK\Cargo Drop\Init.sqf";