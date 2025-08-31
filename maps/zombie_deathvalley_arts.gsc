


main()
{
    setdvar( "r_sky_intensity_usedebugvalues", true );
    setdvar( "r_fog_disable", false );
}

lab_exterior_fog(trans_time)
{
	start_dist = 154.825;
	half_dist = 947.663;
	half_height = 397.967;
	base_height = 31.8212;
	fog_r = 0.262745;
	fog_g = 0.345098;
	fog_b = 0.282353;
	fog_scale = 1.39892;
	sun_col_r = 0.788235;
	sun_col_g = 0.298039;
	sun_col_b = 0.0705882;
	sun_dir_x = 0.868379;
	sun_dir_y = -0.335118;
	sun_dir_z = -0.365534;
	sun_start_ang = 12;
	sun_stop_ang = 100.813;
	time = 0;
	max_fog_opacity = 1;

	setVolFog(start_dist, half_dist, half_height, base_height, fog_r, fog_g, fog_b, fog_scale,
		sun_col_r, sun_col_g, sun_col_b, sun_dir_x, sun_dir_y, sun_dir_z, sun_start_ang, 
		sun_stop_ang, time, max_fog_opacity);

		
	SetSavedDvar( "r_lightGridEnableTweaks", 1 );
	SetSavedDvar( "r_lightGridIntensity", 1.5 );
	SetSavedDvar( "r_lightGridContrast", .45 );
	SetSavedDvar( "r_skyTransition", 1 );
	SetSavedDvar( "r_skyColorTemp", (5900)); 
	//SetSunLight(0.38, 0.795, 0.932);
	setdvar( "r_sky_intensity_usedebugvalues", true );

}

gas_attack_enter_fog(trans_time)
{
	start_dist = 0;
	half_dist = 58.7525;
	half_height = 63.7105;
	base_height = 593.111;
	fog_r = 0.529412;
	fog_g = 0.454902;
	fog_b = 0.203922;
	fog_scale = 2.02834;
	sun_col_r = 1;
	sun_col_g = 0.407843;
	sun_col_b = 0.27451;
	sun_dir_x = 0.304335;
	sun_dir_y = 0.15607;
	sun_dir_z = -0.939693;
	sun_start_ang = 0;
	sun_stop_ang = 0;
	time = trans_time;
	max_fog_opacity = 1;

	setVolFog(start_dist, half_dist, half_height, base_height, fog_r, fog_g, fog_b, fog_scale,
		sun_col_r, sun_col_g, sun_col_b, sun_dir_x, sun_dir_y, sun_dir_z, sun_start_ang, 
		sun_stop_ang, time, max_fog_opacity);

	setdvar( "r_sky_intensity_usedebugvalues", true );
	VisionSetNaked( "rebirth_gas_attack", trans_time );
	
	SetSavedDvar( "r_lightGridEnableTweaks", 1 );
	SetSavedDvar( "r_lightGridIntensity", 1.6 );
	SetSavedDvar( "r_lightGridContrast", .05 );
	//SetSunLight(0.9, 0.57, 0.3);
	setDvar( "r_lighttweaksuncolor", (0.9, 0.57, 0.3) );

	SetSavedDvar( "r_skyTransition", 1 );

}

