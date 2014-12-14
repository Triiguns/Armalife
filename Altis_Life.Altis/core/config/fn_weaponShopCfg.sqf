#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration file for the weapon shops.

	Return:
	String: Close the menu
	Array:
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
/*
Shop pour la Police Grade 1  Cadet
*/
	case "cadet":
	{
		switch(true) do
		{
			case (playerSide != west): {"Tu n es pas un Policier de Atlis "};
			default
			{
				["Magasin des Cadets",
					[
						["arifle_sdar_F","Taser Fusil",5000],
						["20Rnd_556x45_UW_mag","Munition Fusil Taser",50],
						["hgun_P07_snds_F","Pistolet Taser",1500],
						["16Rnd_9x21_Mag","Nunition Pistolet Taser",50],
						["hgun_P07_F","Pistolet 9mm",2500],
						["16Rnd_9x21_Mag","muntion de 9mm",500],
						["muzzle_snds_L","silencieux 9 mm",650],
						["FirstAidKit","Kit de Premier Soin",250],
						["ToolKit","Kit de Réparation",500],
						["Medikit","Kit de Soin",5000],
						["NVGoggles",nil,2000],
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["Rangefinder","Jumelle Radar",500]
					]
				];
			};
		};
	};

/*
Grade 2 officier
*/
	case "officier":
	{
		switch(true) do
		{
			case (playerSide != west): {"Tu n es pas un Policier de Atlis"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Magasin des Officiers",
					[
						["hgun_P07_F","Pistolet 9mm",2500],
						["16Rnd_9x21_Mag","muntion de 9mm",50],
						["hgun_Pistol_heavy_02_F",nil,3500], // Pistolet
						["6Rnd_45ACP_Cylinder",nil,50],
						["SMG_02_F",nil,5000],//Arme Principal
						["30Rnd_9x21_Mag",nil,50],
						["optic_Aco",nil,1000],
						["optic_Holosight",nil,1500],
						["optic_Hamr",nil,10000],
						["optic_MRCO",nil,15000],
						["optic_NVS",nil,100000],
						["FirstAidKit","Kit de Premier Soin",250],
						["ToolKit","Kit de Réparation",500],
						["Medikit","Kit de Soin",5000],
						["NVGoggles",nil,2000],
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["Rangefinder","Jumelle Radar",500]
					]
				];
			};
		};
	};
/*
Grade 3 Caporal
*/
	case "caporal":
	{
		switch(true) do
		{
			case (playerSide != west): {"Tu n es pas un Policier de Atlis"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a patrol officer rank!"};
			default
			{
				["Magasin des  Caporals",
					[
						["hgun_P07_F","Pistolet 9mm",2500],
						["16Rnd_9x21_Mag","muntion de 9mm",50],
						["hgun_Pistol_heavy_02_F",nil,3500], // Pistolet
						["6Rnd_45ACP_Cylinder",nil,50],
						["SMG_02_F",nil,5000],//Arme Principal
						["30Rnd_9x21_Mag",nil,50],
						["optic_Aco",nil,1000],
						["optic_Holosight",nil,1500],
						["optic_Hamr",nil,10000],
						["optic_MRCO",nil,15000],
						["optic_NVS",nil,100000],
						["FirstAidKit","Kit de Premier Soin",250],
						["ToolKit","Kit de Réparation",500],
						["Medikit","Kit de Soin",5000],
						["NVGoggles",nil,2000],
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["Rangefinder","Jumelle Radar",500]
					]
				];
			};
		};
	};
/*
Grade 4 Sergent
*/
	case "sergent":
	{
		switch(true) do
		{
			case (playerSide != west): {"Tu n es pas un Policier de Atlis"};
			case (__GETC__(life_coplevel) < 4): {"You are not at a sergeant rank!"};
			default
			{
				["Magasin des Sergents",
					[
						["hgun_P07_F","Pistolet 9mm",2500],
						["16Rnd_9x21_Mag","muntion de 9mm",50],
						["hgun_Pistol_heavy_02_F",nil,3500], // Pistolet
						["6Rnd_45ACP_Cylinder",nil,50],
						["arifle_MX_SW_F",nil,15000],//Arme Principal
						["100Rnd_65x39_caseless_mag",nil,500],
						["optic_Aco",nil,1000],
						["optic_Holosight",nil,1500],
						["optic_Hamr",nil,10000],
						["optic_MRCO",nil,15000],
						["optic_NVS",nil,100000],
						["HandGrenade_Stone","Flashbang",1700],
						["FirstAidKit","Kit de Premier Soin",250],
						["ToolKit","Kit de Réparation",500],
						["Medikit","Kit de Soin",5000],
						["NVGoggles",nil,2000],
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["Rangefinder","Jumelle Radar",500]
					]
				];
			};
		};
	};
/*
Grade 5 lieutenant
*/
		case "lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Tu n es pas un Policier de Atlis"};
			case (__GETC__(life_coplevel) < 5): {"You are not at a sergeant rank!"};
			default
			{
				["Magasin des Lieutenants",
					[
						["hgun_P07_F","Pistolet 9mm",2500],
						["16Rnd_9x21_Mag","muntion de 9mm",50],
						["hgun_Pistol_heavy_02_F",nil,3500], // Pistolet
						["6Rnd_45ACP_Cylinder",nil,50],
						["arifle_MXM_F",nil,45000],//Arme Principal
						["30Rnd_65x39_caseless_mag",nil,500],
						["LMG_MK200_F",nil,35000],
						["100Rnd_65x39_caseless_mag",nil,500],
						["optic_Aco",nil,1000],
						["optic_Holosight",nil,1500],
						["optic_Hamr",nil,10000],
						["optic_MRCO",nil,15000],
						["optic_NVS",nil,100000],
						["HandGrenade_Stone","Flashbang",1700],
						["FirstAidKit","Kit de Premier Soin",250],
						["ToolKit","Kit de Réparation",500],
						["Medikit","Kit de Soin",5000],
						["NVGoggles",nil,2000],
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["Rangefinder","Jumelle Radar",500]
					]
				];
			};
		};
	};
