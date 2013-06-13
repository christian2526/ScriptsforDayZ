//// Add action to all vehicles, check every 5 seconds
while {true} do {
	{[_x] execVM "BTK\Cargo Drop\InitAction.sqf";} forEach (nearestObjects [player, ["Air"], 30]);
	sleep 5;
};