btr_rail_fog()
{
	
    start_dist = 384.017;
    half_dist = 297.013;
    half_height = 258.721;
    base_height = 465.005;
    fog_r = 0.2588;
    fog_g = 0.321569;
    fog_b = 0.286275;
    fog_scale = 1.9375;
    sun_col_r = 0.482353;
    sun_col_g = 0.647059;
    sun_col_b = 0.6;
    sun_dir_x = 0.561746;
    sun_dir_y = -0.257472;
    sun_dir_z = -0.786225;
    sun_start_ang = 0;
    sun_stop_ang = 86.3121;
    time = 0;
    max_fog_opacity = 1;

    setVolFog(start_dist, half_dist, half_height, base_height, fog_r, fog_g, fog_b, fog_scale,
        sun_col_r, sun_col_g, sun_col_b, sun_dir_x, sun_dir_y, sun_dir_z, sun_start_ang, 
        sun_stop_ang, time, max_fog_opacity);

	setdvar( "r_sky_intensity_usedebugvalues", true );
    ///////////Setting Sunlight for back half of map//////////////
    SetSavedDvar( "r_lightTweakSunLight", 4 );
    
    SetSavedDvar( "r_lightGridEnableTweaks", 1 );
    SetSavedDvar( "r_lightGridIntensity", 1.5 );
    SetSavedDvar( "r_lightGridContrast", .25 );
    
    SetSavedDvar( "r_skyTransition", 1 );
    SetSavedDvar( "r_skyColorTemp", (5900)); 
    //SetSunLight(0.38, 0.795, 0.932);
	setDvar( "r_lighttweaksuncolor", (0.38, 0.795, 0.932) );


	
}
start_crate_lowered_fog()
{
	start_dist = 206.943;
    half_dist = 3167.22;
    half_height = 908.805;
    base_height = -399.995;
    fog_r = 0.635294;
    fog_g = 0.584314;
    fog_b = 0.352941;
    fog_scale = 2.13132;
    sun_col_r = 0.843137;
    sun_col_g = 0.611765;
    sun_col_b = 0.196078;
    sun_dir_x = 0.958623;
    sun_dir_y = -0.269662;
    sun_dir_z = -0.0912419;
    sun_start_ang = 0;
    sun_stop_ang = 44.8296;
    time = 0;
    max_fog_opacity = 0.659332;
    
        setVolFog(start_dist, half_dist, half_height, base_height, fog_r, fog_g, fog_b, fog_scale,
            sun_col_r, sun_col_g, sun_col_b, sun_dir_x, sun_dir_y, sun_dir_z, sun_start_ang, 
            sun_stop_ang, time, max_fog_opacity);
		setdvar( "r_sky_intensity_usedebugvalues", true );
        SetSavedDvar( "r_lightGridEnableTweaks", 1 );
        SetSavedDvar( "r_lightGridIntensity", 1.25 );
        SetSavedDvar( "r_lightGridContrast", .45 );
}

rooftop_fog()
{

    start_dist = 0;
	half_dist = 3870.82;
	half_height = 1169.27;
	base_height = 651.969;
	fog_r = 0.435294;
	fog_g = 0.431373;
	fog_b = 0.439216;
	fog_scale = 3; ///3
	sun_col_r = 0.843137;
	sun_col_g = 0.611765;
	sun_col_b = 0.196078;
	sun_dir_x = 0.958623;
	sun_dir_y = -0.269662;
	sun_dir_z = -0.0912419;
	sun_start_ang = 0;
	sun_stop_ang = 0;
	time = 1;
	max_fog_opacity = 1;


	setVolFog(start_dist, half_dist, half_height, base_height, fog_r, fog_g, fog_b, fog_scale,
		sun_col_r, sun_col_g, sun_col_b, sun_dir_x, sun_dir_y, sun_dir_z, sun_start_ang, 
		sun_stop_ang, time, max_fog_opacity);
	setdvar( "r_sky_intensity_usedebugvalues", true );
	//SetSunLight(0.38, 0.795, 0.932);
	setDvar( "r_lighttweaksuncolor", (0.38, 0.795, 0.932) );

}




fogVis_initial()
{

    start_dist = 0;
	half_dist = 3870.82;
	half_height = 569.27;
	base_height = -1651.969;
	fog_r = 0.535294;
	fog_g = 0.231373;
	fog_b = 0.139216;
	fog_scale = 3; ///3
	sun_col_r = 0.843137;
	sun_col_g = 0.511765;
	sun_col_b = 0.396078;
	sun_dir_x = 0.958623;
	sun_dir_y = -0.269662;
	sun_dir_z = -0.0912419;
	sun_start_ang = 0;
	sun_stop_ang = 0;
	time = 1;
	max_fog_opacity = 1;


	setVolFog(start_dist, half_dist, half_height, base_height, fog_r, fog_g, fog_b, fog_scale,
		sun_col_r, sun_col_g, sun_col_b, sun_dir_x, sun_dir_y, sun_dir_z, sun_start_ang, 
		sun_stop_ang, time, max_fog_opacity);
	setdvar( "r_sky_intensity_usedebugvalues", true );
	SetSavedDvar( "r_lightGridEnableTweaks", 1 );
	SetSavedDvar( "r_lightGridIntensity", 1.6 );
	SetSavedDvar( "r_lightGridContrast", .05 );
	//SetSunLight(0.9, 0.57, 0.3);

	SetDvar( "r_skyTransition", 1 );
    setDvar( "r_lighttweaksuncolor", (0.7, 0.5, 0.3 ) );

}