/*
Grade 6 Capitaine
*/
		case "capitaine":
	{
		switch(true) do
		{
			case (playerSide != west): {"Tu n es pas un Policier de Atlis"};
			case (__GETC__(life_coplevel) < 6): {"You are not at a sergeant rank!"};
			default
			{
				["Magasin des Capitaines",
					[
						["hgun_P07_F","Pistolet 9mm",2500],
						["16Rnd_9x21_Mag","muntion de 9mm",50],
						["hgun_Pistol_heavy_02_F",nil,3500], // Pistolet
						["6Rnd_45ACP_Cylinder",nil,50],
						["arifle_MXM_F",nil,45000],//Arme Principal
						["30Rnd_65x39_caseless_mag",nil,500],
						["LMG_MK200_F",nil,35000],
						["100Rnd_65x39_caseless_mag",nil,500],
						["optic_Aco",nil,1000],
						["optic_Holosight",nil,1500],
						["optic_Hamr",nil,10000],
						["optic_MRCO",nil,15000],
						["optic_NVS",nil,100000],
						["HandGrenade_Stone","Flashbang",1700],
						["FirstAidKit","Kit de Premier Soin",250],
						["ToolKit","Kit de Réparation",500],
						["Medikit","Kit de Soin",5000],
						["NVGoggles",nil,2000],
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["Rangefinder","Jumelle Radar",500]
					]
				];
			};
		};
	};
/*
*/
		case "chef":
	{
		switch(true) do
		{
			case (playerSide != west): {"Tu n es pas un Policier de Atlis!"};
			case (__GETC__(life_coplevel) < 7): {"Tu n'es pas le Chef"};
			default
			{
				["Magasin du Chef",
					[
						["hgun_P07_F","Pistolet 9mm",2500],
						["16Rnd_9x21_Mag","muntion de 9mm",50],
						["hgun_Pistol_heavy_02_F",nil,3500], // Pistolet
						["6Rnd_45ACP_Cylinder",nil,50],
						["arifle_MXM_F",nil,45000],//Arme Principal
						["30Rnd_65x39_caseless_mag",nil,500],
						["LMG_MK200_F",nil,35000],
						["100Rnd_65x39_caseless_mag",nil,500],
						["optic_Aco",nil,1000],
						["optic_Holosight",nil,1500],
						["optic_Hamr",nil,10000],
						["optic_MRCO",nil,15000],
						["optic_NVS",nil,100000],
						["HandGrenade_Stone","Flashbang",1700],
						["FirstAidKit","Kit de Premier Soin",250],
						["ToolKit","Kit de Réparation",500],
						["Medikit","Kit de Soin",5000],
						["NVGoggles",nil,2000],
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["Rangefinder","Jumelle Radar",500]
					]
				];
			};
		};
	};
