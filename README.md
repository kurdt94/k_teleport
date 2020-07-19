# k_teleport
REDM : Teleport Script with admin support ( Teleport to waypoint, custom X,Y,Z or one of the preset locations )

# installation
- add "k_teleport" to your server RESOURCES folder
- add "ensure k_teleport" to your server cfg

# usage
    "tp"  -- teleport waypoint
    "tp valentine_sheriff"  -- teleport to sheriff in valentine
    "tp -283.47698 833.24420" -- teleport to X,Y 
    "tp -283.47698 833.24420 119.50105" -- teleport to X,Y,Z
    "tp back" -- teleport back to your last used teleport
    "tp save YOURKEY" -- save current location for later use ( use: tp YOURKEY )  
    
# configuration [config.lua]
    " adminOnly can be enabled or disabled " (default: on)
    " enable or disable userGroups " (default: admin AND superadmin)
    " ScreenFadeOut can be disabled " (default: on)
    " add or remove preset-waypoints " 
    " Translation can be done here "
    
# notes
- last update: 2020-07-19

# default preset-locations
taken from : https://www.mod-rdr.com/wiki/pages/list-of-rdr2-teleports/

| key  | location |
| ------------- | ------------- |
| emerald | "Emerald Ranch Fence" |
| ufo_house | "UFO Cult House" |
| rhodes | "Rhodes" |
| braithwaite | "Braithwaite Manor" |
| caliga | "Rhodes Sheriff Station" |
| stdenis | "Saint Denis Entrance" |
| stdenis_sheriff | "Saint Denis Police Dept" |
| cornwall | "Cornwall Freight" |
| stdenis_paperboy | "Saint Denis Paperboy" |
| stdenis_post | "Saint Denis Post Office" |
| vanhorn | "Van Horn" |
| annesburg | "Annesburg" |
| annesburg_mines | "Annesburg Mines" |
| willards | "Willard's Rest (and Waterfalls)" |
| doverhill | "Doverhill (Tesla Coil)" |
| ambarino | "Ambarino" |
| veteran_home | "Veteran's Homestead" |
| grizzlies | "Grizzlies Train Station (Bridge/Large Waterfall)" |
| barrow_lagoon | "Barrow Lagoon" |
| mount_hagen | "Mount Hagen" |
| frozen_couple | "Frozen Couple" |
| grizzlies_camp | "Grizzlies Camp (Tutorial Area)" |
| montos_rest | "Monto's Rest (Building Camp)" |
| fort_wallace | "Fort Wallace" |
| valentine_sheriff | "Valentine Sheriff Station" |
| strawberry | "Strawberry" |
| strawberry_sheriff | "Strawberry Sheriff Station" |
| tanners_reach | "Tanner's Reach" |
| swadlass_point | "Swadlass Point" |
| upper_montana | "Upper Montana River" |
| manzanita_post | "Manzanita Post" |
| native_attack | "Native Attack Site" |
| macfarlanes_ranch | "Macfarlane's Ranch" |
| roots_chapel | "Roots Chapel" |
| armadillo | "Armadillo" |
| benedict_point | "Benedict Point" |
| tumbleweed | "Tumbleweed" |
| rathskeller_fork | "Rathskeller Fork" |
| ridgewood_farm | "Ridgewood Farm" |
| mercer_station | "Mercer Station" |




    
