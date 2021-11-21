// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "CUP_optic_NSPU" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch"
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",15],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",15],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************
#define SF_UNI ["cwr3_o_uniform_kzs_spn","cwr3_o_uniform_klmk_1957_birch_spn","cwr3_o_uniform_m1982_lacers_rolled","cwr3_o_uniform_m1982_lacers","cwr3_o_uniform_m1983_coverall_kzs","rhs_uniform_gorka_1_a","rhs_uniform_gorka_1_b","Spec_sumrak_berezka"]
#define SF_HAT ["cwr3_i_headgear_beanie_od","cwr3_o_headgear_fieldcap_m1982","cwr3_o_headgear_fieldcap_m1982_v3","panama_afg","panama_afg2","CUP_H_TKI_Pakol_1_05"]
kit_sf_pl = [
	["<EQUIPEMENT >>  ",SF_UNI,"cwr3_o_vest_chicom_beltkit_ak74","RD_54_69_R148",SF_HAT,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKM","CUP_30Rnd_762x39_AK47_bakelite_M",["CUP_muzzle_Bizon","",NVG_NIGHT_ITEM,""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","cwr3_hgun_aps","cwr3_20rnd_9x18_aps_m",["cwr3_muzzle_snds_aps","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_bakelite_M",1],["CUP_30Rnd_Subsonic_762x39_AK47_bakelite_M",5],["rhs_mag_rgd5",4],["HANDGUN MAG",1]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_rdg2_black",3],["rhs_mag_rdg2_white",3],["rhs_mag_nspd",1],["HANDGUN MAG",1]]]
];
kit_sf_sl = [
	["<EQUIPEMENT >>  ",SF_UNI,"cwr3_o_vest_chicom_beltkit_ak74","RD_54_69_R148",SF_HAT,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKM","CUP_30Rnd_762x39_AK47_bakelite_M",["CUP_muzzle_Bizon","",NVG_NIGHT_ITEM,""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","cwr3_hgun_aps","cwr3_20rnd_9x18_aps_m",["cwr3_muzzle_snds_aps","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["CUP_30Rnd_TE1_Green_Tracer_762x39_AK47_bakelite_M",1],["CUP_30Rnd_Subsonic_762x39_AK47_bakelite_M",5],["rhs_mag_rgd5",4],["HANDGUN MAG",1]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_rdg2_black",3],["rhs_mag_rdg2_white",3],["rhs_mag_nspd",1],["HANDGUN MAG",1]]]
];
kit_sf_ss = [
	["<EQUIPEMENT >>  ",SF_UNI,"cwr3_o_vest_chicom_beltkit_gl","RD_54_69",SF_HAT,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKM_GL","CUP_30Rnd_762x39_AK47_bakelite_M",["CUP_muzzle_Bizon","",NVG_NIGHT_ITEM,""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","cwr3_hgun_aps","cwr3_20rnd_9x18_aps_m",["cwr3_muzzle_snds_aps","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["CUP_30Rnd_Subsonic_762x39_AK47_bakelite_M",5],["rhs_mag_rgd5",4],["HANDGUN MAG",1],["CUP_1Rnd_HE_GP25_M",10],["hlc_GRD_Red",4]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_rdg2_black",3],["rhs_mag_rdg2_white",3],["rhs_mag_nspd",1],["HANDGUN MAG",1]]]
];
kit_sf_mg = [
	["<EQUIPEMENT >>  ",SF_UNI,"cwr3_o_vest_chicom_beltkit_mg","RD_54_69",SF_HAT,""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_PKM","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","cwr3_hgun_aps","cwr3_20rnd_9x18_aps_m",["cwr3_muzzle_snds_aps","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",3]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_rdg2_black",3],["rhs_mag_rdg2_white",3],["HANDGUN MAG",1],["PRIMARY MAG",1],["rhs_mag_rgd5",3]]]
];
kit_sf_r = [
	["<EQUIPEMENT >>  ",SF_UNI,"cwr3_o_vest_chicom_beltkit_ak74","RD_54_69",SF_HAT,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKMS","CUP_30Rnd_762x39_AK47_bakelite_M",["CUP_muzzle_Bizon","",NVG_NIGHT_ITEM,""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG18_Loaded","CUP_RPG18_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","cwr3_hgun_aps","cwr3_20rnd_9x18_aps_m",["cwr3_muzzle_snds_aps","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["CUP_30Rnd_Subsonic_762x39_AK47_bakelite_M",5],["HANDGUN MAG",2],["rhs_mag_rgd5",4]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_rgd5",3]]]
];
kit_sf_mm = [
	["<EQUIPEMENT >>  ",SF_UNI,"cwr3_o_vest_chicom_beltkit_ak74","RD_54_69",SF_HAT,""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_SVD","CUP_10Rnd_762x54_SVD_M",["","","CUP_optic_PSO_1_AK",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG18_Loaded","CUP_RPG18_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","cwr3_hgun_aps","cwr3_20rnd_9x18_aps_m",["cwr3_muzzle_snds_aps","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",4],["PRIMARY MAG",10],["rhs_mag_rgd5",3],["rhs_mag_rdg2_black",1]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_rgd5",6],["PRIMARY MAG",10],["rhs_mag_rdg2_black",2]]]
];
kit_sf_gr = [
	["<EQUIPEMENT >>  ",SF_UNI,"cwr3_o_vest_chicom_beltkit_ak74","RD_54_69",SF_HAT,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKMS_GL","CUP_30Rnd_762x39_AK47_bakelite_M",["CUP_muzzle_Bizon","",NVG_NIGHT_ITEM,""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG18_Loaded","CUP_RPG18_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","cwr3_hgun_aps","cwr3_20rnd_9x18_aps_m",["cwr3_muzzle_snds_aps","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",6],["CUP_30Rnd_Subsonic_762x39_AK47_bakelite_M",5],["CUP_1Rnd_HE_GP25_M",8]]],
	["<BACKPACK ITEMS >> ",[["CUP_1Rnd_HE_GP25_M",14],["rhs_mag_rdg2_black",2],["rhs_mag_rgd5",7]]]
];
kit_sf_pilot = [
	["<EQUIPEMENT >>  ","cwr3_o_uniform_pilot","cwr3_o_vest_officer_jacket","","CUP_H_RUS_ZSH_Shield_Up",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKS74U","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","cwr3_hgun_aps","cwr3_20rnd_9x18_aps_m",["cwr3_muzzle_snds_aps","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",3],["rhs_mag_nspd",2],["rhs_mag_rgd5",1]]],
	["<BACKPACK ITEMS >> ",[]]
];
cargo_kit_sov = [
	[["CUP_launch_RPG18_Loaded",3]],
	[["rhs_mag_rgd5",20],["CUP_1Rnd_HE_GP25_M",30],["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",15],["CUP_30Rnd_762x39_AK47_bakelite_M",50],["CUP_10Rnd_762x54_SVD_M",30],["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",15],["cwr3_20rnd_9x18_aps_m",10],["rhs_mag_rdg2_black",6],["rhs_mag_rdg2_white",6],["rhs_mag_nspd",6],["CUP_1Rnd_SMOKE_GP25_M",15],["CUP_1Rnd_SmokeRed_GP25_M",15]],
	[["ACE_fieldDressing",30],["ACE_elasticBandage",15],["ACE_tourniquet",10]],
	[["RD_54_69",9]]
];
#define INS_WEP ["CUP_arifle_G3A3_ris","CUP_arifle_FNFAL5060","CUP_srifle_LeeEnfield","CUP_arifle_TYPE_56_2_Early","CUP_SKS"]
#define INS_MAG ["CUP_20Rnd_762x51_G3","CUP_20Rnd_762x51_FNFAL_M","CUP_10x_303_M","CUP_30Rnd_762x39_AK47_bakelite_M","CUP_10Rnd_762x39_SKS_M"]
#define INS_UNI ["CUP_O_TKI_Khet_Partug_05","CUP_O_TKI_Khet_Partug_08","CUP_O_TKI_Khet_Partug_06"]
#define INS_VEST ["CUP_V_OI_TKI_Jacket4_04","CUP_V_OI_TKI_Jacket4_06","CUP_V_I_Carrier_Belt","cwr3_i_vest_lbv_olive","cwr3_i_vest_chicom"]
#define INS_HEADGEAR ["CUP_H_TKI_Pakol_2_04","CUP_H_TKI_Pakol_2_01","CUP_H_TKI_SkullCap_03","CUP_H_TKI_Lungee_Open_04"]


kit_ins_random = [
	"kit_ins_fighter"
	,"kit_ins_mg"
	,"kit_ins_fighter"
	,"kit_ins_ar"
	,"kit_ins_at"
	,"kit_ins_lat"
	,"kit_ins_fighter"
	,"kit_ins_lat"
	,"kit_ins_at"
	,"kit_ins_gr"
]; 
kit_ins_fighter = [
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST ,"",INS_HEADGEAR,"CUP_Beard_Black"],
	["<PRIMARY WEAPON >>  ",INS_WEP,INS_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_mg = [
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEADGEAR,"CUP_Beard_Black"],
	["<PRIMARY WEAPON >>  ","CUP_lmg_PKM","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_ar = [
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEADGEAR,"CUP_Beard_Black"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_RPK74_45","CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_at = [
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"rhs_sidor",INS_HEADGEAR,"CUP_Beard_Black"],
	["<PRIMARY WEAPON >>  ",INS_WEP,INS_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG7V","CUP_PG7V_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",2]]]
];
kit_ins_gr = [
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEADGEAR,"CUP_Beard_Black"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74_GL_Early","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",3],["CUP_1Rnd_HE_GP25_M",9]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_lat = [
	["<EQUIPEMENT >>  ",INS_UNI,INS_VEST,"",INS_HEADGEAR,"CUP_Beard_Black"],
	["<PRIMARY WEAPON >>  ",INS_WEP,INS_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG18_Loaded","CUP_RPG18_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_aa = [
	["<EQUIPEMENT >>  ","CUP_O_TKI_Khet_Partug_08","CUP_V_OI_TKI_Jacket4_04","","CUP_H_TKI_SkullCap_03","CUP_Beard_Black"],
	["<PRIMARY WEAPON >>  ","CUP_SKS","CUP_10Rnd_762x39_SKS_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_FIM92Stinger_Loaded","CUP_Stinger_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",1],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[]]
];