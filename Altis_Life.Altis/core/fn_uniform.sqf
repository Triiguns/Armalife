/*
    Uniform Script
    Author: Eldayia
    Created for http://altisdev.com
    uniform_police_rangemaster.jpg
*/

    #define __GETC__(var) (call var)
    
    if (playerSide != independent) then {
        if ((uniform player) == "U_Rangemaster")  then {
            player setObjectTextureGlobal [0, "textures\police\uni\cop.jpg"]; //Tenue d'intendant - Cop
        };
    } else {
        if ((uniform player) == "U_Rangemaster")  then {
            player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"]; //Tenue d'intendant - Medic
        };
        };
		
    if (playerSide != independent) then {
        if ((uniform player) == "U_B_CombatUniform_mcam_vest")  then {
		     player setObjectTextureGlobal [0, "textures\police\uni\police1.jpg"]; //Tenue police\uni\cop - Cop
	    };
        };
		
/*		    if (playerSide != independent) then {
        if ((uniform player) == "H_Beret_02")  then {
		     player setObjectTextureGlobal [0, "\A3\Characters_F_EPC\BLUFOR\Data\headgear_beret02_colonel_co.paa"]; //chapeau Socta
	    };
        };
*/		
    if (playerSide != independent) then {
        if ((uniform player) == "U_B_CombatUniform_mcam")  then {
		     player setObjectTextureGlobal [0, "textures\police\uni\polizei_2.jpg"]; //Tenue police\uni\cop - Cop
	    };
        };