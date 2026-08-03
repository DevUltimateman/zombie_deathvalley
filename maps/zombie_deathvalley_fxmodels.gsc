#include common_scripts\utility;
#include maps\_utility;
#include maps\_zombiemode_utility;
#include maps\_zombiemode_zone_manager; 

main()
{
    //level._clFxTypes = [];
	//level._clfxtypes[0] = loadfx( "env\distortion\distortion_shimmer");
	//level._clfxtypes[1] = loadfx( "env\foliage\fx_leaves_blowing");
    precache_fxmodels();
}

precache_fxmodels()
{
    level._effect["lightpole_orange_stick_glow"] = LoadFX( "maps/wmd/fx_wmd_elem1_lights_runway" );
    level._effect["ground_leaves_blow"] = LoadFX( "env/foliage/fx_leaves_blowing" );
    level._effect["fx_sand_windy_fast_sm"] = LoadFX( "env/weather/fx_sand_windy_fast_sm" );
    level._effect["fx_sand_windy_lit"] = LoadFX( "env/weather/fx_sand_windy_lit" );
    level._effect["fx_zmb_fog_lit_overhead_amber"] = LoadFX( "maps/zombie/fx_zmb_fog_lit_overhead_amber");
    level._effect["fx_mp_rain_fog_wall"] = LoadFX( "maps/mp_maps/fx_mp_rain_fog_wall"); // use for outside playable areas far areas
    //level._effect["fx_moon_fog_canyon"] = LoadFX( "maps/zombie_moon/fx_moon_fog_canyon"); //very fucking heavy, maybe use sparely



    //level._effect["fog_ground"] = LoadFX("maps/mp_maps/fx_mp_fog_ground_sm_w"); //cant see
    //level._effect["fog_vista"] = LoadFX("maps/mp_maps/fx_mp_drivein_fog_vista"); no see
    //level._effect["fog_outdoor_lg"] = LoadFX("maps/zombie_temple/fx_ztem_fog_outdoor_lg");

    //level._effect["embers_windy"] = LoadFX("env/fire/fx_embers_wind_md"); //good for closer areas like at docks etc drive in place parking lot too
    level._effect["embers_ambient"] = LoadFX("maps/in_country/fx_ambient_embers"); //good for further awway



/*
    fx,env\weather\fx_sand_windy_lit
    fx,env\weather\sand_windy_fast_sm
    fx,env\weather\fx_sand_windy_fast_sm_os
    fx,maps\zombie_moon\fx_moon_fog_canyon
    fx,maps\zombie_moon\fx_zmb_fog_thick_1200x1200
    fx,maps\zombie\fx_zmb_fog_lit_overhead_amber
    fx,maps\mp_maps\fx_mp_rain_fog_wall
    level._effect["sand_windy_fast_sm"] = LoadFX( "env/weather/sand_windy_fast_sm" );
    level._effect["fx_sand_windy_lit"] = LoadFX( "env/weather/fx_sand_windy_lit" );
    level._effect["fx_sand_windy_fast_sm_os"] = LoadFX( "env/weather/fx_sand_windy_fast_sm_os" );
    level._effect["fx_moon_fog_canyon"] = LoadFX( "maps/zombie_moon/fx_moon_fog_canyon"); 
    level._effect["fx_zmb_fog_thick_1200x1200"] = LoadFX( "maps/zombie_moon/fx_zmb_fog_thick_1200x1200");
    level._effect["fx_zmb_fog_lit_overhead_amber"] = LoadFX( "maps/zombie/fx_zmb_fog_lit_overhead_amber");
    level._effect["fx_mp_rain_fog_wall"] = LoadFX( "maps/mp_maps/fx_mp_rain_fog_wall");

    level._effect["fog_ground"] = LoadFX("maps/mp_maps/fx_mp_fog_ground_sm_w");
    level._effect["fog_vista"] = LoadFX("maps/mp_maps/fx_mp_drivein_fog_vista");
    level._effect["fog_outdoor_lg"] = LoadFX("maps/zombie_temple/fx_ztem_fog_outdoor_lg");
*/
}


insert_fxmodels_lightpole_orange_stick_glow()
{

   targets = getentarray("lightpole_orange_stick_glow", "targetname");
   for( a = 0; a < targets.size; a++ )
   {
        playfx( level._effect["lightpole_orange_stick_glow"], targets[a].origin );
   }
           iprintln("FX: lightpole_orange_stick_glow inserted on ^8" + targets.size + "^7 entities.");
   
}

spawn_leaves_for_clients()
{
	fx_ground_leaves = getentarray("fx_origin_ground_leaves_blow", "targetname" );
    
	for( i = 0; i < fx_ground_leaves.size; i++ )
	{
		playfx( level._effect["embers_ambient"], fx_ground_leaves[i].origin );
         //playfx( level._effect["lightpole_orange_stick_glow"], fx_ground_leaves[i].origin );
	}
    
    iprintln("FX: blowing ground leaves ^8" + fx_ground_leaves.size + "^7 entities.");
}