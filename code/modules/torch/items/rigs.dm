/////////////////////////
//~~Bless this mess~~//
/////////////////////

/*
 * BASE TYPE
 */
/obj/item/weapon/rig/command
	name = "command HCM"
	suit_type = "command hardsuit"
	icon = 'code/modules/torch/icons/obj/uniques.dmi'
	desc = "A specialized hardsuit rig control module issued to command staff of the Expeditionary Corps and their peers."
	icon_state = "command_rig"
	armor = list(DAM_BLUNT = 25, DAM_CUT = 25, DAM_PIERCE = 20, DAM_BULLET = 25, DAM_LASER = 15, DAM_ENERGY = 25, DAM_BOMB = 40, DAM_BIO = 100, DAM_RADS = 40)
	online_slowdown = 0.50
	offline_slowdown = 2
	offline_vision_restriction = TINT_HEAVY

	chest_type = /obj/item/clothing/suit/space/rig/command
	helm_type = /obj/item/clothing/head/helmet/space/rig/command
	boot_type = /obj/item/clothing/shoes/magboots/rig/command
	glove_type = /obj/item/clothing/gloves/rig/command

	allowed = list(/obj/item/weapon/gun,
				   /obj/item/ammo_magazine,
				   /obj/item/device/flashlight,
				   /obj/item/weapon/tank,
				   /obj/item/device/suit_cooling_unit,
				   /obj/item/weapon/storage/secure/briefcase)

	req_access = list(core_access_command_programs)

/obj/item/clothing/head/helmet/space/rig/command
	light_overlay = "helmet_light_dual"
	icon = 'code/modules/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'code/modules/torch/icons/mob/onmob_head_solgov.dmi')
	camera = /obj/machinery/camera/network/nexus
	species_restricted = list(SPECIES_HUMAN,SPECIES_IPC) //no available icons for aliens

/obj/item/clothing/suit/space/rig/command
	icon = 'code/modules/torch/icons/obj/obj_suit_solgov.dmi'
	item_icons = list(slot_wear_suit_str = 'code/modules/torch/icons/mob/onmob_suit_solgov.dmi')
	species_restricted = list(SPECIES_HUMAN,SPECIES_IPC)

/obj/item/clothing/shoes/magboots/rig/command
	icon = 'code/modules/torch/icons/obj/obj_feet_solgov.dmi'
	item_icons = list(slot_shoes_str = 'code/modules/torch/icons/mob/onmob_feet_solgov.dmi')
	species_restricted = list(SPECIES_HUMAN,SPECIES_IPC)

/obj/item/clothing/gloves/rig/command
	icon = 'code/modules/torch/icons/obj/obj_hands_solgov.dmi'
	item_icons = list(slot_gloves_str = 'code/modules/torch/icons/mob/onmob_hands_solgov.dmi')
	species_restricted = list(SPECIES_HUMAN,SPECIES_IPC)


/obj/item/weapon/rig/command/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/cooling_unit
		)

/*
 * EXECUTIVE OFFICER
 */
/obj/item/weapon/rig/command/xo
	name = "officer's command HCM"
	suit_type = "advanced command hardsuit"
	desc = "A specialized hardsuit rig control module issued to high ranking officers of the Expeditionary Corps and their peers."
	icon_state = "command_XO_rig"
	armor = list(DAM_BLUNT = 45, DAM_CUT = 45, DAM_PIERCE = 40, DAM_BULLET = 35, DAM_LASER = 30, DAM_ENERGY = 15, DAM_BOMB = 35, DAM_BIO = 100, DAM_RADS = 50)

	chest_type = /obj/item/clothing/suit/space/rig/command/xo
	helm_type = /obj/item/clothing/head/helmet/space/rig/command/xo
	boot_type = /obj/item/clothing/shoes/magboots/rig/command
	glove_type = /obj/item/clothing/gloves/rig/command

	req_access = list(access_hop)

/obj/item/clothing/head/helmet/space/rig/command/xo
	icon_state = "command_XO_rig"
/obj/item/clothing/suit/space/rig/command/xo
	icon_state = "command_XO_rig"
/obj/item/clothing/shoes/magboots/rig/command/xo
/obj/item/clothing/gloves/rig/command/xo


/obj/item/weapon/rig/command/xo/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash/advanced,
		/obj/item/rig_module/grenade_launcher/smoke,
		/obj/item/rig_module/cooling_unit)

