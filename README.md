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

# configuration [config.lua]
    " adminOnly can be enabled or disabled " (default: on)
    " ScreenFadeOut can be disabled " (default: on)
    " enable or disable userGroups " (default: admin AND superadmin)
    " add or remove preset-waypoints "
    
# notes
- last update: 2020-07-19
