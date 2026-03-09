#include common_scripts\utility;
#include maps\_utility;
#include maps\_zombiemode_utility;
#include maps\_zombiemode_zone_manager; 

main()
{
    precache_fxmodels();
}

precache_fxmodels()
{
    level._effects["lightpole_orange_stick_glow"] = LoadFX( "maps/wmd/fx_wmd_elem1_lights_runway" );
}


insert_fxmodels_lightpole_orange_stick_glow()
{

   targets = getentarray("lightpole_orange_stick_glow", "targetname");
   for( a = 0; a < targets.size; a++ )
   {
        playfx( level._effects["lightpole_orange_stick_glow"], targets[a].origin );
   }
   /*
   for( s = 0; s < targets.size; s++ )
   {
      target = targets[s];
      if( target != undefined )
      {
        playFXOnTag("lightpole_orange_stick_glow", target, "tag_origin");
        wait 0.05;

      }
   }
   */
   
        iprintln("FX: lightpole_orange_stick_glow inserted on " + targets.size + " entities.");
   
}