nightvis()
{
	start_dist = 0;
	half_dist = 1170.82;//1870.82; //3870.82 +0.origin normally
	half_height = 1700.27;
	base_height = 151;//-1200.969; //151+ 0.origin normally
	fog_r = 0.135294;
	fog_g = 0.631373;
	fog_b = 0.339216;
	fog_scale = 1.6; ///3
	sun_col_r = 0.343137;
	sun_col_g = 0.511765;
	sun_col_b = 0.796078;
	sun_dir_x = 0.958623;
	sun_dir_y = -0.269662;
	sun_dir_z = -0.0912419;
	sun_start_ang = 0;
	sun_stop_ang = 0;
	time = 1;
	max_fog_opacity = .9;
	
	 

	setVolFog(start_dist, half_dist, half_height, base_height, fog_r, fog_g, fog_b, fog_scale,
		sun_col_r, sun_col_g, sun_col_b, sun_dir_x, sun_dir_y, sun_dir_z, sun_start_ang, 
		sun_stop_ang, time, max_fog_opacity);
	SetSavedDvar( "r_lightGridEnableTweaks", 1 );
	SetSavedDvar( "r_lightGridIntensity", 1.6 );
	SetSavedDvar( "r_lightGridContrast", .05 );
	SetSavedDvar( "r_sky_intensity_usedebugvalues", true );
	
	
	
		SetDvar( "r_sky_intensity_factor0", .3 );
		//SetclientDvar( "r_lighttweaksuncolor", (0.2, 0.4, 0.6 ) );
		//SetSunLight(0.2, 0.4, 0.6);
		//&SetDvar( "r_lighttweaksunlight", 2.85 );
		SetDvar( "r_exposuretweak", 1 );
		//SetDvar( "r_exposurevalue", 2.4 ); //new
		setdvar( "r_exposurevalue", 1.95 );
		//setdvar( "r_lighttweaksunlight", 3); //new
		setdvar( "r_lighttweaksunlight", 5); //new
		
	
	
	//SetSunLight(0.9, 0.57, 0.3);

	SetSavedDvar( "r_skyTransition", 1 );
}


orange_sunny_evening_vision()
{
	start_dist = 0;
	half_dist = 1100;
  	half_height = 1870;
  	base_height = 151;
  	fog_r = 0.635294;
  	fog_g = 0.484314;
  	fog_b = 0.252941;
  	fog_scale = 1.13132;
  	sun_col_r = 0.343137;
	sun_col_g = 0.211765;
	sun_col_b = 0.196078;
	sun_dir_x = 0.958623;
	sun_dir_y = -0.269662;
	sun_dir_z = -0.0912419;
	sun_start_ang = 0;
	sun_stop_ang = 0;
  	time = 0;
  	max_fog_opacity = 1;
  
	setVolFog(start_dist, half_dist, half_height, base_height, fog_r, fog_g, fog_b, fog_scale,
		sun_col_r, sun_col_g, sun_col_b, sun_dir_x, sun_dir_y, sun_dir_z, sun_start_ang, 
		sun_stop_ang, time, max_fog_opacity);

	SetSavedDvar( "r_lightGridEnableTweaks", 1 );
	SetSavedDvar( "r_lightGridIntensity", 1.25 );
	SetSavedDvar( "r_lightGridContrast", .45 );
	SetSavedDvar( "r_sky_intensity_usedebugvalues", true );
	SetDvar( "r_sky_intensity_factor0", .3 );
	SetDvar( "r_exposuretweak", 1 );
	setdvar( "r_exposurevalue", 2.45 );
	setdvar( "r_lighttweaksunlight", 3); //new
	visionSetNaked("rebirth_cargo_container", 2 );
}


