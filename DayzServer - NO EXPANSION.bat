@echo off
:start
::Name for CMD window
set serverName=Jims DayZ server
::Server files location
set serverLocation="E:\Games\SteamLibrary\steamapps\common\DayZServer"
::Server Port
set serverPort=2302
::Server config
set serverConfig=serverDZ-NE.cfg
::Server profile folder
set serverProfile=config
::Logical CPU cores to use (Equal or less than available)
set serverCPU=4
::mods (@modName;@anotherModname;@mod)
set mods=@CF;@eAI;@Namalsk Island;@Namalsk Survival;@Community-Online-Tools;@Dabs Framework;@SkyZ - Skybox Overhaul;@sVisual;@sGunplay;@Forced First Person Combat;@StaminaSettings;@AdditionalFrozenFoodNamalsk;@Increased Lumens;@BetterClutterCutters;@BadgerBuildings;@BuildingsMegaModPack;@Mists (Atmosphere);@Forever_Lights_and_Campfires;@Fog mist smoke particles;@ParticlePointsPlacement;@ZStuff;@DayZ Editor Loader;@Realistic Inventory Space;@Custom animations;@Buggy;@dbo_surfaces_nam;@Blackouts Corvette;@GoreZ;@GasMaskAddons;@RadZone;@WindstridesClothingPack;@AlienMoon;@SurrenderInventory;@FS;@FS_English_Translation;@BuilderItems;
::mods (@modName;@anotherModname;@mod)
::set servermods=
::Sets title for terminal (DONT edit)
title %serverName% batch
::DayZServer location (DONT edit)
::cd "%serverLocation%"
echo (%time%) %serverName% started.
::Launch parameters (edit end: -config=|-port=|-profiles=|-doLogs|-adminLog|-netLog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
start "DayZ Server" /min /d %serverLocation% "DayZServer_x64.exe" -config=%serverConfig% "-mod=%mods%" -port=%serverPort% -profiles=%serverProfile% -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck
::Time in seconds before kill server process (14400 = 4 hours)
timeout 14390
taskkill /im DayZServer_x64.exe /F
::Time in seconds to wait before..
timeout 10
::Go back to the top and repeat the whole cycle again
goto start