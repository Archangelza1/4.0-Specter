StartProgress = false;
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v4.0";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
_logistic = execVM "custom\=BTC=_Logistic\=BTC=_Logistic_Init.sqf";
null = [5, "scripts"] execVM "scripts\helipad_lights\helipad_light_auto.sqf";
StartProgress = true;
introSpawn = nil;