/*
*/
	case "med_basic":
	{
		switch (true) do
		{
			case (playerSide != independent): {"Tu dois etre Medic"};
			default
			{
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,1000],
						["FirstAidKit",nil,300],
						["Medikit",nil,1000],
						["NVGoggles",nil,5000],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};


	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["SMG_01_F",nil,55000], // Vermine
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						["hgun_PDW2000_F",nil,45000], // UZI
						["30Rnd_9x21_Mag",nil,500],
						["hgun_Pistol_heavy_02_F",nil,24000], // Pistolet
						["6Rnd_45ACP_Cylinder",nil,500],
						["hgun_Rook40_F",nil,15000], // Pistolet
						["16Rnd_9x21_Mag",nil,200],
						["hgun_Pistol_heavy_01_F",nil,35000],  // Pistolet
						["11Rnd_45ACP_Mag",nil,500],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900]
					]
				];
			};
		};
     };


	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_Mk20_F",nil,90000],
						["30Rnd_556x45_Stanag",nil,500],
						["arifle_Mk20C_F",nil,100000],
						["30Rnd_556x45_Stanag",nil,500],
						["arifle_Katiba_F",nil,150000],
						["30Rnd_65x39_caseless_green",nil,500],
						["LMG_Mk200_F",nil,350000], // Arme Lourde
						["200Rnd_65x39_cased_Box",nil,3000],
						["LMG_Zafir_F",nil,600000], // Arme Lourde
						["150Rnd_762x51_Box",nil,3000],
						["arifle_SDAR_F",nil,75000], // Arme de Chasse
						["20Rnd_556x45_UW_mag",nil,500],
						["srifle_EBR_F",nil,500000], // Sniper
						["20Rnd_762x51_Mag",nil,5000],
						["srifle_DMR_01_F",nil,500000],// Sniper
						["10Rnd_762x51_Mag",nil,3000],
						["SMG_01_F",nil,40000], // Vermine
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						["hgun_PDW2000_F",nil,30000], // UZI
						["30Rnd_9x21_Mag",nil,500],
						["hgun_Pistol_heavy_01_F",nil,25000],  // Pistolet
						["11Rnd_45ACP_Mag",nil,500],
						["hgun_Rook40_F",nil,10000], // Pistolet
						["16Rnd_9x21_Mag",nil,200],
						["hgun_Pistol_heavy_02_F",nil,18000], // Pistolet
						["6Rnd_45ACP_Cylinder",nil,500],
						["optic_Aco",nil,5000],
						["optic_Holosight",nil,5500],
						["optic_Hamr",nil,15000],
						["optic_MRCO",nil,250000],
						["optic_NVS",nil,50000],
						["acc_flashlight",nil,2000],
						["acc_pointer_IR",nil,2000],
						["Binocular",nil,2000],
						["Rangefinder",nil,7500],
						["NVGoggles",nil,75000],
						["ItemGPS",nil,100]
				    ]
				];
			};
		};
	};

	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["arifle_Mk20_F",nil,80000],
						["30Rnd_556x45_Stanag",nil,500],
						["arifle_Mk20C_F",nil,90000],
						["30Rnd_556x45_Stanag",nil,500],
						["LMG_Zafir_F",nil,550000], // Arme Lourde
						["150Rnd_762x51_Box",nil,3000],
						["SMG_01_F",nil,40000], // Vermine
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						["hgun_PDW2000_F",nil,30000], // UZI
						["30Rnd_9x21_Mag",nil,500],
						["hgun_Pistol_heavy_01_F",nil,25000],  // Pistolet
						["11Rnd_45ACP_Mag",nil,500],
						["hgun_Rook40_F",nil,10000], // Pistolet
						["16Rnd_9x21_Mag",nil,200],
						["hgun_Pistol_heavy_02_F",nil,18000], // Pistolet
						["optic_Aco",nil,5000],
						["optic_Holosight",nil,5500],
                        ["V_PlateCarrierIA2_dgtl",nil,50000],
                        ["V_Rangemaster_belt",nil,1900],
                        ["FirstAidKit",nil,150],
						["NVGoggles",nil,6500]
				    ]
				];
			};
		};
	};

	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,7500],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};

};
