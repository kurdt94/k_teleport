Config = {}
Locale = {}

Config.enable_fadeOut = true
Config.fadeTime = 2000
Config.enable_adminOnly = true
Config.enable_adminGroups = {
    ["admin"] = true,
    ["superadmin"] = true,
}

Locale.title = ":: Teleport ::"
Locale.wp_found = "> Waypoint found"
Locale.wp_not_found = "> No waypoint found"
Locale.wp_invalid = "> Invalid waypoint"
Locale.preset_not_found = "> Preset does not exist"
Locale.arg_not_found = "> No arguments found"
Locale.auth_fail = "> Teleport command not allowed"
Locale.not_alive = "> Not alive"

-- waypoints list ( unreachable locations I left out )
-- [name] is never used, but kept here for identification
-- https://www.mod-rdr.com/wiki/pages/list-of-rdr2-teleports/
Config.waypoints = {
    ["emerald"] = {x=1417.818, y=268.0298, z=89.61942, name="Emerald Ranch Fence"},
    ["ufo_house"] = {x=1469.529, y=803.9516, z=100.2565, name="UFO Cult House"},
    ["rhodes"] = {x=1232.205, y=-1251.088, z=73.67763, name="Rhodes"},
    ["rhodes_sheriff"] = {x=1359.575, y=-1301.451, z=77.76775, name="Rhodes Sheriff Station"},
    ["braithwaite"] = {x=1010.883, y=-1741.42, z=46.57271, name="Braithwaite Manor"},
    ["caliga"] = {x=1748.701, y=-1373.015, z=44.07471, name="Caliga Hall"},
    ["stdenis"] = {x=2209.557, y=-1346.319, z=45.27962, name="Saint Denis Entrance"},
    ["stdenis_sheriff"] = {x=2519.439, y=-1309.522, z=48.98456, name="Saint Denis Police Dept"},
    ["cornwall"] = {x=2327.491, y=-1502.421, z=46.15683, name="Cornwall Freight"},
    ["stdenis_paperboy"] = {x=2683.755, y=-1401.467, z=46.36121, name="Saint Denis Paperboy"},
    ["stdenis_post"] = {x=2747.493, y=-1403.775, z=46.19331, name="Saint Denis Post Office"},
    ["vanhorn"] = {x=2983.451, y=430.152, z=51.17512, name="Van Horn"},
    ["lighthouse"] = {x=3034.831, y=434.7511, z=63.76253, name="Van Horn Lighthouse"},
    ["annesburg"] = {x=2904.366, y=1248.808, z=44.87448, name="Annesburg"},
    ["annesburg_mines"] = {x=2811.514, y=1350.152, z=71.40891, name="Annesburg Mines"},
    ["willards"] = {x=2962.592, y=2206.051, z=165.286, name="Willard's Rest (and Waterfalls)"},
    ["doverhill"] = {x=2528.707, y=2289.215, z=176.5532, name="Doverhill (Tesla Coil)"},
    ["ambarino"] = {x=1977.036, y=1782.974, z=191.9578, name="Ambarino Sign"},
    ["veteran_home"] = {x=1695.536, y=1517.756, z=146.7541, name="Veteran's Homestead"},
    ["grizzlies"] = {x=571.4683, y=1709.609, z=187.5573, name="Grizzlies Train Station (Bridge/Large Waterfall)"},
    ["barrow_lagoon"] = {x=-1022.5, y=1682.607, z=242.1601, name="Barrow Lagoon"},
    ["mount_hagen"] = {x=-1504.352, y=1246.987, z=313.6848, name="Mount Hagen"},
    ["frozen_couple"] = {x=-1596.308, y=1838.178, z=299.4427, name="Frozen Couple"},
    ["grizzlies_camp"] = {x=-1343.558, y=2425.952, z=307.4015, name="Grizzlies Camp (Tutorial Area)"},
    ["montos_rest"] = {x=-1389.252, y=-235.0196, z=98.85808, name="Monto's Rest (Building Camp)"},
    ["fort_wallace"] = {x=361.913, y=1461.297, z=179.1987, name="Fort Wallace"},
    ["valentine_sheriff"] = {x=-278.2138, y=807.0493, z=119.38, name="Valentine Sheriff Station"},
    ["strawberry"] = {x=-1731.426, y=-412.8995, z=154.8678, name="Strawberry"},
    ["strawberry_sheriff"] = {x=-1809.933, y=-349.4936, z=164.6563, name="Strawberry Sheriff Station"},
    ["tanners_reach"] = {x=-2370.176, y=-1595.122, z=154.0966, name="Tanner's Reach"},
    ["swadlass_point"] = {x=-2573.16, y=-1371.534, z=149.7127, name="Swadlass Point"},
    ["upper_montana"] = {x=-2003.783, y=-1058.096, z=77.02795, name="Upper Montana River"},
    ["manzanita_post"] = {x=-1962.67, y=-1614.491, z=116.0338, name="Manzanita Post"},
    ["native_attack"] = {x=-2037.57, y=-1917.054, z=110.0583, name="Native Attack Site"},
    ["macfarlanes_ranch"] = {x=-2333.056, y=-2350.935, z=63.20446, name="Macfarlane's Ranch"},
    ["roots_chapel"] = {x=-3322.755, y=-2833.409, z=-6.234455, name="Roots Chapel"},
    ["armadillo"] = {x=-3665.947, y=-2612.442, z=-14.08434, name="Armadillo"},
    ["benedict_point"] = {x=-5245.899, y=-3470.671, z=-22.09243, name="Benedict Point"},
    ["tumbleweed"] = {x=-5517.375, y=-2936.821, z=-2.219434, name="Tumbleweed"},
    ["rathskeller_fork"] = {x=-5165.079, y=-2143.5, z=11.77453, name="Rathskeller Fork"},
    ["ridgewood_farm"] = {x=-4823.544, y=-2711.381, z=-13.74694, name="Ridgewood Farm"},
    ["mercer_station"] = {x=-4352.891, y=-3052.94, z=-11.10614, name="Mercer Station"},
    ["fort_mercer"] = {x=-4217.854, y=-3514.639, z=36.98927, name="Fort Mercer"},
    ["gaptooth_breach"] = {x=-6000.769, y=-3319.31, z=-21.72198, name="Gaptooth Breach"},
    ["guarma_beach"] = {x=1997.57, y=-4499.807, z=41.77455, name="Guarma Beach (Shipwreck Beach)"},
    ["guarma_fort"] = {x=999.9134, y=-6749.735, z=63.12267, name="Guarma Fort"},
    ["back"] =  {x=0.0, y=-0.0, z=0.0, name="Last Location"}, -- do not delete!
}