/*
 * COMMANDING OFFICER
 */
/obj/item/weapon/rig/command/co
	name = "commanding officer's command HCM"
	suit_type = "advanced command hardsuit"
	desc = "A specialized hardsuit rig control module issued to commanding officers of the Expeditionary Corps."
	icon_state = "command_CO_rig"
	armor = list(DAM_BLUNT = 50, DAM_CUT = 50, DAM_PIERCE = 45, DAM_BULLET = 40, DAM_LASER = 30, DAM_ENERGY = 20, DAM_BOMB = 40, DAM_BIO = 100, DAM_RADS = 50)

	chest_type = /obj/item/clothing/suit/space/rig/command/co
	helm_type = /obj/item/clothing/head/helmet/space/rig/command/co
	boot_type = /obj/item/clothing/shoes/magboots/rig/command
	glove_type = /obj/item/clothing/gloves/rig/command

	req_access = list(access_captain)

/obj/item/clothing/head/helmet/space/rig/command/co
	icon_state = "command_CO_rig"
/obj/item/clothing/suit/space/rig/command/co
	icon_state = "command_CO_rig"
/obj/item/clothing/shoes/magboots/rig/command/co
/obj/item/clothing/gloves/rig/command/co


/obj/item/weapon/rig/command/co/equipped
	initial_modules = list(
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash/advanced,
		/obj/item/rig_module/grenade_launcher/smoke,
		/obj/item/rig_module/cooling_unit)

/*
 * CHIEF MEDICAL OFFICER
 */
/obj/item/weapon/rig/command/medical
	name = "medical command HCM"
	suit_type = "medical command hardsuit"
	desc = "A specialized hardsuit rig control module issued to ranking medical officers of the Expeditionary Corps and their peers."
	icon_state = "command_med_rig"
	armor = list(DAM_BLUNT = 35, DAM_CUT = 35, DAM_PIERCE = 30, DAM_BULLET = 25, DAM_LASER = 25, DAM_ENERGY = 25, DAM_BOMB = 40, DAM_BIO = 100, DAM_RADS = 100)

	chest_type = /obj/item/clothing/suit/space/rig/command/medical
	helm_type = /obj/item/clothing/head/helmet/space/rig/command/medical

	allowed = list(/obj/item/weapon/gun,
				   /obj/item/ammo_magazine,
				   /obj/item/device/flashlight,
				   /obj/item/weapon/tank,
			 	   /obj/item/device/suit_cooling_unit,
				   /obj/item/weapon/storage/firstaid,
				   /obj/item/device/scanner/health,
				   /obj/item/stack/medical,
				   /obj/item/roller)

	req_access = list(access_cmo)

/obj/item/clothing/head/helmet/space/rig/command/medical
	icon_state = "command_med_rig"
/obj/item/clothing/suit/space/rig/command/medical
	icon_state = "command_med_rig"
/obj/item/clothing/shoes/magboots/rig/command/medical
/obj/item/clothing/gloves/rig/command/medical


/obj/item/weapon/rig/command/medical/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/device/healthscanner,
		/obj/item/rig_module/chem_dispenser/injector,
		/obj/item/rig_module/vision/medhud,
		/obj/item/rig_module/cooling_unit)

/*
* CHIEF OF SECURITY
*/
/obj/item/weapon/rig/command/security
	name = "security command HCM"
	suit_type = "security command hardsuit"
	desc = "A specialized hardsuit rig control module issued to ranking security officers of the Expeditionary Corps and their peers."
	icon_state = "command_sec_rig"
	armor = list(DAM_BLUNT = 45, DAM_CUT = 45, DAM_PIERCE = 40, DAM_BULLET = 35, DAM_LASER = 30, DAM_ENERGY = 15, DAM_BOMB = 35, DAM_BIO = 100, DAM_RADS = 40)

	chest_type = /obj/item/clothing/suit/space/rig/command/security
	helm_type = /obj/item/clothing/head/helmet/space/rig/command/security

	allowed = list(/obj/item/weapon/gun,
	 			  /obj/item/ammo_magazine, 
	  			  /obj/item/weapon/handcuffs,
	   			  /obj/item/device/flashlight,
	    		  /obj/item/weapon/tank,
				  /obj/item/device/suit_cooling_unit,
				  /obj/item/weapon/melee/baton)

	req_access = list(access_hos)