rainy_night_evening_vision()
{
	/*

	original rainy_night_evening_vision foggy stuff
	fog_r = 0.0588235;
	fog_g = 0.121569;
	fog_b = 0.14902;


	sun_col_r = 0.143137;
	sun_col_g = 0.292157;
	sun_col_b = 0.311765;

	//for purpleish fog
	fog_r = 0.1288235;
	fog_g = 0.051569;
	fog_b = 0.14902;

	*/
	start_dist = 118.921;
	half_dist = 757.01;
	half_height = 2000.331;
	base_height = 500.23;

	//great with purple sunn
	fog_r = 0.1488235;
	fog_g = 0.111569;
	fog_b = 0.25902;
	fog_scale = 3.41725;
	sun_col_r = 0.183137;
	sun_col_g = 0.092157;
	sun_col_b = 0.211765;
	sun_dir_x = -0.360298;//-0.760298;
	sun_dir_y = -0.339782;
	sun_dir_z = 0.55362;
	sun_start_ang = 19.4171;
	sun_stop_ang = 79.2287;
	time = 2;
	max_fog_opacity = 0.734995;

	setVolFog(start_dist, half_dist, half_height, base_height, fog_r, fog_g, fog_b, fog_scale,
		sun_col_r, sun_col_g, sun_col_b, sun_dir_x, sun_dir_y, sun_dir_z, sun_start_ang, 
		sun_stop_ang, time, max_fog_opacity);

	VisionSetNaked( "creek_1_rain", 1 );
	
		SetSavedDvar( "r_lightGridEnableTweaks", 1 );
	SetSavedDvar( "r_lightGridIntensity", 1.5 );
	SetSavedDvar( "r_lightGridContrast", .3 );
	SetSavedDvar( "r_sky_intensity_usedebugvalues", true );
	SetDvar( "r_sky_intensity_factor0", 1.7 );
	setdvar( "r_skyTransition", 1 );
	SetDvar( "r_exposuretweak", 1 );
	setdvar( "r_exposurevalue", 2.25 );
	
	//setdvar( "r_lighttweaksunlight", 3); //new
	//visionSetNaked("river_land", 2 );
}
vision_rainy_green_fog()
{
	start_dist = 0;
	half_dist = 3870.82;
	half_height = 1700.27;
	base_height = 151.969;
	fog_r = 0.135294;
	fog_g = 0.631373;
	fog_b = 0.339216;
	fog_scale = 1.6; ///3
	sun_col_r = 0.343137;
	sun_col_g = 0.511765;
	sun_col_b = 0.796078;
	sun_dir_x = 0.958623;
	sun_dir_y = -0.269662;
	sun_dir_z = -0.0912419;
	sun_start_ang = 0;
	sun_stop_ang = 0;
	time = 1;
	max_fog_opacity = 1;


	setVolFog(start_dist, half_dist, half_height, base_height, fog_r, fog_g, fog_b, fog_scale,
		sun_col_r, sun_col_g, sun_col_b, sun_dir_x, sun_dir_y, sun_dir_z, sun_start_ang, 
		sun_stop_ang, time, max_fog_opacity);
	SetSavedDvar( "r_lightGridEnableTweaks", 1 );
	SetSavedDvar( "r_lightGridIntensity", 1.6 );
	SetSavedDvar( "r_lightGridContrast", .05 );
	SetSavedDvar( "r_sky_intensity_usedebugvalues", true );
	
	
	
		SetDvar( "r_sky_intensity_factor0", .4 );
		//SetclientDvar( "r_lighttweaksuncolor", (0.2, 0.4, 0.6 ) );
		//SetSunLight(0.2, 0.4, 0.6);
		//&SetDvar( "r_lighttweaksunlight", 2.85 );
		SetDvar( "r_exposuretweak", 1 );
		SetDvar( "r_exposurevalue", 5 );
		
	
	
	//SetSunLight(0.9, 0.57, 0.3);

	SetSavedDvar( "r_skyTransition", 1 );
}