/obj/item/clothing/head/helmet/space/rig/command/security
	icon_state = "command_sec_rig"
/obj/item/clothing/suit/space/rig/command/security
	icon_state = "command_sec_rig"
/obj/item/clothing/shoes/magboots/rig/command/security
/obj/item/clothing/gloves/rig/command/security


/obj/item/weapon/rig/command/security/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/vision/sechud,
		/obj/item/rig_module/cooling_unit)

/*
* PATHFINDER
*/
// /obj/item/weapon/rig/command/exploration
// 	name = "exploration command HCM"
// 	suit_type = "exploration command hardsuit"
// 	desc = "A specialized hardsuit rig control module issued to Pathfinders of the Expeditionary Corps."
// 	icon_state = "command_exp_rig"
// 	armor = list(DAM_BLUNT = 35, DAM_CUT = 35, DAM_PIERCE = 30, DAM_BULLET = 25, DAM_LASER = 25, DAM_ENERGY = 35, DAM_BOMB = 15, DAM_BIO = 100, DAM_RADS = 100)

// 	chest_type = /obj/item/clothing/suit/space/rig/command/exploration
// 	helm_type = /obj/item/clothing/head/helmet/space/rig/command/exploration

// 	allowed = list(/obj/item/weapon/gun,
// 				   /obj/item/ammo_magazine,
// 				   /obj/item/device/flashlight,
// 				   /obj/item/weapon/tank,
// 				   /obj/item/device/suit_cooling_unit)

	//req_access = list(access_pathfinder)

// /obj/item/clothing/head/helmet/space/rig/command/exploration
// 	camera = /obj/machinery/camera/network/exploration
// 	icon_state = "command_exp_rig"
// /obj/item/clothing/suit/space/rig/command/exploration
// 	icon_state = "command_exp_rig"
// /obj/item/clothing/shoes/magboots/rig/command/exploration
// /obj/item/clothing/gloves/rig/command/exploration


/obj/item/weapon/rig/command/exploration/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/device/anomaly_scanner,
		/obj/item/rig_module/grenade_launcher/light,
		/obj/item/rig_module/cooling_unit)

/*
* CHIEF SCIENCE OFFICER
*/
/obj/item/weapon/rig/command/science
	name = "research command HCM"
	suit_type = "research command hardsuit"
	desc = "A specialized hardsuit rig control module issued to ranking research officers of the Expeditionary Corps."
	icon_state = "command_sci_rig"
	armor = list(DAM_BLUNT = 25, DAM_CUT = 25, DAM_PIERCE = 20, DAM_BULLET = 15, DAM_LASER = 45, DAM_ENERGY = 80, DAM_BOMB = 60, DAM_BIO = 100, DAM_RADS = 100)

	chest_type = /obj/item/clothing/suit/space/rig/command/science
	helm_type = /obj/item/clothing/head/helmet/space/rig/command/science

	allowed = list(/obj/item/weapon/gun,
				   /obj/item/ammo_magazine,
				   /obj/item/device/flashlight,
				   /obj/item/weapon/tank,
				   /obj/item/device/suit_cooling_unit,
			       /obj/item/stack/flag,
				   /obj/item/weapon/storage/excavation,
				   /obj/item/device/scanner/health,
				   /obj/item/device/measuring_tape,
				   /obj/item/device/ano_scanner,
				   /obj/item/device/depth_scanner,
				   /obj/item/device/core_sampler,
				   /obj/item/device/gps,
				   /obj/item/weapon/pinpointer/radio,
				   /obj/item/device/radio/beacon,
				   /obj/item/weapon/pickaxe/xeno,
				   /obj/item/weapon/storage/bag/fossils,
				   /obj/item/rig_module/grenade_launcher/light)

	req_access = list(access_rd)

/obj/item/clothing/head/helmet/space/rig/command/science
	icon_state = "command_sci_rig"

/obj/item/clothing/suit/space/rig/command/science
	icon_state = "command_sci_rig"

/obj/item/clothing/shoes/magboots/rig/command/science
/obj/item/clothing/gloves/rig/command/science


/obj/item/weapon/rig/command/science/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/device/anomaly_scanner,
		/obj/item/rig_module/grenade_launcher/light,
		/obj/item/rig_module/cooling_unit)

/*
 Overrides for standard mapset rig items
 */

// /obj/item/clothing/head/helmet/space/rig/industrial
// 	camera = /obj/machinery/camera/network/supply
