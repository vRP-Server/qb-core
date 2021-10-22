QBShared = {}

local StringCharset = {}
local NumberCharset = {}

for i = 48, 57 do
    table.insert(NumberCharset, string.char(i))
end
for i = 65, 90 do
    table.insert(StringCharset, string.char(i))
end
for i = 97, 122 do
    table.insert(StringCharset, string.char(i))
end

QBShared.RandomStr = function(length)
    if length > 0 then
        return QBShared.RandomStr(length - 1) .. StringCharset[math.random(1, #StringCharset)]
    else
        return ''
    end
end

QBShared.RandomInt = function(length)
    if length > 0 then
        return QBShared.RandomInt(length - 1) .. NumberCharset[math.random(1, #NumberCharset)]
    else
        return ''
    end
end

QBShared.SplitStr = function(str, delimiter)
    local result = { }
    local from = 1
    local delim_from, delim_to = string.find(str, delimiter, from)
    while delim_from do
        table.insert(result, string.sub(str, from, delim_from - 1))
        from = delim_to + 1
        delim_from, delim_to = string.find(str, delimiter, from)
    end
    table.insert(result, string.sub(str, from))
    return result
end

QBShared.StarterItems = {
    --['phone'] = { amount = 1, item = 'phone' },
    ['id_card'] = { amount = 1, item = 'id_card' },
    --['driver_license'] = { amount = 1, item = 'driver_license' },
}

QBShared.Items = {
	-- WEAPONS
	-- Melee
	['weapon_unarmed'] 				 = {['name'] = 'weapon_unarmed', 		 	  	['label'] = 'Fists', 					['weight'] = 1000, 		['type'] = 'weapon',	['ammotype'] = nil, 					['image'] = 'placeholder.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'Fisticuffs'},
	['weapon_dagger'] 				 = {['name'] = 'weapon_dagger', 			 	['label'] = 'Dagger', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_dagger.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A short knife with a pointed and edged blade, used as a weapon'},
	['weapon_bat'] 					 = {['name'] = 'weapon_bat', 			 	  	['label'] = 'Bat', 					    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_bat.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'Used for hitting a ball in sports (or other things)'},
	['weapon_bottle'] 				 = {['name'] = 'weapon_bottle', 			 	['label'] = 'Broken Bottle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_bottle.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A broken bottle'},
	['weapon_crowbar'] 				 = {['name'] = 'weapon_crowbar', 		 	  	['label'] = 'Crowbar', 				    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_crowbar.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'An iron bar with a flattened end, used as a lever'},
	['weapon_flashlight']			 = {['name'] = 'weapon_flashlight',				['label'] = 'Flashlight',				['weight'] = 1000,		['type'] = 'weapon',	['ammotype'] = nil,						['image'] = 'weapon_flashlight.png',	['unique'] = true,		['useable'] = false,	['description'] = 'A battery-operated portable light'},
	['weapon_golfclub'] 			 = {['name'] = 'weapon_golfclub', 		 	  	['label'] = 'Golfclub', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_golfclub.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A club used to hit the ball in golf'},
	['weapon_hammer'] 				 = {['name'] = 'weapon_hammer', 			 	['label'] = 'Hammer', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_hammer.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'Used for jobs such as breaking things (legs) and driving in nails'},
	['weapon_hatchet'] 				 = {['name'] = 'weapon_hatchet', 		 	  	['label'] = 'Hatchet', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_hatchet.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small axe with a short handle for use in one hand'},
	['weapon_knuckle'] 				 = {['name'] = 'weapon_knuckle', 		 	  	['label'] = 'Knuckle', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_knuckle.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A metal guard worn over the knuckles in fighting, especially to increase the effect of the blows'},
	['weapon_knife'] 				 = {['name'] = 'weapon_knife', 			 	  	['label'] = 'Knife', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_knife.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'An instrument composed of a blade fixed into a handle, used for cutting or as a weapon'},
	['weapon_machete'] 				 = {['name'] = 'weapon_machete', 		 	  	['label'] = 'Machete', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_machete.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A broad, heavy knife used as a weapon'},
	['weapon_switchblade'] 			 = {['name'] = 'weapon_switchblade', 	 	  	['label'] = 'Switchblade', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_switchblade.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A knife with a blade that springs out from the handle when a button is pressed'},
	['weapon_nightstick'] 			 = {['name'] = 'weapon_nightstick', 		 	['label'] = 'Nightstick', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_nightstick.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A police officer\'s club or billy'},
	['weapon_wrench'] 				 = {['name'] = 'weapon_wrench', 			 	['label'] = 'Wrench', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_wrench.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A tool used for gripping and turning nuts, bolts, pipes, etc'},
	['weapon_battleaxe'] 			 = {['name'] = 'weapon_battleaxe', 		 	  	['label'] = 'Battle Axe', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_battleaxe.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A large broad-bladed axe used in ancient warfare'},
	['weapon_poolcue'] 				 = {['name'] = 'weapon_poolcue', 		 	  	['label'] = 'Poolcue', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_poolcue.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A stick used to strike a ball, usually the cue ball (or other things)'},
	['weapon_briefcase'] 			 = {['name'] = 'weapon_briefcase', 		 	  	['label'] = 'Briefcase', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_briefcase.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A briefcase for storing important documents'},
	['weapon_briefcase_02'] 		 = {['name'] = 'weapon_briefcase_02', 	 	  	['label'] = 'Suitcase', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_briefcase2.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'Wonderfull for nice vacation to Liberty City'},
	['weapon_garbagebag'] 			 = {['name'] = 'weapon_garbagebag', 		 	['label'] = 'Garbage Bag', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_garbagebag.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A garbage bag'},
	['weapon_handcuffs'] 			 = {['name'] = 'weapon_handcuffs', 		 	  	['label'] = 'Handcuffs', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_handcuffs.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A pair of lockable linked metal rings for securing a prisoner\'s wrists'},
	['weapon_bread'] 				 = {['name'] = 'weapon_bread', 				 	['label'] = 'Baquette', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'baquette.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'Bread...?'},
	['weapon_stone_hatchet'] 		 = {['name'] = 'weapon_stone_hatchet', 		 	['label'] = 'Weapon Stone Hatchet', 	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'stone_hatchet.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Stone ax'},

	-- Handguns
	['weapon_pistol'] 				 = {['name'] = 'weapon_pistol', 			 	['label'] = 'Walther P99', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_pistol.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small firearm designed to be held in one hand'},
	['weapon_pistol_mk2'] 			 = {['name'] = 'weapon_pistol_mk2', 			['label'] = 'Pistol Mk II', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_pistol_mk2.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An upgraded small firearm designed to be held in one hand'},
	['weapon_combatpistol'] 		 = {['name'] = 'weapon_combatpistol', 	 	  	['label'] = 'Combat Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_combatpistol.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A combat version small firearm designed to be held in one hand'},
	['weapon_appistol'] 			 = {['name'] = 'weapon_appistol', 		 	  	['label'] = 'AP Pistol', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_appistol.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small firearm designed to be held in one hand that is automatic'},
	['weapon_stungun'] 				 = {['name'] = 'weapon_stungun', 		 	  	['label'] = 'Taser', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_stungun.png', 		 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A weapon firing barbs attached by wires to batteries, causing temporary paralysis'},
	['weapon_pistol50'] 			 = {['name'] = 'weapon_pistol50', 		 	  	['label'] = 'Pistol .50 Cal', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_pistol50.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A .50 caliber firearm designed to be held with both hands'},
	['weapon_snspistol'] 			 = {['name'] = 'weapon_snspistol', 		 	  	['label'] = 'SNS Pistol', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_snspistol.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A very small firearm designed to be easily concealed'},
	['weapon_heavypistol'] 			 = {['name'] = 'weapon_heavypistol', 	 	  	['label'] = 'Heavy Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_heavypistol.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A hefty firearm designed to be held in one hand (or attempted)'},
	['weapon_vintagepistol'] 		 = {['name'] = 'weapon_vintagepistol', 	 	  	['label'] = 'Vintage Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_vintagepistol.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'An antique firearm designed to be held in one hand'},
	['weapon_flaregun'] 			 = {['name'] = 'weapon_flaregun', 		 	  	['label'] = 'Flare Gun', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_FLARE',			['image'] = 'weapon_flaregun.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A handgun for firing signal rockets'},
	['weapon_marksmanpistol'] 		 = {['name'] = 'weapon_marksmanpistol', 	 	['label'] = 'Marksman Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_marksmanpistol.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A very accurate small firearm designed to be held in one hand'},
	['weapon_revolver'] 			 = {['name'] = 'weapon_revolver', 		 	  	['label'] = 'Revolver', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_revolver.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A pistol with revolving chambers enabling several shots to be fired without reloading'},
	['weapon_revolver_mk2'] 		 = {['name'] = 'weapon_revolver_mk2', 		 	['label'] = 'Violence', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'revolvermk2.png', 			['unique'] = true, 		['useable'] = true, 	['description'] = 'da Violence'},
	['weapon_doubleaction'] 	     = {['name'] = 'weapon_doubleaction', 		 	['label'] = 'Double Action Revolver', 	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'doubleaction.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Double Action Revolver'},
	['weapon_snspistol_mk2'] 	     = {['name'] = 'weapon_snspistol_mk2', 		 	['label'] = 'SNS Pistol MK2', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'snspistol_mk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'SNS Pistol MK2'},
	['weapon_raypistol']			 = {['name'] = 'weapon_raypistol',				['label'] = 'Weapon Raypistol',			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_raypistol.png',		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Raypistol'},
	['weapon_ceramicpistol']		 = {['name'] = 'weapon_ceramicpistol', 		 	['label'] = 'Weapon Ceramicpistol',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_ceramicpistol.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Ceramicpistol'},
	['weapon_navyrevolver']        	 = {['name'] = 'weapon_navyrevolver', 		 	['label'] = 'Weapon Navyrevolver',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_navyrevolver.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Navyrevolver'},
	['weapon_gadgetpistol'] 		 = {['name'] = 'weapon_gadgetpistol', 		 	['label'] = 'Weapon Gadgetpistol',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_gadgetpistol.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Gadgetpistol'},

	-- Submachine Guns
	['weapon_microsmg'] 			 = {['name'] = 'weapon_microsmg', 		 	  	['label'] = 'Micro SMG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_microsmg.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A handheld lightweight machine gun'},
	['weapon_smg'] 				 	 = {['name'] = 'weapon_smg', 			 	  	['label'] = 'SMG', 						['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_smg.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'A handheld lightweight machine gun'},
	['weapon_smg_mk2'] 				 = {['name'] = 'weapon_smg_mk2', 			 	['label'] = 'PD MP5 2', 				['weight'] = 1000,		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'smg.png', 					['unique'] = true, 		['useable'] = true, 	['description'] = 'SMG MK2'},
	['weapon_assaultsmg'] 			 = {['name'] = 'weapon_assaultsmg', 		 	['label'] = 'Assault SMG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_assaultsmg.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An assault version of a handheld lightweight machine gun'},
	['weapon_combatpdw'] 			 = {['name'] = 'weapon_combatpdw', 		 	  	['label'] = 'Combat PDW', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_combatpdw.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A combat version of a handheld lightweight machine gun'},
	['weapon_machinepistol'] 		 = {['name'] = 'weapon_machinepistol', 	 	  	['label'] = 'Tec-9', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_machinepistol.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'A self-loading pistol capable of burst or fully automatic fire'},
	['weapon_minismg'] 				 = {['name'] = 'weapon_minismg', 		 	  	['label'] = 'Mini SMG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_minismg.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A mini handheld lightweight machine gun'},
	['weapon_raycarbine']	         = {['name'] = 'weapon_raycarbine', 		 	['label'] = 'Weapon Raycarbine',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_raycarbine.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Raycarbine'},

	-- Shotguns
	['weapon_pumpshotgun'] 			 = {['name'] = 'weapon_pumpshotgun', 	 	  	['label'] = 'Pump Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_pumpshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A pump-action smoothbore gun for firing small shot at short range'},
	['weapon_sawnoffshotgun'] 		 = {['name'] = 'weapon_sawnoffshotgun', 	 	['label'] = 'Sawn-off Shotgun', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_sawnoffshotgun.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A sawn-off smoothbore gun for firing small shot at short range'},
	['weapon_assaultshotgun'] 		 = {['name'] = 'weapon_assaultshotgun', 	 	['label'] = 'Assault Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_assaultshotgun.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'An assault version of asmoothbore gun for firing small shot at short range'},
	['weapon_bullpupshotgun'] 		 = {['name'] = 'weapon_bullpupshotgun', 	 	['label'] = 'Bullpup Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_bullpupshotgun.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A compact smoothbore gun for firing small shot at short range'},
	['weapon_musket'] 			     = {['name'] = 'weapon_musket', 			 	['label'] = 'Musket', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_musket.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'An infantryman\'s light gun with a long barrel, typically smooth-bored, muzzleloading, and fired from the shoulder'},
	['weapon_heavyshotgun'] 		 = {['name'] = 'weapon_heavyshotgun', 	 	  	['label'] = 'Heavy Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_heavyshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A large smoothbore gun for firing small shot at short range'},
	['weapon_dbshotgun'] 			 = {['name'] = 'weapon_dbshotgun', 		 	  	['label'] = 'Double-barrel Shotgun', 	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_dbshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A shotgun with two parallel barrels, allowing two single shots to be fired in quick succession'},
	['weapon_autoshotgun'] 			 = {['name'] = 'weapon_autoshotgun', 	 	  	['label'] = 'Auto Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_autoshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A shotgun capable of rapid continous fire'},
	['weapon_pumpshotgun_mk2']		 = {['name'] = 'weapon_pumpshotgun_mk2',		['label'] = 'Pumpshotgun MK2', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'pumpshotgun_mk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Pumpshotgun MK2'},
	['weapon_combatshotgun']		 = {['name'] = 'weapon_combatshotgun', 		 	['label'] = 'Weapon Combatshotgun',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'combatshotgun.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Combatshotgun'},

	-- Assault Rifles
	['weapon_assaultrifle'] 		 = {['name'] = 'weapon_assaultrifle', 	 	  	['label'] = 'Assault Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_assaultrifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A rapid-fire, magazine-fed automatic rifle designed for infantry use'},
	['weapon_assaultrifle_mk2'] 	 = {['name'] = 'weapon_assaultrifle_mk2', 	 	['label'] = 'AK-47 MK2', 				['weight'] = 1000,		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'assaultriflemk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Assault Rifle MK2'},
	['weapon_carbinerifle'] 		 = {['name'] = 'weapon_carbinerifle', 	 	  	['label'] = 'Carbine Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_carbinerifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A lightweight automatic rifle'},
	['weapon_carbinerifle_mk2'] 	 = {['name'] = 'weapon_carbinerifle_mk2', 	 	['label'] = 'PD 762', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'carbineriflemk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Carbine Rifle MK2'},
	['weapon_advancedrifle'] 		 = {['name'] = 'weapon_advancedrifle', 	 	  	['label'] = 'Advanced Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_advancedrifle.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'An assault version of a rapid-fire, magazine-fed automatic rifle designed for infantry use'},
	['weapon_specialcarbine'] 		 = {['name'] = 'weapon_specialcarbine', 	 	['label'] = 'Special Carbine', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_specialcarbine.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'An extremely versatile assault rifle for any combat situation'},
	['weapon_bullpuprifle'] 		 = {['name'] = 'weapon_bullpuprifle', 	 	  	['label'] = 'Bullpup Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_bullpuprifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A compact automatic assault rifle'},
	['weapon_compactrifle'] 		 = {['name'] = 'weapon_compactrifle', 	 	  	['label'] = 'Compact Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_compactrifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A compact version of an assault rifle'},
	['weapon_specialcarbine_mk2']	 = {['name'] = 'weapon_specialcarbine_mk2', 	['label'] = 'Weapon Wpecialcarbine MK2',['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'specialcarbine_mk2.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Wpecialcarbine MK2'},
	['weapon_bullpuprifle_mk2']		 = {['name'] = 'weapon_bullpuprifle_mk2', 		['label'] = 'Bull Puprifle MK2',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'bullpuprifle_mk2.png',		['unique'] = true, 		['useable'] = true, 	['description'] = 'Bull Puprifle MK2'},
	['weapon_militaryrifle']		 = {['name'] = 'weapon_militaryrifle', 		 	['label'] = 'Weapon Militaryrifle',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'militaryrifle.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Militaryrifle'},

	-- Light Machine Guns
	['weapon_mg'] 					 = {['name'] = 'weapon_mg', 				 	['label'] = 'Machinegun', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_mg.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'An automatic gun that fires bullets in rapid succession for as long as the trigger is pressed'},
	['weapon_combatmg'] 			 = {['name'] = 'weapon_combatmg', 		 	  	['label'] = 'Combat MG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_combatmg.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A combat version of an automatic gun that fires bullets in rapid succession for as long as the trigger is pressed'},
	['weapon_gusenberg'] 			 = {['name'] = 'weapon_gusenberg', 		 	  	['label'] = 'Thompson SMG', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_gusenberg.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An automatic rifle commonly referred to as a tommy gun'},
	['weapon_combatmg_mk2']	 		 = {['name'] = 'weapon_combatmg_mk2', 		 	['label'] = 'Weapon Combatmg MK2',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'combatmg_mk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Combatmg MK2'},

	-- Sniper Rifles
	['weapon_sniperrifle'] 			 = {['name'] = 'weapon_sniperrifle', 	 	  	['label'] = 'Sniper Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_sniperrifle.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A high-precision, long-range rifle'},
	['weapon_heavysniper'] 			 = {['name'] = 'weapon_heavysniper', 	 	  	['label'] = 'Heavy Sniper', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_heavysniper.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'An upgraded high-precision, long-range rifle'},
	['weapon_marksmanrifle'] 		 = {['name'] = 'weapon_marksmanrifle', 	 	  	['label'] = 'Marksman Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_marksmanrifle.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'A very accurate single-fire rifle'},
	['weapon_remotesniper'] 		 = {['name'] = 'weapon_remotesniper', 	 	  	['label'] = 'Remote Sniper', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER_REMOTE',	['image'] = 'weapon_remotesniper.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A portable high-precision, long-range rifle'},
	['weapon_heavysniper_mk2']		 = {['name'] = 'weapon_heavysniper_mk2', 		['label'] = 'Weapon Heavysniper MK2',	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'heavysniper_mk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Heavysniper MK2'},
	['weapon_marksmanrifle_mk2']	 = {['name'] = 'weapon_marksmanrifle_mk2', 		['label'] = 'Weapon Marksmanrifle MK2',	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'marksmanrifle_mk2.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Marksmanrifle MK2'},

	-- Heavy Weapons
	['weapon_rpg'] 					 = {['name'] = 'weapon_rpg', 			      	['label'] = 'RPG', 						['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RPG',				['image'] = 'weapon_rpg.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'A rocket-propelled grenade launcher'},
	['weapon_grenadelauncher'] 		 = {['name'] = 'weapon_grenadelauncher', 	  	['label'] = 'Grenade Launcher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_GRENADELAUNCHER',	['image'] = 'weapon_grenadelauncher.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A weapon that fires a specially-designed large-caliber projectile, often with an explosive, smoke or gas warhead'},
	['weapon_grenadelauncher_smoke'] = {['name'] = 'weapon_grenadelauncher_smoke', 	['label'] = 'Smoke Grenade Launcher', 	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_GRENADELAUNCHER',	['image'] = 'weapon_smokegrenade.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A bomb that produces a lot of smoke when it explodes'},
	['weapon_minigun'] 				 = {['name'] = 'weapon_minigun', 		      	['label'] = 'Minigun', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MINIGUN',			['image'] = 'weapon_minigun.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A portable machine gun consisting of a rotating cluster of six barrels and capable of variable rates of fire of up to 6,000 rounds per minute'},
	['weapon_firework'] 			 = {['name'] = 'weapon_firework', 		 	  	['label'] = 'Firework Launcher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_firework.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A device containing gunpowder and other combustible chemicals that causes a spectacular explosion when ignited'},
	['weapon_railgun'] 				 = {['name'] = 'weapon_railgun', 		 	  	['label'] = 'Railgun', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_railgun.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A weapon that uses electromagnetic force to launch high velocity projectiles'},
	['weapon_hominglauncher'] 		 = {['name'] = 'weapon_hominglauncher', 	 	['label'] = 'Homing Launcher', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_STINGER',			['image'] = 'weapon_hominglauncher.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A weapon fitted with an electronic device that enables it to find and hit a target'},
	['weapon_compactlauncher'] 		 = {['name'] = 'weapon_compactlauncher',  	  	['label'] = 'Compact Launcher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_compactlauncher.png', 	['unique'] = true, 	['useable'] = false, 	['description'] = 'A compact grenade launcher'},
	['weapon_rayminigun']			 = {['name'] = 'weapon_rayminigun', 		 	['label'] = 'Weapon Rayminigun',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MINIGUN',			['image'] = 'weapon_rayminigun.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Rayminigun'},

	-- Throwables
	['weapon_grenade'] 				 = {['name'] = 'weapon_grenade', 		      	['label'] = 'Grenade', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_grenade.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A handheld throwable bomb'},
	['weapon_bzgas'] 				 = {['name'] = 'weapon_bzgas', 			      	['label'] = 'BZ Gas', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_bzgas.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A cannister of gas that causes extreme pain'},
	['weapon_molotov'] 				 = {['name'] = 'weapon_molotov', 		      	['label'] = 'Molotov', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_molotov.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A crude bomb made of a bottle filled with a flammable liquid and fitted with a wick for lighting'},
	['weapon_stickybomb'] 			 = {['name'] = 'weapon_stickybomb', 		    ['label'] = 'C4', 						['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_stickybomb.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An explosive charge covered with an adhesive that when thrown against an object sticks until it explodes'},
	['weapon_proxmine'] 			 = {['name'] = 'weapon_proxmine', 		 	  	['label'] = 'Proxmine Grenade', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_proximitymine.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'A bomb placed on the ground that detonates when going within its proximity'},
	['weapon_snowball'] 		     = {['name'] = 'weapon_snowball', 		 	  	['label'] = 'Snowball', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_snowball.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A ball of packed snow, especially one made for throwing at other people for fun'},
	['weapon_pipebomb'] 			 = {['name'] = 'weapon_pipebomb', 		 	  	['label'] = 'Pipe Bomb', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_pipebomb.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A homemade bomb, the components of which are contained in a pipe'},
	['weapon_ball'] 				 = {['name'] = 'weapon_ball', 			 	  	['label'] = 'Ball', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_BALL',				['image'] = 'weapon_ball.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'A solid or hollow spherical or egg-shaped object that is kicked, thrown, or hit in a game'},
	['weapon_smokegrenade'] 		 = {['name'] = 'weapon_smokegrenade', 	      	['label'] = 'Smoke Grenade', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_c4.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'An explosive charge that can be remotely detonated'},
	['weapon_flare'] 				 = {['name'] = 'weapon_flare', 			 	  	['label'] = 'Flare pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_FLARE',			['image'] = 'weapon_flare.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small pyrotechnic devices used for illumination and signalling'},

	-- Miscellaneous
	['weapon_petrolcan'] 			 = {['name'] = 'weapon_petrolcan', 		 	  	['label'] = 'Petrol Can', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PETROLCAN',		['image'] = 'weapon_petrolcan.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A robust liquid container made from pressed steel'},
	['weapon_fireextinguisher'] 	 = {['name'] = 'weapon_fireextinguisher',      	['label'] = 'Fire Extinguisher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_fireextinguisher.png', 	['unique'] = true, 	['useable'] = false, 	['description'] = 'A portable device that discharges a jet of water, foam, gas, or other material to extinguish a fire'},
	['weapon_hazardcan']			 = {['name'] = 'weapon_hazardcan',				['label'] = 'Weapon Hazardcan',			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PETROLCAN',		['image'] = 'weapon_hazardcan.png',		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Hazardcan'},

	-- PISTOL ATTACHMENTS
	['pistol_defaultclip'] 			 = {['name'] = 'pistol_defaultclip', 			['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pistol Default Clip'},
	['pistol_extendedclip'] 		 = {['name'] = 'pistol_extendedclip', 			['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pistol Extended Clip'},
	['pistol_flashlight'] 			 = {['name'] = 'pistol_flashlight', 			['label'] = 'Pistol Flashlight', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_flashlight.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pistol Flashlight Attachment'},
	['pistol_suppressor'] 			 = {['name'] = 'pistol_suppressor', 			['label'] = 'Pistol Suppressor', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pistol Suppressor Attachment'},
	['pistol_luxuryfinish'] 	     = {['name'] = 'pistol_luxuryfinish', 			['label'] = 'Pistol Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pistol Luxury Finish'},
	['combatpistol_defaultclip'] 	 = {['name'] = 'combatpistol_defaultclip', 		['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat Pistol Default Clip'},
	['combatpistol_extendedclip']    = {['name'] = 'combatpistol_extendedclip', 	['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat Pistol Extended Clip'},
	['combatpistol_luxuryfinish'] 	 = {['name'] = 'combatpistol_luxuryfinish', 	['label'] = 'Pistol Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat Pistol Luxury Finish'},
	['appistol_defaultclip'] 		 = {['name'] = 'appistol_defaultclip', 			['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'APPistol Default Clip'},
	['appistol_extendedclip'] 		 = {['name'] = 'appistol_extendedclip', 		['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'APPistol Extended Clip'},
	['appistol_luxuryfinish'] 	     = {['name'] = 'appistol_luxuryfinish', 		['label'] = 'Pistol Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'APPistol Luxury Finish'},
	['pistol50_defaultclip'] 		 = {['name'] = 'pistol50_defaultclip', 			['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '.50 Pistol Default Clip'},
	['pistol50_extendedclip'] 		 = {['name'] = 'pistol50_extendedclip', 		['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '.50 Pistol Extended Clip'},
	['pistol50_luxuryfinish'] 	     = {['name'] = 'pistol50_luxuryfinish', 		['label'] = 'Pistol Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '.50 Pistol Luxury Finish'},
	['revolver_defaultclip'] 		 = {['name'] = 'revolver_defaultclip', 			['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Revovler Default Clip'},
	['revolver_vipvariant'] 		 = {['name'] = 'revolver_vipvariant', 		    ['label'] = 'Pistol Variant', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Revovler Variant'},
	['revolver_bodyguardvariant'] 	 = {['name'] = 'revolver_bodyguardvariant', 	['label'] = 'Pistol Variant', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Revovler Variant'},
	['snspistol_defaultclip'] 		 = {['name'] = 'snspistol_defaultclip', 		['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SNS Pistol Default Clip'},
	['snspistol_extendedclip'] 		 = {['name'] = 'snspistol_extendedclip', 		['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SNS Pistol Extended Clip'},
	['snspistol_grip'] 	             = {['name'] = 'snspistol_grip', 		        ['label'] = 'Pistol Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SNS Pistol Grip Attachment'},
	['heavypistol_defaultclip'] 	 = {['name'] = 'heavypistol_defaultclip', 		['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Pistol Default Clip'},
	['heavypistol_extendedclip'] 	 = {['name'] = 'heavypistol_extendedclip', 		['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Pistol Extended Clip'},
	['heavypistol_grip'] 	         = {['name'] = 'heavypistol_grip', 		        ['label'] = 'Pistol Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Pistol Grip Attachment'},
	['vintagepistol_defaultclip'] 	 = {['name'] = 'vintagepistol_defaultclip', 	['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Vintage Pistol Default Clip'},
	['vintagepistol_extendedclip'] 	 = {['name'] = 'vintagepistol_extendedclip', 	['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Vintage Pistol Default Clip'},

	-- SMG ATTACHMENTS
	['microsmg_defaultclip'] 	     = {['name'] = 'microsmg_defaultclip', 			['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Micro SMG Default Clip'},
	['microsmg_extendedclip'] 		 = {['name'] = 'microsmg_extendedclip', 		['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Micro SMG Extended Clip'},
	['microsmg_scope'] 			     = {['name'] = 'microsmg_scope', 			    ['label'] = 'SMG Scope', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Micro SMG Scope Attachment'},
	['microsmg_luxuryfinish'] 	     = {['name'] = 'microsmg_luxuryfinish', 		['label'] = 'SMG Finish', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Micro SMG Luxury Finish'},
	['smg_defaultclip'] 	         = {['name'] = 'smg_defaultclip', 			    ['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SMG Default Clip'},
	['smg_extendedclip'] 	         = {['name'] = 'smg_extendedclip', 		        ['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SMG Extended Clip'},
	['smg_drum']                     = {['name'] = 'smg_drum', 	                    ['label'] = 'SMG Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SMG Drum'},
	['smg_scope'] 	                 = {['name'] = 'smg_scope', 	                ['label'] = 'SMG Scope', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SMG Scope Attachment'},
	['smg_luxuryfinish'] 		     = {['name'] = 'smg_luxuryfinish', 			    ['label'] = 'SMG Finish', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'SMG Luxury Finish'},
	['assaultsmg_defaultclip'] 		 = {['name'] = 'assaultsmg_defaultclip', 		['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault SMG Default Clip'},
	['assaultsmg_extendedclip'] 	 = {['name'] = 'assaultsmg_extendedclip', 		['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault SMG Extended Clip'},
	['assaultsmg_luxuryfinish']      = {['name'] = 'assaultsmg_luxuryfinish', 		['label'] = 'SMG Finish', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault SMG Luxury Finish'},
	['minismg_defaultclip'] 		 = {['name'] = 'minismg_defaultclip', 		    ['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Mini SMG Default Clip'},
	['minismg_extendedclip'] 	     = {['name'] = 'minismg_extendedclip', 		    ['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Mini SMG Extended Clip'},
	['machinepistol_defaultclip']    = {['name'] = 'machinepistol_defaultclip', 	['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Machine Pistol Default Clip'},
	['machinepistol_extendedclip']   = {['name'] = 'machinepistol_extendedclip', 	['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Machine Pistol Extended Clip'},
	['machinepistol_drum'] 	         = {['name'] = 'machinepistol_drum', 	        ['label'] = 'SMG Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Machine Pistol Drum'},
	['combatpdw_defaultclip'] 		 = {['name'] = 'combatpdw_defaultclip', 		['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat PDW Default Clip'},
	['combatpdw_extendedclip'] 		 = {['name'] = 'combatpdw_extendedclip', 		['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat PDW Extended Clip'},
	['combatpdw_drum'] 	             = {['name'] = 'combatpdw_drum', 		        ['label'] = 'SMG Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat PDW Drum'},
	['combatpdw_grip'] 	             = {['name'] = 'combatpdw_grip', 				['label'] = 'SMG Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat PDW Grip Attachment'},
	['combatpdw_scope'] 	         = {['name'] = 'combatpdw_scope', 				['label'] = 'SMG Scope', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Combat PDW Scope Attachment'},

	-- SHOTGUN ATTACHMENTS
	['shotgun_suppressor'] 	         = {['name'] = 'shotgun_suppressor', 			['label'] = 'Shotgun Suppressor', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Shotgun Suppressor Attachment'},
	['pumpshotgun_luxuryfinish'] 	 = {['name'] = 'pumpshotgun_luxuryfinish', 		['label'] = 'Shotgun Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pump Shotgun Luxury Finish'},
	['sawnoffshotgun_luxuryfinish']  = {['name'] = 'sawnoffshotgun_luxuryfinish', 	['label'] = 'Shotgun Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Sawn Off Shotgun Luxury Finish'},
	['assaultshotgun_defaultclip'] 	 = {['name'] = 'assaultshotgun_defaultclip', 	['label'] = 'Shotgun Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault Shotgun Default Clip'},
	['assaultshotgun_extendedclip']  = {['name'] = 'assaultshotgun_extendedclip', 	['label'] = 'Shotgun EXT Clip', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault Shotgun Extended Clip'},
	['heavyshotgun_defaultclip'] 	 = {['name'] = 'heavyshotgun_defaultclip', 		['label'] = 'Shotgun Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Shotgun Default Clip'},
	['heavyshotgun_extendedclip']    = {['name'] = 'heavyshotgun_extendedclip', 	['label'] = 'Shotgun EXT Clip', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Shotgun Extended Clip'},
	['heavyshotgun_drum'] 	         = {['name'] = 'heavyshotgun_drum', 	        ['label'] = 'Shotgun Drum', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Shotgun Drum'},

	-- RIFLE ATTACHMENTS
	['assaultrifle_defaultclip'] 	 = {['name'] = 'assaultrifle_defaultclip', 		['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault Rifle Default Clip'},
	['assaultrifle_extendedclip']    = {['name'] = 'assaultrifle_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault Rifle Extended Clip'},
	['assaultrifle_drum'] 			 = {['name'] = 'assaultrifle_drum', 			['label'] = 'Rifle Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault Rifle Drum'},
	['rifle_flashlight'] 	         = {['name'] = 'rifle_flashlight', 		        ['label'] = 'Rifle Flashlight', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_flashlight.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Rifle Flashlight Attachment'},
	['rifle_grip'] 	                 = {['name'] = 'rifle_grip', 			        ['label'] = 'Rifle Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Rifle Grip Attachment'},
	['rifle_suppressor'] 	         = {['name'] = 'rifle_suppressor', 		        ['label'] = 'Rifle Suppressor', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Rifle Suppressor Attachment'},
	['assaultrifle_luxuryfinish'] 	 = {['name'] = 'assaultrifle_luxuryfinish',     ['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Assault Rifle Luxury Finish'},
	['carbinerifle_defaultclip']     = {['name'] = 'carbinerifle_defaultclip', 	    ['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Carbine Rifle Default Clip'},
	['carbinerifle_extendedclip'] 	 = {['name'] = 'carbinerifle_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Carbine Rifle Extended Clip'},
	['carbinerifle_drum'] 		     = {['name'] = 'carbinerifle_drum', 			['label'] = 'Rifle Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Carbine Rifle Drum'},
	['carbinerifle_scope'] 		     = {['name'] = 'carbinerifle_scope', 		    ['label'] = 'Rifle Scope', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Carbine Rifle Scope'},
	['carbinerifle_luxuryfinish'] 	 = {['name'] = 'carbinerifle_luxuryfinish', 	['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Carbine Rifle Luxury Finish'},
	['advancedrifle_defaultclip']    = {['name'] = 'advancedrifle_defaultclip', 	['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Advanced Rifle Default Clip'},
	['advancedrifle_extendedclip'] 	 = {['name'] = 'advancedrifle_extendedclip',    ['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Advanced Rifle Extended Clip'},
	['advancedrifle_luxuryfinish'] 	 = {['name'] = 'advancedrifle_luxuryfinish', 	['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Advanced Rifle Luxury Finish'},
	['specialcarbine_defaultclip']   = {['name'] = 'specialcarbine_defaultclip', 	['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Special Carbine Default Clip'},
	['specialcarbine_extendedclip']  = {['name'] = 'specialcarbine_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Special Carbine Extended Clip'},
	['specialcarbine_drum'] 	     = {['name'] = 'specialcarbine_drum', 	        ['label'] = 'Rifle Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Special Carbine Drum'},
	['specialcarbine_luxuryfinish']  = {['name'] = 'specialcarbine_luxuryfinish', 	['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Special Carbine Luxury Finish'},
	['bullpuprifle_defaultclip']     = {['name'] = 'bullpuprifle_defaultclip', 		['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Bullpup Rifle Default Clip'},
	['bullpuprifle_extendedclip'] 	 = {['name'] = 'bullpuprifle_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Bullpup Rifle Extended Clip'},
	['bullpuprifle_luxuryfinish'] 	 = {['name'] = 'bullpuprifle_luxuryfinish', 	['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Bullpup Rifle Luxury Finish'},
	['compactrifle_defaultclip'] 	 = {['name'] = 'compactrifle_defaultclip', 		['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Compact Rifle Default Clip'},
	['compactrifle_extendedclip'] 	 = {['name'] = 'compactrifle_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Compact Rifle Extended Clip'},
	['compactrifle_drum'] 	         = {['name'] = 'compactrifle_drum', 		    ['label'] = 'Rifle Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Compact Rifle Drum'},
	['gusenberg_defaultclip'] 	     = {['name'] = 'gusenberg_defaultclip', 		['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Gusenberg Default Clip'},
	['gusenberg_extendedclip'] 	     = {['name'] = 'gusenberg_extendedclip', 		['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Gusenberg Extended Clip'},

	-- SNIPER ATTACHMENTS
	['sniperrifle_defaultclip'] 	 = {['name'] = 'sniperrifle_defaultclip', 		['label'] = 'Sniper Suppressor', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Sniper Rifle Default Clip'},
	['sniper_scope'] 	             = {['name'] = 'sniper_scope', 		            ['label'] = 'Sniper Scope', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Sniper Rifle Scope Attachment'},
	['snipermax_scope']              = {['name'] = 'snipermax_scope', 	            ['label'] = 'Sniper Max Scope', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Sniper Rifle Max Scope Attachment'},
	['sniper_grip'] 	             = {['name'] = 'sniper_grip', 	                ['label'] = 'Sniper Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Sniper Rifle Grip Attachment'},
	['heavysniper_defaultclip']      = {['name'] = 'heavysniper_defaultclip', 	    ['label'] = 'Sniper Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy Sniper Default Clip'},
	['marksmanrifle_defaultclip'] 	 = {['name'] = 'marksmanrifle_defaultclip', 	['label'] = 'Sniper Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Marksman Rifle Default Clip'},
	['marksmanrifle_extendedclip']   = {['name'] = 'marksmanrifle_extendedclip', 	['label'] = 'Sniper EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Marksman Rifle Extended Clip'},
	['marksmanrifle_scope'] 	     = {['name'] = 'marksmanrifle_scope', 	        ['label'] = 'Sniper Scope', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Marksman Rifle Scope Attachment'},
	['marksmanrifle_luxuryfinish'] 	 = {['name'] = 'marksmanrifle_luxuryfinish', 	['label'] = 'Sniper Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Marksman Rifle Luxury Finish'},

	-- Weapon Tints
	['weapontint_black']             = {['name'] = 'weapontint_black', 	            ['label'] = 'Default Tint', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_black.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Default/Black Weapon Tint'},
	['weapontint_green'] 	         = {['name'] = 'weapontint_green', 	            ['label'] = 'Green Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_green.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Green Weapon Tint'},
	['weapontint_gold']      		 = {['name'] = 'weapontint_gold', 	    		['label'] = 'Gold Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_gold.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Gold Weapon Tint'},
	['weapontint_pink'] 	 		 = {['name'] = 'weapontint_pink', 				['label'] = 'Pink Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_pink.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pink Weapon Tint'},
	['weapontint_army']   			 = {['name'] = 'weapontint_army', 				['label'] = 'Army Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_army.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Army Weapon Tint'},
	['weapontint_lspd'] 	     	 = {['name'] = 'weapontint_lspd', 	        	['label'] = 'LSPD Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_lspd.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'LSPD Weapon Tint'},
	['weapontint_orange'] 	 		 = {['name'] = 'weapontint_orange', 			['label'] = 'Orange Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_orange.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Orange Weapon Tint'},
	['weapontint_plat'] 	 		 = {['name'] = 'weapontint_plat', 				['label'] = 'Platinum Tint', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_plat.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Platinum Weapon Tint'},

	-- ITEMS
	['id_card'] 					 = {['name'] = 'id_card', 			 	  	  	['label'] = 'ID Card', 					['weight'] = 0, 		['type'] = 'item', 		['image'] = 'id_card.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A card containing all your information to identify yourself'},
	['driver_license'] 				 = {['name'] = 'driver_license', 			  	['label'] = 'Drivers License', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'driver_license.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Permit to show you can drive a vehicle'},
	['lawyerpass'] 					 = {['name'] = 'lawyerpass', 			 	  	['label'] = 'Lawyer Pass', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'lawyerpass.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Pass exclusive to lawyers to show they can represent a suspect'},
	['tosti'] 						 = {['name'] = 'tosti', 			 	  	  	['label'] = 'Grilled Cheese Sandwich', 	['weight'] = 200, 		['type'] = 'item', 		['image'] = 'tosti.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Nice to eat'},
	['casinochips'] 				 = {['name'] = 'casinochips', 			  	  	['label'] = 'Casino Chips', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'casinochips.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'Chips For Casino Gambling'},
	['water_bottle'] 				 = {['name'] = 'water_bottle', 			  	  	['label'] = 'Bottle of Water', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'water_bottle.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['beer'] 				 		 = {['name'] = 'beer', 			  	  			['label'] = 'Beer', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'beer.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Nothing like a good cold beer!'},
	['whiskey'] 				 	 = {['name'] = 'whiskey', 			  	  		['label'] = 'Whiskey', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'whiskey.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['vodka'] 				 		 = {['name'] = 'vodka', 			  	  		['label'] = 'Vodka', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'vodka.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['coffee'] 				 		 = {['name'] = 'coffee', 			  	  		['label'] = 'Coffee', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'coffee.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pump 4 Caffeine'},
	['kurkakola'] 				 	 = {['name'] = 'kurkakola', 			  	  	['label'] = 'Cola', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'cola.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['twerks_candy'] 				 = {['name'] = 'twerks_candy', 			  	  	['label'] = 'Twerks', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'twerks_candy.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Some delicious candy :O'},
	['snikkel_candy'] 				 = {['name'] = 'snikkel_candy', 			  	['label'] = 'Snikkel', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'snikkel_candy.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Some delicious candy :O'},
	['joint'] 						 = {['name'] = 'joint', 			  	  		['label'] = 'Joint', 					['weight'] = 0, 		['type'] = 'item', 		['image'] = 'joint.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Sidney would be very proud at you'},
	['cokebaggy'] 					 = {['name'] = 'cokebaggy', 			  	  	['label'] = 'Bag of Coke', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'cocaine_baggy.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'To get happy real quick'},
	['crack_baggy'] 				 = {['name'] = 'crack_baggy', 			  	  	['label'] = 'Bag of Crack', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'crack_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'To get happy faster'},
	['xtcbaggy'] 					 = {['name'] = 'xtcbaggy', 			  	  		['label'] = 'Bag of XTC', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'xtc_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Pop those pills baby'},
	['plastic'] 					 = {['name'] = 'plastic', 			  	  	  	['label'] = 'Plastic', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'plastic.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'RECYCLE! - Greta Thunberg 2019'},
	['metalscrap'] 					 = {['name'] = 'metalscrap', 			  	  	['label'] = 'Metal Scrap', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'metalscrap.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'You can probably make something nice out of this'},
	['copper'] 					 	 = {['name'] = 'copper', 			  	  		['label'] = 'Copper', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'copper.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Nice piece of metal that you can probably use for something'},
	['aluminum'] 					 = {['name'] = 'aluminum', 			  	  		['label'] = 'Aluminum', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'aluminum.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Nice piece of metal that you can probably use for something'},
	['aluminumoxide'] 				 = {['name'] = 'aluminumoxide', 			  	['label'] = 'Aluminum Powder', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'aluminumoxide.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Some powder to mix with'},
	['iron'] 				 	     = {['name'] = 'iron', 			  				['label'] = 'Iron', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ironplate.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Handy piece of metal that you can probably use for something'},
	['ironoxide'] 				 	 = {['name'] = 'ironoxide', 			  		['label'] = 'Iron Powder', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ironoxide.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = {accept = {'aluminumoxide'}, reward = 'thermite', anim = {['dict'] = 'anim@amb@business@weed@weed_inspecting_high_dry@', ['lib'] = 'weed_inspecting_high_base_inspector', ['text'] = 'Mixing powder..', ['timeOut'] = 10000}},   ['description'] = 'Some powder to mix with.'},
	['steel'] 				 	 	 = {['name'] = 'steel', 			  			['label'] = 'Steel', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'steel.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Nice piece of metal that you can probably use for something'},
	['rubber'] 				 	 	 = {['name'] = 'rubber', 			  			['label'] = 'Rubber', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'rubber.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Rubber, I believe you can make your own rubber ducky with it :D'},
	['glass'] 				 	 	 = {['name'] = 'glass', 			  			['label'] = 'Glass', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'glassplate.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'It is very fragile, watch out'},
	['pistol_ammo'] 				 = {['name'] = 'pistol_ammo', 			  	  	['label'] = 'Pistol ammo', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'pistol_ammo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ammo for Pistols'},
	['rifle_ammo'] 				 	 = {['name'] = 'rifle_ammo', 			  	  	['label'] = 'Rifle ammo', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_ammo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ammo for Rifles'},
	['smg_ammo'] 				 	 = {['name'] = 'smg_ammo', 			  	  		['label'] = 'SMG ammo', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'smg_ammo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ammo for Sub Machine Guns'},
	['shotgun_ammo'] 				 = {['name'] = 'shotgun_ammo', 			  	  	['label'] = 'Shotgun ammo', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'shotgun_ammo.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ammo for Shotguns'},
	['mg_ammo'] 				 	 = {['name'] = 'mg_ammo', 			  	  		['label'] = 'MG ammo', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'mg_ammo.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ammo for Machine Guns'},
	['snp_ammo'] 				 	 = {['name'] = 'snp_ammo', 			  	  		['label'] = 'Sniper ammo', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'snp_ammo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Ammo for Sniper Rifles'},
	['lockpick'] 					 = {['name'] = 'lockpick', 			 	  	  	['label'] = 'Lockpick', 				['weight'] = 300, 		['type'] = 'item', 		['image'] = 'lockpick.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = {accept = {'screwdriverset'}, reward = 'advancedlockpick', anim = {['dict'] = 'anim@amb@business@weed@weed_inspecting_high_dry@', ['lib'] = 'weed_inspecting_high_base_inspector', ['text'] = 'Crafting lockpick', ['timeOut'] = 7500,}},   ['description'] = 'Very useful if you lose your keys a lot.. or if you want to use it for something else...'},
	['advancedlockpick'] 			 = {['name'] = 'advancedlockpick', 			 	['label'] = 'Advanced Lockpick', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'advancedlockpick.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'If you lose your keys a lot this is very useful... Also useful to open your beers'},
	['repairkit'] 					 = {['name'] = 'repairkit', 			 	  	['label'] = 'Repairkit', 				['weight'] = 2500, 		['type'] = 'item', 		['image'] = 'repairkit.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A nice toolbox with stuff to repair your vehicle'},
	['advancedrepairkit'] 			 = {['name'] = 'advancedrepairkit', 			['label'] = 'Advanced Repairkit', 		['weight'] = 4000, 		['type'] = 'item', 		['image'] = 'advancedkit.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A nice toolbox with stuff to repair your vehicle'},
	['cleaningkit'] 				 = {['name'] = 'cleaningkit', 			 	  	['label'] = 'Cleaning Kit', 			['weight'] = 250, 		['type'] = 'item', 		['image'] = 'cleaningkit.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A microfiber cloth with some soap will let your car sparkle again!'},
	['screwdriverset'] 				 = {['name'] = 'screwdriverset', 			    ['label'] = 'Toolkit', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'screwdriverset.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Very useful to screw... screws...'},
	['drill'] 				 		 = {['name'] = 'drill', 			    		['label'] = 'Drill', 					['weight'] = 20000, 	['type'] = 'item', 		['image'] = 'drill.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'The real deal...'},
	['weed_white-widow'] 			 = {['name'] = 'weed_white-widow', 			 	['label'] = 'White Widow 2g', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed-baggie.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed bag with 2g White Widow'},
	['weed_skunk'] 				  	 = {['name'] = 'weed_skunk', 			 		['label'] = 'Skunk 2g', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed-baggie.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed bag with 2g Skunk'},
	['weed_purple-haze'] 			 = {['name'] = 'weed_purple-haze', 			 	['label'] = 'Purple Haze 2g', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed-baggie.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed bag with 2g Purple Haze'},
	['weed_og-kush'] 				 = {['name'] = 'weed_og-kush', 			 		['label'] = 'OGKush 2g', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed-baggie.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed bag with 2g OG Kush'},
	['weed_amnesia'] 				 = {['name'] = 'weed_amnesia', 			 		['label'] = 'Amnesia 2g', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed-baggie.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed bag with 2g Amnesia'},
	['weed_ak47'] 				     = {['name'] = 'weed_ak47', 			 		['label'] = 'AK47 2g', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed-baggie.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed bag with 2g AK47'},
	['weed_white-widow_seed'] 		 = {['name'] = 'weed_white-widow_seed', 		['label'] = 'White Widow Seed', 		['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed-plant-seed.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A weed seed of White Widow'},
	['weed_skunk_seed'] 			 = {['name'] = 'weed_skunk_seed', 			    ['label'] = 'Skunk Seed', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed-plant-seed.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A weed seed of Skunk'},
	['weed_purple-haze_seed'] 		 = {['name'] = 'weed_purple-haze_seed', 		['label'] = 'Purple Haze Seed', 		['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed-plant-seed.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A weed seed of Purple Haze'},
	['weed_og-kush_seed'] 			 = {['name'] = 'weed_og-kush_seed', 			['label'] = 'OGKush Seed', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed-plant-seed.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A weed seed of OG Kush'},
	['weed_amnesia_seed'] 			 = {['name'] = 'weed_amnesia_seed', 			['label'] = 'Amnesia Seed', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed-plant-seed.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A weed seed of Amnesia'},
	['weed_ak47_seed'] 				 = {['name'] = 'weed_ak47_seed', 			    ['label'] = 'AK47 Seed', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed-plant-seed.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A weed seed of AK47'},
	['empty_weed_bag'] 				 = {['name'] = 'empty_weed_bag', 			    ['label'] = 'Empty Weed Bag', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed-empty-bag.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A small empty bag'},
	['weed_nutrition'] 				 = {['name'] = 'weed_nutrition', 			    ['label'] = 'Plant Fertilizer', 		['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'weed_nutrition.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Plant nutrition'},
	['handcuffs'] 				 	 = {['name'] = 'handcuffs', 			    	['label'] = 'Handcuffs', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'handcuffs.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Comes in handy when people misbehave. Maybe it can be used for something else?'},
	['tunerlaptop'] 				 = {['name'] = 'tunerlaptop', 			    	['label'] = 'Tunerchip', 				['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'tunerlaptop.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'With this tunerchip you can get your car on steroids... If you know what you\'re doing'},
	['empty_evidence_bag'] 			 = {['name'] = 'empty_evidence_bag', 			['label'] = 'Empty Evidence Bag', 		['weight'] = 0, 		['type'] = 'item', 		['image'] = 'evidence.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Used a lot to keep DNA from blood, bullet shells and more'},
	['filled_evidence_bag'] 		 = {['name'] = 'filled_evidence_bag', 			['label'] = 'Evidence Bag', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'evidence.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'A filled evidence bag to see who committed the crime >:('},
	['armor'] 		 				 = {['name'] = 'armor', 						['label'] = 'Armor', 					['weight'] = 5000, 	    ['type'] = 'item', 		['image'] = 'armor.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Some protection won\'t hurt... right?'},
	['heavyarmor'] 		 			 = {['name'] = 'heavyarmor', 					['label'] = 'Heavy Armor', 				['weight'] = 5000, 	    ['type'] = 'item', 		['image'] = 'armor.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Some protection won\'t hurt... right?'},
	['weed_brick'] 		 			 = {['name'] = 'weed_brick', 					['label'] = 'Weed Brick', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weed_brick.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '1KG Weed Brick to sell to large customers.'},
	['coke_brick'] 		 			 = {['name'] = 'coke_brick', 					['label'] = 'Coke Brick', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'coke_brick.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy package of cocaine, mostly used for deals and takes a lot of space'},
	['coke_small_brick'] 		 	 = {['name'] = 'coke_small_brick', 				['label'] = 'Coke Package', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'coke_small_brick.png', 	['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Small package of cocaine, mostly used for deals and takes a lot of space'},
	['sandwich'] 				 	 = {['name'] = 'sandwich', 			  	  		['label'] = 'Sandwich', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'sandwich.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Nice bread for your stomach'},
	['electronickit'] 				 = {['name'] = 'electronickit', 			  	['label'] = 'Electronic Kit', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'electronickit.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = {accept = {'gatecrack'}, reward = 'trojan_usb', anim = nil}, ['description'] = 'If you\'ve always wanted to build a robot you can maybe start here. Maybe you\'ll be the new Elon Musk?'},
	['gatecrack'] 				 	 = {['name'] = 'gatecrack', 			  	  	['label'] = 'Gatecrack', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'usb_device.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Handy software to tear down some fences'},
	['rolex'] 				 	 	 = {['name'] = 'rolex', 			  	  		['label'] = 'Golden Watch', 			['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'rolex_watch.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A golden watch seems like the jackpot to me!'},
	['diamond_ring'] 				 = {['name'] = 'diamond_ring', 			  	  	['label'] = 'Diamond Ring', 			['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'diamond_ring.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A diamond ring seems like the jackpot to me!'},
	['goldchain'] 				 	 = {['name'] = 'goldchain', 			  	  	['label'] = 'Golden Chain', 			['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'goldchain.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A golden chain seems like the jackpot to me!'},
	['10kgoldchain'] 				 = {['name'] = '10kgoldchain', 			  	  	['label'] = '10k Gold Chain', 			['weight'] = 2000, 		['type'] = 'item', 		['image'] = '10kgoldchain.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = '10 carat golden chain'},
	['trojan_usb'] 				 	 = {['name'] = 'trojan_usb', 			  	  	['label'] = 'Trojan USB', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'usb_device.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Handy software to shut down some systems'},
	['security_card_01'] 			 = {['name'] = 'security_card_01', 			  	['label'] = 'Security Card A', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'security_card_01.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A security card... I wonder what it goes to'},
	['security_card_02'] 			 = {['name'] = 'security_card_02', 			  	['label'] = 'Security Card B', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'security_card_02.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A security card... I wonder what it goes to'},
	['police_stormram'] 			 = {['name'] = 'police_stormram', 			  	['label'] = 'Stormram', 				['weight'] = 18000, 	['type'] = 'item', 		['image'] = 'police_stormram.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A nice tool to break into doors'},
	['rolling_paper'] 			 	 = {['name'] = 'rolling_paper', 			  	['label'] = 'Rolling Paper', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'rolling_paper.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = {accept = {'weed_white-widow', 'weed_skunk', 'weed_purple-haze', 'weed_og-kush', 'weed_amnesia', 'weed_ak47'}, reward = 'joint', anim = {['dict'] = 'anim@amb@business@weed@weed_inspecting_high_dry@', ['lib'] = 'weed_inspecting_high_base_inspector', ['text'] = 'Rolling joint', ['timeOut'] = 5000,}},   ['description'] = 'Paper made specifically for encasing and smoking tobacco or cannabis.'},
	['radio'] 			 	 		 = {['name'] = 'radio', 			  			['label'] = 'Radio', 					['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'radio.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'You can communicate with this through a signal'},
	['stickynote'] 			 	 	 = {['name'] = 'stickynote', 			  		['label'] = 'Sticky note', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'stickynote.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Sometimes handy to remember something :)'},
	['phone'] 			 	 	 	 = {['name'] = 'phone', 			  			['label'] = 'Phone', 					['weight'] = 700, 		['type'] = 'item', 		['image'] = 'phone.png', 				['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Neat phone ya got there'},
	['fitbit'] 			 	 	 	 = {['name'] = 'fitbit', 			  			['label'] = 'Fitbit', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'fitbit.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'I like fitbit'},
	['thermite'] 			 	 	 = {['name'] = 'thermite', 			  			['label'] = 'Thermite', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'thermite.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Sometimes you\'d wish for everything to burn'},
	['goldbar'] 			 	 	 = {['name'] = 'goldbar', 			  			['label'] = 'Gold Bar', 				['weight'] = 7000, 	    ['type'] = 'item', 		['image'] = 'goldbar.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Looks pretty expensive to me'},
    ['cryptostick'] 			 	 = {['name'] = 'cryptostick', 			  		['label'] = 'Crypto Stick', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'cryptostick.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Why would someone ever buy money that doesn\'t exist.. How many would it contain..?'},
    ['radioscanner'] 			 	 = {['name'] = 'radioscanner', 			  		['label'] = 'Radio Scanner', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'radioscanner.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'With this you can get some police alerts. Not 100% effective however'},
    ['dendrogyra_coral'] 			 = {['name'] = 'dendrogyra_coral', 			  	['label'] = 'Dendrogyra', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'dendrogyra_coral.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Its also known as pillar coral'},
    ['antipatharia_coral'] 			 = {['name'] = 'antipatharia_coral', 			['label'] = 'Antipatharia', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'antipatharia_coral.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Its also known as black corals or thorn corals'},
    ['jerry_can'] 			 		 = {['name'] = 'jerry_can', 					['label'] = 'Jerrycan 20L', 			['weight'] = 20000, 	['type'] = 'item', 		['image'] = 'jerry_can.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A can full of Fuel'},
	['moneybag'] 			 		 = {['name'] = 'moneybag', 						['label'] = 'Money Bag', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'moneybag.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A bag with cash'},
	['diving_gear'] 			     = {['name'] = 'diving_gear', 					['label'] = 'Diving Gear', 				['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'diving_gear.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'An oxygen tank and a rebreather'},
	['parachute'] 			   		 = {['name'] = 'parachute', 					['label'] = 'Parachute', 				['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'parachute.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The sky is the limit! Woohoo!'},
	['snspistol_part_1'] 			 = {['name'] = 'snspistol_part_1', 				['label'] = 'SNS Loop', 				['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'snspistol_part_1.png', 	['unique'] = true, 	    ['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Loop of a SNS Pistol'},
	['snspistol_part_2'] 			 = {['name'] = 'snspistol_part_2', 				['label'] = 'SNS Trigger', 				['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'snspistol_part_2.png', 	['unique'] = true, 	    ['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Trigger of a SNS Pistol'},
	['snspistol_part_3'] 			 = {['name'] = 'snspistol_part_3', 				['label'] = 'SNS Clip', 				['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'snspistol_part_3.png', 	['unique'] = true, 	    ['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = {accept = {'snspistol_part_1'}, reward = 'snspistol_stage_1', anim = {['dict'] = 'anim@amb@business@weed@weed_inspecting_high_dry@', ['lib'] = 'weed_inspecting_high_base_inspector', ['text'] = 'Atttaching attachments', ['timeOut'] = 15000,}},   ['description'] = 'Clip of a SNS Pistol'},
	['snspistol_stage_1'] 			 = {['name'] = 'snspistol_stage_1', 			['label'] = 'SNS Body', 				['weight'] = 2500, 		['type'] = 'item', 		['image'] = 'snspistol_stage_1.png', 	['unique'] = true, 	    ['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = {accept = {'snspistol_part_2'}, reward = 'weapon_snspistol', anim = {['dict'] = 'anim@amb@business@weed@weed_inspecting_high_dry@', ['lib'] = 'weed_inspecting_high_base_inspector', ['text'] = 'Attaching attachments', ['timeOut'] = 15000,}}, ['description'] = 'SNS w/ Loop & Clip'},
	['bandage'] 			 		 = {['name'] = 'bandage', 						['label'] = 'Bandage', 					['weight'] = 0, 		['type'] = 'item', 		['image'] = 'bandage.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A bandage works every time'},
	['painkillers'] 			 	 = {['name'] = 'painkillers', 					['label'] = 'Painkillers', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'painkillers.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'For pain you can\'t stand anymore, take this pill that\'d make you feel great again'},
	['binoculars'] 			 	 	 = {['name'] = 'binoculars', 					['label'] = 'Binoculars', 				['weight'] = 600, 		['type'] = 'item', 		['image'] = 'binoculars.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Sneaky Breaky...'},
	['snowball'] 		     		 = {['name'] = 'snowball', 		 	  			['label'] = 'Snowball', 				['weight'] = 0, 		['type'] = 'item', 	 	['image'] = 'snowball.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Should have catched it :D'},
	['firework1'] 				 	 = {['name'] = 'firework1', 			  	  	['label'] = '2Brothers', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'firework1.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Fireworks'},
	['firework2'] 				 	 = {['name'] = 'firework2', 			  	  	['label'] = 'Poppelers', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'firework2.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Fireworks'},
	['firework3'] 				 	 = {['name'] = 'firework3', 			  	  	['label'] = 'WipeOut', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'firework3.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Fireworks'},
	['firework4'] 				 	 = {['name'] = 'firework4', 			  	  	['label'] = 'Weeping Willow', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'firework4.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Fireworks'},
	['iphone'] 				 	 	 = {['name'] = 'iphone', 			  	  		['label'] = 'iPhone', 				    ['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'iphone.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Very expensive phone'},
	['samsungphone'] 				 = {['name'] = 'samsungphone', 			  	  	['label'] = 'Samsung S10', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'samsungphone.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Very expensive phone'},
	['laptop'] 				 		 = {['name'] = 'laptop', 			  	  		['label'] = 'Laptop', 					['weight'] = 4000, 		['type'] = 'item', 		['image'] = 'laptop.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Expensive laptop'},
	['tablet'] 				 		 = {['name'] = 'tablet', 			  	  		['label'] = 'Tablet', 					['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'tablet.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Expensive tablet'},
	['lighter'] 				 	 = {['name'] = 'lighter', 			  	  		['label'] = 'Lighter', 					['weight'] = 0, 		['type'] = 'item', 		['image'] = 'lighter.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'On new years eve a nice fire to stand next to'},
	['certificate'] 				 = {['name'] = 'certificate', 			  	  	['label'] = 'Certificate', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'certificate.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Certificate that proves you own certain stuff'},
	['nitrous'] 				 	 = {['name'] = 'nitrous', 			  	  		['label'] = 'Nitrous', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'nitrous.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Speed up, gas pedal! :D'},
	['walkstick'] 				 	 = {['name'] = 'walkstick', 			  	  	['label'] = 'Walking Stick', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'walkstick.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Walking stick for ya\'ll grannies out there.. HAHA'},
	['harness'] 				 	 = {['name'] = 'harness', 			  	  		['label'] = 'Race Harness', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'harness.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Racing Harness so no matter what you stay in the car'},
	['markedbills'] 				 = {['name'] = 'markedbills', 			  	  	['label'] = 'Marked Money', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'markedbills.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Money?'},
	['labkey'] 			 			 = {['name'] = 'labkey', 						['label'] = 'Key', 						['weight'] = 500, 		['type'] = 'item', 		['image'] = 'labkey.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Key for a lock...?'},
	['pinger'] 			 			 = {['name'] = 'pinger', 						['label'] = 'Pinger', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pinger.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'With a pinger and your phone you can send out your location'},
	['firstaid'] 			 		 = {['name'] = 'firstaid', 						['label'] = 'First Aid', 				['weight'] = 2500, 		['type'] = 'item', 		['image'] = 'firstaid.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'You can use this First Aid kit to get people back on their feet'},
	['printerdocument'] 			 = {['name'] = 'printerdocument', 				['label'] = 'Document', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'printerdocument.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A nice document'},
	['weaponlicense'] 				 = {['name'] = 'weaponlicense',				    ['label'] = 'Weapon License',			['weight'] = 0,			['type'] = 'item',		['image'] = 'weapon_license.png',		['unique'] = true,		['useable'] = true,		['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Weapon License'},
	['oxy'] 				 		 = {['name'] = 'oxy',				    		['label'] = 'Prescription Oxy',			['weight'] = 0,			['type'] = 'item',		['image'] = 'oxy.png',					['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'The Label Has Been Ripped Off'},
	['visa'] 					 	 = {['name'] = 'visa', 			 	  	  		['label'] = 'Visa Card', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'visacard.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Visa can be used via ATM'},
	['mastercard'] 					 = {['name'] = 'mastercard', 					['label'] = 'Master Card', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'mastercard.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'MasterCard can be used via ATM'},
	['ephedrine'] 					 = {['name'] = 'ephedrine', 					['label'] = 'Ephedrine', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'chemical1.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Prescription medicine used to treat the symptoms of low blood pressure'},
	['hydrochloricacid'] 			 = {['name'] = 'hydrochloricacid', 				['label'] = 'Hydrochloric Acid', 		['weight'] = 200, 		['type'] = 'item', 		['image'] = 'chemical1.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Component of the gastric acid in the digestive systems of most animal species...including humans'},
	['acetone'] 					 = {['name'] = 'acetone', 						['label'] = 'Acetone', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'chemical2.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Breathing moderate amounts for a short amount of time can irritate your nose, throat, lungs and eyes'},
	['puremeth'] 					 = {['name'] = 'puremeth', 						['label'] = 'Pure Meth', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'meth10g.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A baggie of Pure Meth'},
	['meth'] 					 	 = {['name'] = 'meth', 							['label'] = 'Meth', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'meth10g.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A baggie of Meth'},
	['methtray'] 					 = {['name'] = 'methtray', 						['label'] = 'Meth Tray', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'methbrick.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'make some meth'},
	['puremethtray'] 				 = {['name'] = 'puremethtray', 					['label'] = 'Pure Meth Tray', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'methbrick.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'make some meth'},
	['grape'] 					 	 = {['name'] = 'grape', 						['label'] = 'Grape', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'grape.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Mmmmh yummie, grapes'},
	['wine'] 					 	 = {['name'] = 'wine', 							['label'] = 'Wine', 					['weight'] = 300, 		['type'] = 'item', 		['image'] = 'wine.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Some good wine to drink on a fine evening'},
	['grapejuice'] 					 = {['name'] = 'grapejuice', 					['label'] = 'Grape Juice', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'grapejuice.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Grape juice is said to be healthy'},
	['cocaleaf'] 					 = {['name'] = 'cocaleaf', 						['label'] = 'Cocaine Leaf', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'cocaineleaf.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Make that white girl'},
	['fish'] 			 		 	 = {['name'] = 'fish', 							['label'] = 'Fish',                     ['weight'] = 1100,      ['type'] = 'item',      ['image'] = 'fish.png',                 ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A normal fish Tatses pretty good!'},
	['killerwhalemeat'] 			 = {['name'] = 'killerwhalemeat', 				['label'] = 'Killer Whale Meat',        ['weight'] = 1100,      ['type'] = 'item',      ['image'] = 'killerwhalemeat.png',      ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Meat cut from a Killer Whale'},
	['stingraymeat'] 			     = {['name'] = 'stingraymeat', 				    ['label'] = 'Stingray Meat',            ['weight'] = 1111,      ['type'] = 'item',      ['image'] = 'stingraymeat.png',         ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Stingray Meat'},
	['tigersharkmeat'] 			     = {['name'] = 'tigersharkmeat', 				['label'] = 'Tigershark Meat',          ['weight'] = 1111,      ['type'] = 'item',      ['image'] = 'tigersharkmeat.png',       ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Meat cut from a Tigershark'},
	['catfish'] 			         = {['name'] = 'catfish', 				        ['label'] = 'Catfish',                  ['weight'] = 1111,      ['type'] = 'item',      ['image'] = 'catfish.png',              ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A Catfish'},
	['salmon'] 			             = {['name'] = 'salmon', 				        ['label'] = 'Salmon',                   ['weight'] = 1111,      ['type'] = 'item',      ['image'] = 'salmon.png',               ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A Salmon Fish'},
	['largemouthbass'] 			     = {['name'] = 'largemouthbass', 				['label'] = 'Largemouth Bass',          ['weight'] = 1111,      ['type'] = 'item',      ['image'] = 'largemouthbass.png',       ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Fish for Fishing.'},
	['goldfish'] 			         = {['name'] = 'goldfish', 			        	['label'] = 'Goldfish',                 ['weight'] = 1111,      ['type'] = 'item',      ['image'] = 'goldfish.png',             ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A Goldfish... I wonder how he got there...'},
	['redfish'] 			         = {['name'] = 'redfish', 			        	['label'] = 'Redfish',                  ['weight'] = 1111,      ['type'] = 'item',      ['image'] = 'redfish.png',              ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'One fish two fish...'},
	['bluefish'] 			         = {['name'] = 'bluefish', 			        	['label'] = 'Bluefish',                 ['weight'] = 1111,      ['type'] = 'item',      ['image'] = 'bluefish.png',             ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'One fish two fish redfish...'},
	['stripedbass'] 			     = {['name'] = 'stripedbass', 			        ['label'] = 'Striped Bass',             ['weight'] = 1111,      ['type'] = 'item',      ['image'] = 'stripedbass.png',          ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A Striped Bass'},
	['fishingrod'] 			 		 = {['name'] = 'fishingrod', 					['label'] = 'Fishing Rod', 				['weight'] = 5000, 		['type'] = 'item', 		['image'] = 'fishingrod.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fishing rod for adventures with friends!!'},
	['fishingbait'] 			     = {['name'] = 'fishingbait', 					['label'] = 'Fish Bait', 				['weight'] = 400, 		['type'] = 'item', 		['image'] = 'fishbait.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fish bait'},

	-- McDonalds
	["mcd-desert"] 					 = {["name"] = "mcd-desert",     				["label"] = "Ice-Cream Cone",           ["weight"] = 200,       ["type"] = "item", 		["image"] = "icecream.png",          	["unique"] = false, 	["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "IceCream Cone"},
    ["emptyglass"] 					 = {["name"] = "emptyglass",     				["label"] = "emptyglass",               ["weight"] = 200,       ["type"] = "item", 		["image"] = "emptyglass.png",        	["unique"] = false, 	["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Nice bread for your stomach." },
    ["coke"] 						 = {["name"] = "coke",           				["label"] = "coke",                     ["weight"] = 200,       ["type"] = "item", 		["image"] = "coke.png",              	["unique"] = false, 	["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Nice bread for your stomach." },
    ["cutp"] 						 = {["name"] = "cutp",           				["label"] = "Cut Potato",               ["weight"] = 200,       ["type"] = "item", 		["image"] = "cutp.png",              	["unique"] = false, 	["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Nice bread for your stomach." },
    ["mashedp"] 					 = {["name"] = "mashedp",        				["label"] = "Mashed Potato",            ["weight"] = 200,       ["type"] = "item", 		["image"] = "mashedp.png",           	["unique"] = false, 	["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Nice bread for your stomach."},
    ["flour"] 						 = {["name"] = "flour",          				["label"] = "Flour",                    ["weight"] = 1000,      ["type"] = "item", 		["image"] = "flour.png",             	["unique"] = false, 	["useable"] = false,    ["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Flour" },
    ["mcd-wrap"] 					 = {["name"] = "mcd-wrap",       				["label"] = "Veg Wrap",                 ["weight"] = 200,       ["type"] = "item", 		["image"] = "mcd1.png",              	["unique"] = false, 	["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Healthy and packed Wrap."},
    ["mcd-burger"] 					 = {["name"] = "mcd-burger",     				["label"] = "Burger",                   ["weight"] = 200,       ["type"] = "item", 		["image"] = "mcd3.png",              	["unique"] = false, 	["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Healthy and packed Burger."},
    ["mcd-fries"] 					 = {["name"] = "mcd-fries",      				["label"] = "French Fries",             ["weight"] = 200,       ["type"] = "item", 		["image"] = "mcd4.png",              	["unique"] = false, 	["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Healthy and packed Fires."},
    ["cone"] 						 = {["name"] = "cone",           				["label"] = "Empty cone",               ["weight"] = 200,       ["type"] = "item", 		["image"] = "cone.png",              	["unique"] = false, 	["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Nice bread for your stomach."},
    ["mcd-bag"] 					 = {["name"] = "mcd-bag",        				["label"] = "Meal Bag",                 ["weight"] = 200,       ["type"] = "item", 		["image"] = "mcd-bag.png",           	["unique"] = false, 	["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "McDonalds Meal"},
    ["mcd-meal"] 					 = {["name"] = "mcd-meal",       				["label"] = "Meal",                     ["weight"] = 200,       ["type"] = "item", 		["image"] = "mcd2.png",              	["unique"] = false, 	["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Healthy and packed Meal."},
	["sauce"] 						 = {["name"] = "sauce",          				["label"] = "Sauce",                    ["weight"] = 200,       ["type"] = "item", 		["image"] = "sauce.png",             	["unique"] = false, 	["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Sauce."},
    ["bun"] 						 = {["name"] = "bun",            				["label"] = "Bun",                      ["weight"] = 200,       ["type"] = "item", 		["image"] = "bun.png",               	["unique"] = false, 	["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Bun."},
    ["vegpatty"] 					 = {["name"] = "vegpatty",       				["label"] = "Veg Patty",                ["weight"] = 200,       ["type"] = "item", 		["image"] = "vegpatty.png",          	["unique"] = false, 	["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Veg Patty."},
    ["cheese"] 						 = {["name"] = "cheese",         				["label"] = "Cheese",                   ["weight"] = 200,       ["type"] = "item", 		["image"] = "cheese.png",            	["unique"] = false, 	["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Cheese."},
    ["potato"]						 = {["name"] = "potato",         				["label"] = "Potato",                   ["weight"] = 200,       ["type"] = "item", 		["image"] = "potato.png",            	["unique"] = false, 	["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Potato."},
    ["oil"] 						 = {["name"] = "oil",            				["label"] = "Oil",                      ["weight"] = 200,       ["type"] = "item", 		["image"] = "oil.png",               	["unique"] = false, 	["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Oil."},

	--Chicken Job
	["alivechicken"] 				 = {["name"] = "alivechicken", 			  	  	["label"] = "alivechicken", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "alivechicken.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
	["packagedchicken"] 			 = {["name"] = "packagedchicken", 			  	["label"] = "packagedchicken", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "packagedchicken.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},
	["slaughteredchicken"] 			 = {["name"] = "slaughteredchicken", 			["label"] = "slaughteredchicken", 		["weight"] = 500, 		["type"] = "item", 		["image"] = "slaughteredchicken.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "For all the thirsty out there"},

	--vRP_Meth
	["blue_meth"] 				     = {["name"] = "blue_meth", 			        ["label"] = "Blue Meth", 				["weight"] = 2000, 		["type"] = "item", 		["image"] = "blue_meth.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Blue Meth SON!"},
    ["hydrochloric"] 			     = {["name"] = "hydrochloric", 				    ["label"] = "Hydrochloric", 			["weight"] = 2, 		["type"] = "item", 		["image"] = "hydrochloric.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Hydrochloric"},
    ["hydrochloric_bottle"] 		 = {["name"] = "hydrochloric_bottle", 			["label"] = "Hydrochloric Bottle", 		["weight"] = 2, 		["type"] = "item", 		["image"] = "hydrochloric_bottle.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Hydrochloric Bottle"},
    ["sodiumhydroxide"] 			 = {["name"] = "sodiumhydroxide", 				["label"] = "Sodium hydroxide", 		["weight"] = 2, 		["type"] = "item", 		["image"] = "sodiumhydroxide.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "sodium hydroxide"},
    ["sulfuricacid"] 				 = {["name"] = "sulfuricacid", 				    ["label"] = "Sulfuric acid", 			["weight"] = 2, 		["type"] = "item", 		["image"] = "sulfuricacid.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "sulfuri cacid"},
    ["sulfuricacid_bottle"] 		 = {["name"] = "sulfuricacid_bottle", 			["label"] = "Sulfuric acid bottle", 	["weight"] = 2, 		["type"] = "item", 		["image"] = "sulfuricacid_bottle.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "bottle of sulfuric bottle"},
	--Mining
	['diamond'] 					 = {['name'] = 'diamond', 			  	  		['label'] = 'Diamond', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'diamond.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Nice piece of metal that you can probably use for something'},
	['emerald'] 					 = {['name'] = 'emerald', 			  	  		['label'] = 'Emerald', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'emerald.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Nice piece of metal that you can probably use for something'},
	--Casino
	["member"]						 = {["name"] = "member",						["label"] = "Casino Membership",		["weight"] = 500,		["type"] = "item",		["image"] = "member.png",				["unique"] = false,		["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["description"] = "Diamond Casino Member Card"},
	["vip"]							 = {["name"] = "vip",							["label"] = "V.I.P Membership",			["weight"] = 500,		["type"] = "item",		["image"] = "vip.png",					["unique"] = false,		["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["description"] = "Diamond Casino V.I.P Card"},
	['goldchip'] 				 	 = {['name'] = 'goldchip', 			  			['label'] = 'Gold Casino Chips', 		['weight'] = 1, 		['type'] = 'item', 		['image'] = 'goldpokerchips.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'Gold Chips For Casino Gambling'},
	['blackchip'] 			 		 = {['name'] = 'blackchip', 			  		['label'] = 'Black Casino Chips', 		['weight'] = 1, 		['type'] = 'item', 		['image'] = 'blackpokerchips.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'Black Chips For Casino Gambling'},
	['bluechip'] 				 	 = {['name'] = 'bluechip', 			  			['label'] = 'Blue Casino Chips', 		['weight'] = 1, 		['type'] = 'item', 		['image'] = 'bluepokerchips.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'Blue Chips For Casino Gambling'},
	['redchip'] 				 	 = {['name'] = 'redchip', 			  			['label'] = 'Red Casino Chips', 		['weight'] = 1, 		['type'] = 'item', 		['image'] = 'redpokerchips.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'Red Chips For Casino Gambling'},
	['whitechip'] 			 	     = {['name'] = 'whitechip', 			  		['label'] = 'White Casino Chips', 		['weight'] = 1, 		['type'] = 'item', 		['image'] = 'whitepokerchips.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'White Chips For Casino Gambling'},
}

-- // HASH WEAPON ITEMS, NEED SOMETIMES TO GET INFO FOR CLIENT

QBShared.Weapons = {
	-- // WEAPONS
	-- Melee
	[`weapon_unarmed`] 				 = {['name'] = 'weapon_unarmed', 		 	  	['label'] = 'Fists', 					['weight'] = 1000, 		['type'] = 'weapon',	['ammotype'] = nil, 					['image'] = 'placeholder.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'Fisticuffs'},
	[`weapon_dagger`] 				 = {['name'] = 'weapon_dagger', 			 	['label'] = 'Dagger', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_dagger.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A short knife with a pointed and edged blade, used as a weapon'},
	[`weapon_bat`] 					 = {['name'] = 'weapon_bat', 			 	  	['label'] = 'Bat', 					    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_bat.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'Used for hitting a ball in sports (or other things)'},
	[`weapon_bottle`] 				 = {['name'] = 'weapon_bottle', 			 	['label'] = 'Broken Bottle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_bottle.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A broken bottle'},
	[`weapon_crowbar`] 				 = {['name'] = 'weapon_crowbar', 		 	  	['label'] = 'Crowbar', 				    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_crowbar.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'An iron bar with a flattened end, used as a lever'},
	[`weapon_flashlight`] 			 = {['name'] = 'weapon_flashlight', 		 	['label'] = 'Flashlight', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_flashlight.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A small size sun that will make things brighter.'},
	[`weapon_golfclub`] 			 = {['name'] = 'weapon_golfclub', 		 	  	['label'] = 'Golfclub', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_golfclub.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A club used to hit the ball in golf'},
	[`weapon_hammer`] 				 = {['name'] = 'weapon_hammer', 			 	['label'] = 'Hammer', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_hammer.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'Used for jobs such as breaking things (legs) and driving in nails'},
	[`weapon_hatchet`] 				 = {['name'] = 'weapon_hatchet', 		 	  	['label'] = 'Hatchet', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_hatchet.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small axe with a short handle for use in one hand'},
	[`weapon_knuckle`] 				 = {['name'] = 'weapon_knuckle', 		 	  	['label'] = 'Knuckle', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_knuckle.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A metal guard worn over the knuckles in fighting, especially to increase the effect of the blows'},
	[`weapon_knife`] 				 = {['name'] = 'weapon_knife', 			 	  	['label'] = 'Knife', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_knife.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'An instrument composed of a blade fixed into a handle, used for cutting or as a weapon'},
	[`weapon_machete`] 				 = {['name'] = 'weapon_machete', 		 	  	['label'] = 'Machete', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_machete.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A broad, heavy knife used as a weapon'},
	[`weapon_switchblade`] 			 = {['name'] = 'weapon_switchblade', 	 	  	['label'] = 'Switchblade', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_switchblade.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A knife with a blade that springs out from the handle when a button is pressed'},
	[`weapon_nightstick`] 			 = {['name'] = 'weapon_nightstick', 		 	['label'] = 'Nightstick', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_nightstick.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A police officer\'s club or billy'},
	[`weapon_wrench`] 				 = {['name'] = 'weapon_wrench', 			 	['label'] = 'Wrench', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_wrench.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A tool used for gripping and turning nuts, bolts, pipes, etc'},
	[`weapon_battleaxe`] 			 = {['name'] = 'weapon_battleaxe', 		 	  	['label'] = 'Battle Axe', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_battleaxe.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A large broad-bladed axe used in ancient warfare'},
	[`weapon_poolcue`] 				 = {['name'] = 'weapon_poolcue', 		 	  	['label'] = 'Poolcue', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_poolcue.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A stick used to strike a ball, usually the cue ball (sometimes)'},
	[`weapon_briefcase`] 			 = {['name'] = 'weapon_briefcase', 		 	  	['label'] = 'Briefcase', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_briefcase.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A briefcase'},
	[`weapon_briefcase_02`] 		 = {['name'] = 'weapon_briefcase_02', 	 	  	['label'] = 'Briefcase', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_briefcase2.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A briefcase'},
	[`weapon_garbagebag`] 			 = {['name'] = 'weapon_garbagebag', 		 	['label'] = 'Garbage Bag', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_garbagebag.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A garbage bag'},
	[`weapon_handcuffs`] 			 = {['name'] = 'weapon_handcuffs', 		 	  	['label'] = 'Handcuffs', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_handcuffs.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A pair of lockable linked metal rings for securing a prisoner\'s wrists'},
	[`weapon_bread`] 				 = {['name'] = 'weapon_bread', 				 	['label'] = 'Baquette', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'baquette.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'Bread..?'},
	[`weapon_stone_hatchet`] 		 = {['name'] = 'weapon_stone_hatchet', 		 	['label'] = 'Weapon Stone Hatchet', 	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'stone_hatchet.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Stone ax'},

    -- Handguns
	[`weapon_pistol`] 				 = {['name'] = 'weapon_pistol', 			 	['label'] = 'Walther P99', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_pistol.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small firearm designed to be held in one hand'},
	[`weapon_pistol_mk2`] 			 = {['name'] = 'weapon_pistol_mk2', 			['label'] = 'Pistol Mk II', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_pistolmk2.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An upgraded small firearm designed to be held in one hand'},
	[`weapon_combatpistol`] 		 = {['name'] = 'weapon_combatpistol', 	 	  	['label'] = 'Combat Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_combatpistol.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A combat version small firearm designed to be held in one hand'},
	[`weapon_appistol`] 			 = {['name'] = 'weapon_appistol', 		 	  	['label'] = 'AP Pistol', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_appistol.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small firearm designed to be held in one hand that is automatic'},
	[`weapon_stungun`] 				 = {['name'] = 'weapon_stungun', 		 	  	['label'] = 'Taser', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_taser.png', 		 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A weapon firing barbs attached by wires to batteries, causing temporary paralysis'},
	[`weapon_pistol50`] 			 = {['name'] = 'weapon_pistol50', 		 	  	['label'] = 'Pistol .50 Cal', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_pistol50.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A .50 caliber firearm designed to be held with both hands'},
	[`weapon_snspistol`] 			 = {['name'] = 'weapon_snspistol', 		 	  	['label'] = 'SNS Pistol', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_snspistol.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A very small firearm designed to be easily concealed'},
	[`weapon_heavypistol`] 			 = {['name'] = 'weapon_heavypistol', 	 	  	['label'] = 'Heavy Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_heavypistol.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A hefty firearm designed to be held in one hand (or attempted)'},
	[`weapon_vintagepistol`] 		 = {['name'] = 'weapon_vintagepistol', 	 	  	['label'] = 'Vintage Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_vintagepistol.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'An antique firearm designed to be held in one hand'},
	[`weapon_flaregun`] 			 = {['name'] = 'weapon_flaregun', 		 	  	['label'] = 'Flare Gun', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_FLARE',			['image'] = 'weapon_flaregun.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A handgun for firing signal rockets'},
	[`weapon_marksmanpistol`] 		 = {['name'] = 'weapon_marksmanpistol', 	 	['label'] = 'Marksman Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_marksmanpistol.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A very accurate small firearm designed to be held in one hand'},
	[`weapon_revolver`] 			 = {['name'] = 'weapon_revolver', 		 	  	['label'] = 'Revolver', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_revolver.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A pistol with revolving chambers enabling several shots to be fired without reloading'},
	[`weapon_revolver_mk2`] 		 = {['name'] = 'weapon_revolver_mk2', 		 	['label'] = 'Violence', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'revolvermk2.png', 			['unique'] = true, 		['useable'] = true, 	['description'] = 'da Violence'},
	[`weapon_doubleaction`] 	     = {['name'] = 'weapon_doubleaction', 		 	['label'] = 'Double Action Revolver', 	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'doubleaction.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Double Action Revolver'},
	[`weapon_snspistol_mk2`] 	     = {['name'] = 'weapon_snspistol_mk2', 		 	['label'] = 'SNS Pistol MK2', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'snspistol_mk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'SNS Pistol MK2'},
	[`weapon_raypistol`]			 = {['name'] = 'weapon_raypistol',				['label'] = 'Weapon Raypistol',			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_raypistol.png',		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Raypistol'},
	[`weapon_ceramicpistol`]		 = {['name'] = 'weapon_ceramicpistol', 		 	['label'] = 'Weapon Ceramicpistol',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_ceramicpistol.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Ceramicpistol'},
	[`weapon_navyrevolver`]        	 = {['name'] = 'weapon_navyrevolver', 		 	['label'] = 'Weapon Navyrevolver',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_navyrevolver.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Navyrevolver'},
	[`weapon_gadgetpistol`] 		 = {['name'] = 'weapon_gadgetpistol', 		 	['label'] = 'Weapon Gadgetpistol',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_gadgetpistol.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Gadgetpistol'},

    -- Submachine Guns
	[`weapon_microsmg`] 			 = {['name'] = 'weapon_microsmg', 		 	  	['label'] = 'Micro SMG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_microsmg.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A handheld lightweight machine gun'},
	[`weapon_smg`] 				 	 = {['name'] = 'weapon_smg', 			 	  	['label'] = 'SMG', 						['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_smg.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'A handheld lightweight machine gun'},
	[`weapon_smg_mk2`] 				 = {['name'] = 'weapon_smg_mk2', 			 	['label'] = 'PD MP5 2', 				['weight'] = 1000,		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'smg.png', 					['unique'] = true, 		['useable'] = true, 	['description'] = 'SMG MK2'},
	[`weapon_assaultsmg`] 			 = {['name'] = 'weapon_assaultsmg', 		 	['label'] = 'Assault SMG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_assaultsmg.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An assault version of a handheld lightweight machine gun'},
	[`weapon_combatpdw`] 			 = {['name'] = 'weapon_combatpdw', 		 	  	['label'] = 'Combat PDW', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_combatpdw.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A combat version of a handheld lightweight machine gun'},
	[`weapon_machinepistol`] 		 = {['name'] = 'weapon_machinepistol', 	 	  	['label'] = 'Tec-9', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_machinepistol.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'A self-loading pistol capable of burst or fully automatic fire'},
	[`weapon_minismg`] 				 = {['name'] = 'weapon_minismg', 		 	  	['label'] = 'Mini SMG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_minismg.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A mini handheld lightweight machine gun'},
	[`weapon_raycarbine`]	         = {['name'] = 'weapon_raycarbine', 		 	['label'] = 'Weapon Raycarbine',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_raycarbine.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Raycarbine'},

    -- Shotguns
	[`weapon_pumpshotgun`] 			 = {['name'] = 'weapon_pumpshotgun', 	 	  	['label'] = 'Pump Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_pumpshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A pump-action smoothbore gun for firing small shot at short range'},
	[`weapon_sawnoffshotgun`] 		 = {['name'] = 'weapon_sawnoffshotgun', 	 	['label'] = 'Sawn-off Shotgun', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_sawnoffshotgun.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A sawn-off smoothbore gun for firing small shot at short range'},
	[`weapon_assaultshotgun`] 		 = {['name'] = 'weapon_assaultshotgun', 	 	['label'] = 'Assault Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_assaultshotgun.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'An assault version of asmoothbore gun for firing small shot at short range'},
	[`weapon_bullpupshotgun`] 		 = {['name'] = 'weapon_bullpupshotgun', 	 	['label'] = 'Bullpup Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_bullpupshotgun.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A compact smoothbore gun for firing small shot at short range'},
	[`weapon_musket`] 			     = {['name'] = 'weapon_musket', 			 	['label'] = 'Musket', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_musket.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'An infantryman\'s light gun with a long barrel, typically smooth-bored, muzzleloading, and fired from the shoulder'},
	[`weapon_heavyshotgun`] 		 = {['name'] = 'weapon_heavyshotgun', 	 	  	['label'] = 'Heavy Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_heavyshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A large smoothbore gun for firing small shot at short range'},
	[`weapon_dbshotgun`] 			 = {['name'] = 'weapon_dbshotgun', 		 	  	['label'] = 'Double-barrel Shotgun', 	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_dbshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A shotgun with two parallel barrels, allowing two single shots to be fired in quick succession'},
	[`weapon_autoshotgun`] 			 = {['name'] = 'weapon_autoshotgun', 	 	  	['label'] = 'Auto Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_autoshotgun.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A shotgun capable of rapid continous fire'},
	[`weapon_pumpshotgun_mk2`]		 = {['name'] = 'weapon_pumpshotgun_mk2',		['label'] = 'Pumpshotgun MK2', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'pumpshotgun_mk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Pumpshotgun MK2'},
	[`weapon_combatshotgun`]		 = {['name'] = 'weapon_combatshotgun', 		 	['label'] = 'Weapon Combatshotgun',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'combatshotgun.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Combatshotgun'},

    -- Assault Rifles
	[`weapon_assaultrifle`] 		 = {['name'] = 'weapon_assaultrifle', 	 	  	['label'] = 'Assault Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_assaultrifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A rapid-fire, magazine-fed automatic rifle designed for infantry use'},
	[`weapon_assaultrifle_mk2`] 	 = {['name'] = 'weapon_assaultrifle_mk2', 	 	['label'] = 'AK-47 MK2', 				['weight'] = 1000,		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'assaultriflemk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Assault Rifle MK2'},
	[`weapon_carbinerifle`] 		 = {['name'] = 'weapon_carbinerifle', 	 	  	['label'] = 'Carbine Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_carbinerifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A lightweight automatic rifle'},
    [`weapon_carbinerifle_mk2`] 	 = {['name'] = 'weapon_carbinerifle_mk2', 	 	['label'] = 'PD 762', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'carbineriflemk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Carbine Rifle MK2'},
	[`weapon_advancedrifle`] 		 = {['name'] = 'weapon_advancedrifle', 	 	  	['label'] = 'Advanced Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_advancedrifle.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'An assault version of a rapid-fire, magazine-fed automatic rifle designed for infantry use'},
	[`weapon_specialcarbine`] 		 = {['name'] = 'weapon_specialcarbine', 	 	['label'] = 'Special Carbine', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_specialcarbine.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'An extremely versatile assault rifle for any combat situation'},
	[`weapon_bullpuprifle`] 		 = {['name'] = 'weapon_bullpuprifle', 	 	  	['label'] = 'Bullpup Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_bullpuprifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A compact automatic assault rifle'},
	[`weapon_compactrifle`] 		 = {['name'] = 'weapon_compactrifle', 	 	  	['label'] = 'Compact Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_compactrifle.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A compact version of an assault rifle'},
	[`weapon_specialcarbine_mk2`]	 = {['name'] = 'weapon_specialcarbine_mk2', 	['label'] = 'Weapon Wpecialcarbine MK2',['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'specialcarbine_mk2.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Wpecialcarbine MK2'},
	[`weapon_bullpuprifle_mk2`]		 = {['name'] = 'weapon_bullpuprifle_mk2', 		['label'] = 'Bull Puprifle MK2',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'bullpuprifle_mk2.png',		['unique'] = true, 		['useable'] = true, 	['description'] = 'Bull Puprifle MK2'},
	[`weapon_militaryrifle`]		 = {['name'] = 'weapon_militaryrifle', 		 	['label'] = 'Weapon Militaryrifle',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'militaryrifle.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Militaryrifle'},

    -- Light Machine Guns
	[`weapon_mg`] 					 = {['name'] = 'weapon_mg', 				 	['label'] = 'Machinegun', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_mg.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'An automatic gun that fires bullets in rapid succession for as long as the trigger is pressed'},
	[`weapon_combatmg`] 			 = {['name'] = 'weapon_combatmg', 		 	  	['label'] = 'Combat MG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_combatmg.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A combat version of an automatic gun that fires bullets in rapid succession for as long as the trigger is pressed'},
	[`weapon_gusenberg`] 			 = {['name'] = 'weapon_gusenberg', 		 	  	['label'] = 'Thompson SMG', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_gusenberg.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An automatic rifle commonly referred to as a tommy gun'},
	[`weapon_combatmg_mk2`]	 		 = {['name'] = 'weapon_combatmg_mk2', 		 	['label'] = 'Weapon Combatmg MK2',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'combatmg_mk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Combatmg MK2'},

    -- Sniper Rifles
	[`weapon_sniperrifle`] 			 = {['name'] = 'weapon_sniperrifle', 	 	  	['label'] = 'Sniper Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_sniperrifle.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A high-precision, long-range rifle'},
	[`weapon_heavysniper`] 			 = {['name'] = 'weapon_heavysniper', 	 	  	['label'] = 'Heavy Sniper', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_heavysniper.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'An upgraded high-precision, long-range rifle'},
	[`weapon_marksmanrifle`] 		 = {['name'] = 'weapon_marksmanrifle', 	 	  	['label'] = 'Marksman Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_marksmanrifle.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'A very accurate single-fire rifle'},
	[`weapon_remotesniper`] 		 = {['name'] = 'weapon_remotesniper', 	 	  	['label'] = 'Remote Sniper', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER_REMOTE',	['image'] = 'weapon_remotesniper.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A portable high-precision, long-range rifle'},
	[`weapon_heavysniper_mk2`]		 = {['name'] = 'weapon_heavysniper_mk2', 		['label'] = 'Weapon Heavysniper MK2',	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'heavysniper_mk2.png', 		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Heavysniper MK2'},
	[`weapon_marksmanrifle_mk2`]	 = {['name'] = 'weapon_marksmanrifle_mk2', 		['label'] = 'Weapon Marksmanrifle MK2',	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'marksmanrifle_mk2.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Marksmanrifle MK2'},

    -- Heavy Weapons
	[`weapon_rpg`] 					 = {['name'] = 'weapon_rpg', 			      	['label'] = 'RPG', 						['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RPG',				['image'] = 'weapon_rpg.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'A rocket-propelled grenade launcher'},
	[`weapon_grenadelauncher`] 		 = {['name'] = 'weapon_grenadelauncher', 	  	['label'] = 'Grenade Launcher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_GRENADELAUNCHER',	['image'] = 'weapon_grenadelauncher.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A weapon that fires a specially-designed large-caliber projectile, often with an explosive, smoke or gas warhead'},
	[`weapon_grenadelauncher_smoke`] = {['name'] = 'weapon_grenadelauncher_smoke', 	['label'] = 'Smoke Grenade Launcher', 	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_GRENADELAUNCHER',	['image'] = 'weapon_smokegrenade.png', 	 ['unique'] = true, 	['useable'] = false, 	['description'] = 'A bomb that produces a lot of smoke when it explodes'},
	[`weapon_minigun`] 				 = {['name'] = 'weapon_minigun', 		      	['label'] = 'Minigun', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MINIGUN',			['image'] = 'weapon_minigun.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A portable machine gun consisting of a rotating cluster of six barrels and capable of variable rates of fire of up to 6,000 rounds per minute'},
	[`weapon_firework`] 			 = {['name'] = 'weapon_firework', 		 	  	['label'] = 'Firework Launcher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_firework.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A device containing gunpowder and other combustible chemicals that causes a spectacular explosion when ignited'},
	[`weapon_railgun`] 				 = {['name'] = 'weapon_railgun', 		 	  	['label'] = 'Railgun', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_railgun.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A weapon that uses electromagnetic force to launch high velocity projectiles'},
	[`weapon_hominglauncher`] 		 = {['name'] = 'weapon_hominglauncher', 	 	['label'] = 'Homing Launcher', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_STINGER',			['image'] = 'weapon_hominglauncher.png', ['unique'] = true, 	['useable'] = false, 	['description'] = 'A weapon fitted with an electronic device that enables it to find and hit a target'},
	[`weapon_compactlauncher`] 		 = {['name'] = 'weapon_compactlauncher',  	  	['label'] = 'Compact Launcher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_compactlauncher.png', 	['unique'] = true, 	['useable'] = false, 	['description'] = 'A compact grenade launcher'},
	[`weapon_rayminigun`]			 = {['name'] = 'weapon_rayminigun', 		 	['label'] = 'Weapon Rayminigun',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MINIGUN',			['image'] = 'weapon_rayminigun.png',	['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Rayminigun'},

    -- Throwables
	[`weapon_grenade`] 				 = {['name'] = 'weapon_grenade', 		      	['label'] = 'Grenade', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_grenade.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A handheld throwable bomb'},
	[`weapon_bzgas`] 				 = {['name'] = 'weapon_bzgas', 			      	['label'] = 'BZ Gas', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_bzgas.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A cannister of gas that causes extreme pain'},
	[`weapon_molotov`] 				 = {['name'] = 'weapon_molotov', 		      	['label'] = 'Molotov', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_molotov.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A crude bomb made of a bottle filled with a flammable liquid and fitted with a wick for lighting'},
	[`weapon_stickybomb`] 			 = {['name'] = 'weapon_stickybomb', 		    ['label'] = 'C4', 						['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_stickybomb.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'An explosive charge covered with an adhesive that when thrown against an object sticks until it explodes'},
	[`weapon_proxmine`] 			 = {['name'] = 'weapon_proxmine', 		 	  	['label'] = 'Proxmine Grenade', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_proximitymine.png', ['unique'] = true, 		['useable'] = false, 	['description'] = 'A bomb placed on the ground that detonates when going within its proximity'},
	[`weapon_snowball`] 		     = {['name'] = 'weapon_snowball', 		 	  	['label'] = 'Snowball', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_snowball.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A ball of packed snow, especially one made for throwing at other people for fun'},
	[`weapon_pipebomb`] 			 = {['name'] = 'weapon_pipebomb', 		 	  	['label'] = 'Pipe Bomb', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_pipebomb.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A homemade bomb, the components of which are contained in a pipe'},
	[`weapon_ball`] 				 = {['name'] = 'weapon_ball', 			 	  	['label'] = 'Ball', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_BALL',				['image'] = 'weapon_ball.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'A solid or hollow spherical or egg-shaped object that is kicked, thrown, or hit in a game'},
	[`weapon_smokegrenade`] 		 = {['name'] = 'weapon_smokegrenade', 	      	['label'] = 'Smoke Grenade', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_c4.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'An explosive charge that can be remotely detonated'},
	[`weapon_flare`] 				 = {['name'] = 'weapon_flare', 			 	  	['label'] = 'Flare pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_FLARE',			['image'] = 'weapon_flare.png', 		['unique'] = true, 		['useable'] = false, 	['description'] = 'A small pyrotechnic devices used for illumination and signalling'},

    -- Miscellaneous
	[`weapon_petrolcan`] 			 = {['name'] = 'weapon_petrolcan', 		 	  	['label'] = 'Petrol Can', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PETROLCAN',		['image'] = 'weapon_petrolcan.png', 	['unique'] = true, 		['useable'] = false, 	['description'] = 'A robust liquid container made from pressed steel'},
	[`weapon_fireextinguisher`] 	 = {['name'] = 'weapon_fireextinguisher',      	['label'] = 'Fire Extinguisher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_fireextinguisher.png', 	['unique'] = true, 	['useable'] = false, 	['description'] = 'A portable device that discharges a jet of water, foam, gas, or other material to extinguish a fire'},
	[`weapon_hazardcan`]			 = {['name'] = 'weapon_hazardcan',				['label'] = 'Weapon Hazardcan',			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PETROLCAN',		['image'] = 'weapon_hazardcan.png',		['unique'] = true, 		['useable'] = true, 	['description'] = 'Weapon Hazardcan'},
}

-- Gangs
QBShared.Gangs = {
	['none'] = {
		label = 'No Gang',
		grades = {
            ['0'] = {
                name = 'Unaffiliated'
            },
        },
	},
	['lostmc'] = {
		label = 'The Lost MC',
		grades = {
            ['0'] = {
                name = 'Recruit'
            },
			['1'] = {
                name = 'Enforcer'
            },
			['2'] = {
                name = 'Shot Caller'
            },
			['3'] = {
                name = 'Boss',
				isboss = true
            },
        },
	},
	['ballas'] = {
		label = 'Ballas',
		grades = {
            ['0'] = {
                name = 'Recruit'
            },
			['1'] = {
                name = 'Enforcer'
            },
			['2'] = {
                name = 'Shot Caller'
            },
			['3'] = {
                name = 'Boss',
				isboss = true
            },
        },
	},
	['vagos'] = {
		label = 'Vagos',
		grades = {
            ['0'] = {
                name = 'Recruit'
            },
			['1'] = {
                name = 'Enforcer'
            },
			['2'] = {
                name = 'Shot Caller'
            },
			['3'] = {
                name = 'Boss',
				isboss = true
            },
        },
	},
	['cartel'] = {
		label = 'Cartel',
		grades = {
            ['0'] = {
                name = 'Recruit'
            },
			['1'] = {
                name = 'Enforcer'
            },
			['2'] = {
                name = 'Shot Caller'
            },
			['3'] = {
                name = 'Boss',
				isboss = true
            },
        },
	},
	['families'] = {
		label = 'Families',
		grades = {
            ['0'] = {
                name = 'Recruit'
            },
			['1'] = {
                name = 'Enforcer'
            },
			['2'] = {
                name = 'Shot Caller'
            },
			['3'] = {
                name = 'Boss',
				isboss = true
            },
        },
	},
	['triads'] = {
		label = 'Triads',
		grades = {
            ['0'] = {
                name = 'Recruit'
            },
			['1'] = {
                name = 'Enforcer'
            },
			['2'] = {
                name = 'Shot Caller'
            },
			['3'] = {
                name = 'Boss',
				isboss = true
            },
        },
	}
}

-- Jobs
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 50
            },
        },
	},
	['police'] = {
		label = 'Police',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 500
            },
			['1'] = {
                name = 'Constable',
                payment = 1000
            },
			['2'] = {
                name = 'Sergeant',
                payment = 1700
            },
			['3'] = {
                name = 'Inspector',
                payment = 2000
            },
			['4'] = {
                name = 'Chief Constable ',
				isboss = true,
                payment = 2500
            },
        },
	},
	['ambulance'] = {
		label = 'NHS',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'EMT Paramedic',
                payment = 500
            },
			['1'] = {
                name = 'Senior Paramedic',
                payment = 1250
            },
			['2'] = {
                name = 'Advanced Paramdeic',
                payment = 2000
            },
			['3'] = {
                name = 'Doctor',
                payment = 2500
            },
			['4'] = {
                name = 'Medical Director',
				isboss = true,
                payment = 3000
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 300
            },
			['1'] = {
                name = 'House Sales',
                payment = 400
            },
			['2'] = {
                name = 'Business Sales',
                payment = 600
            },
			['3'] = {
                name = 'Broker',
                payment = 750
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 1000
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 300
            },
			['1'] = {
                name = 'Driver',
                payment = 400
            },
			['2'] = {
                name = 'Event Driver',
                payment = 500
            },
			['3'] = {
                name = 'Sales',
                payment = 600
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 1000
            },
        },
	},
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 300
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 400
            },
			['2'] = {
                name = 'Business Sales',
                payment = 500
            },
			['3'] = {
                name = 'Finance',
                payment = 600
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 1000
            },
        },
	},
	['mechanic'] = {
		label = 'Mechanic',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Apprentice',
                payment = 500
            },
			['1'] = {
                name = 'Trainee',
                payment = 750
            },
			['2'] = {
                name = 'Experienced',
                payment = 1000
            },
			['3'] = {
                name = 'Senior',
                payment = 1250
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 1500
            },
        },
	},
	['judge'] = {
		label = 'Honorary',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Judge',
                payment = 700
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Associate',
                payment = 1000
            },
        },
	},
	['reporter'] = {
		label = 'Reporter',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Journalist',
                payment = 1750
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 350
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 350
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 350
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 350
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Sales',
                payment = 300
            },
        },
	},
	['mcd'] = {
		label = 'McDonalds',
		defaultDuty = true,
		grades = {
			['0'] = {
				label = 'Worker',
				payment = 300
			},
		},
	},
	['mining'] = {
		label = 'Miner',
		defaultDuty = true,
		grades = {
			['0'] = {
				label = 'Worker',
				payment = 250
			},
		},
	},
}

-- Vehicles
QBShared.Vehicles = {
		--##1of1-STAFF##----------##1of1-STAFF##----------##1of1-STAFF##----------##1of1-STAFF##----------##1of1-STAFF##----------##1of1-STAFF##----------##1of1-STAFF##----------##1of1-STAFF##----------##1of1-STAFF##----------##1of1-STAFF##----------##1of1-STAFF##---------------
		["rmodbolide"] = 		{["name"] = "Bugatti Bolide",					["brand"] = "Bugatti",				["model"] = "rmodbolide",			["price"] = 9999999999,		["category"] = "Sports",			["hash"] = "rmodbolide",			["shop"] = "1of1",},
		["2f2fgts"] = 			{["name"] = "Mitsubishi Spyder GTS",			["brand"] = "Mistubushi",			["model"] = "2f2fgts",				["price"] = 9999999999,		["category"] = "Sports",			["hash"] = "2f2fgts",				["shop"] = "1of1",},
		["sclkuz"] = 			{["name"] = "Toyota Land Cruiser ",				["brand"] = "Toyota",				["model"] = "sclkuz",				["price"] = 9999999999,		["category"] = "SUV",				["hash"] = "sclkuz",				["shop"] = "1of1",},
		["rmode63s"] = 			{["name"] = "Mercedes e63s",					["brand"] = "Mercedes",				["model"] = "rmode63s",				["price"] = 9999999999,		["category"] = "Saloon",			["hash"] = "rmode63s",				["shop"] = "1of1",},
		["gtrnismo17"] = 		{["name"] = "Nissan GTR Nismo",					["brand"] = "Nissan",				["model"] = "gtrnismo17",			["price"] = 9999999999,		["category"] = "Saloon",			["hash"] = "gtrnismo17",			["shop"] = "1of1",},
		["eleanor"] = 			{["name"] = "Ford Mustang Shelby GT 500E",		["brand"] = "Ford",					["model"] = "eleanor",				["price"] = 9999999999,		["category"] = "Muscle",			["hash"] = "eleanor",				["shop"] = "1of1",},
		--##1of1-SALE##----------##1of1-SALE##----------##1of1-SALE##----------##1of1-SALE##----------##1of1-SALE##----------##1of1-SALE##----------##1of1-SALE##----------##1of1-SALE##----------##1of1-SALE##----------##1of1-SALE##----------##1of1-SALE##----------##1of1-SALE##---
		["keenblock"] = 		{["name"] = "Ford Mustang Keen Block Hoonigan",	["brand"] = "Ford",					["model"] = "keenblock",			["price"] = 30,				["category"] = "Saloon",			["hash"] = "keenblock",				["shop"] = "1of1",},
		["fdstang"] = 			{["name"] = "Ford Mustang RTR",					["brand"] = "Ford",					["model"] = "fdstang",				["price"] = 30,				["category"] = "Muscle",			["hash"] = "fdstang",				["shop"] = "1of1",},
		["rmodbugatti"] = 		{["name"] = "Bugatti Chirone",					["brand"] = "Bugatti",				["model"] = "rmodbugatti",			["price"] = 30,				["category"] = "Sports",			["hash"] = "rmodbugatti",			["shop"] = "1of1",},
		["rmodf40"] = 			{["name"] = "Ferrari F40",						["brand"] = "Ferrari",				["model"] = "rmodf40",				["price"] = 30,				["category"] = "Sports",			["hash"] = "rmodf40",				["shop"] = "1of1",},
		--GANG----------GANG----------GANG----------GANG----------GANG----------GANG----------GANG----------GANG----------GANG----------GANG----------GANG----------GANG----------GANG----------GANG----------GANG----------GANG----------GANG----------GANG----------GANG----------GAN
		-- ["HDIron883"] = 		{["name"] = "Harley davidson",					["brand"] = "Harley Davidson",		["model"] = "HDIron883",			["price"] = Gang bike,		["category"] = "Bike",				["hash"] = "HDIron883",				["shop"] = "Gang",},
		-- ["hvrod"] = 			{["name"] = "Harley vrod",						["brand"] = "Harley Davidson",		["model"] = "hvrod",				["price"] = Gang bike,		["category"] = "Bike",				["hash"] = "hvrod",					["shop"] = "Gang ",},
		--CUSTOM----------CUSTOM----------CUSTOM----------CUSTOM----------CUSTOM----------CUSTOM----------CUSTOM----------CUSTOM----------CUSTOM----------CUSTOM----------CUSTOM----------CUSTOM----------CUSTOM----------CUSTOM----------CUSTOM----------CUSTOM----------CUSTOM-------
		["8c"] = 				{["name"] = "Alfa Romeo 8c",					["brand"] = "Alfa Romeo ",			["model"] = "8c",					["price"] = 100000,			["category"] = "sports",			["hash"] = "8c",					["shop"] = "custom",},
		["aqv"] = 				{["name"] = "Alfa Romeo Gulia",					["brand"] = "alfa romeo ",			["model"] = "aqv",					["price"] = 110000,			["category"] = "sedans",			["hash"] = "aqv",					["shop"] = "custom",},
		["db11"] = 				{["name"] = "Aston Martin DB11",				["brand"] = "Aston Martin",			["model"] = "db11",					["price"] = 310000,			["category"] = "coupes",			["hash"] = "db11",					["shop"] = "custom",},
		["rmodmartin"] = 		{["name"] = "Aston Martin DBS",					["brand"] = "Aston martin",			["model"] = "rmodmartin",			["price"] = 300000,			["category"] = "sports",			["hash"] = "rmodmartin",			["shop"] = "custom",},
		["vulcan"] = 			{["name"] = "Aston Martin Vulcan",				["brand"] = "Aston Martin",			["model"] = "vulcan",				["price"] = 400000,			["category"] = "sports",			["hash"] = "vulcan",				["shop"] = "custom",},
		["rs3"] = 				{["name"] = "Audi MK5 RS3",						["brand"] = "Audi",					["model"] = "rs3",					["price"] = 270000,			["category"] = "sedans",			["hash"] = "rs3",					["shop"] = "custom",},
		["rs6abtp"] = 			{["name"] = "Audi RS6 Allroad",					["brand"] = "Audi",					["model"] = "rs6abtp",				["price"] = 500000,			["category"] = "sedans",			["hash"] = "rs6abtp",				["shop"] = "custom",},
		["2013rs7"] = 			{["name"] = "Audi rs7",							["brand"] = "Audi",					["model"] = "2013rs7",				["price"] = 200000,			["category"] = "custom",			["hash"] = "2013rs7",				["shop"] = "custom",},
		["bentaygast"] = 		{["name"] = "bentley",							["brand"] = "Bentley",				["model"] = "bentaygast",			["price"] = 500000,			["category"] = "suvs",				["hash"] = "bentaygast",			["shop"] = "custom",},
		["bentayga17"] = 		{["name"] = "Bentley Bentayga",					["brand"] = "Bentley",				["model"] = "bentayga17",			["price"] = 450000,			["category"] = "suvs",				["hash"] = "bentayga17",			["shop"] = "custom",},
		["ben17"] = 			{["name"] = "bentley Continental",				["brand"] = "Bentley",				["model"] = "ben17",				["price"] = 450000,			["category"] = "sports",			["hash"] = "ben17",					["shop"] = "custom",},
		["m3e46"] = 			{["name"] = "BMW M3",							["brand"] = "M3 E46",				["model"] = "m3e46",				["price"] = 240000,			["category"] = "coupes",			["hash"] = "m3e46",					["shop"] = "custom",},
		["m4c"] = 				{["name"] = "BMW M4",							["brand"] = "BMW",					["model"] = "m4c",					["price"] = 300000,			["category"] = "sedans",			["hash"] = "m4c",					["shop"] = "custom",},
		-- ["f82"] = 				{["name"] = "BMW M4 GTS",						["brand"] = "BMW",					["model"] = "f82",					["price"] = 250000,			["category"] = "coupes",			["hash"] = "f82",					["shop"] = "custom",},
		["bmci"] = 				{["name"] = "BMW M5",							["brand"] = "BMW",					["model"] = "bmci",					["price"] = 280000,			["category"] = "coupes",			["hash"] = "bmci",					["shop"] = "custom",},
		["rmodm5e34"] = 		{["name"] = "BMW M5",							["brand"] = "BMW",					["model"] = "rmodm5e34",			["price"] = 230000,			["category"] = "sedans",			["hash"] = "rmodm5e34",				["shop"] = "custom",},
		["rmodbmwm8"] = 		{["name"] = "BMW M8 comp",						["brand"] = "BMW",					["model"] = "rmodbmwm8",			["price"] = 450000,			["category"] = "sedans",			["hash"] = "rmodbmwm8",				["shop"] = "custom",},
		["bmws"] = 				{["name"] = "BMW S1000 Bike",					["brand"] = "BMW",					["model"] = "bmws",					["price"] = 200000,			["category"] = "custom",			["hash"] = "bmws",					["shop"] = "custom",},
		["s1000rr"] = 			{["name"] = "BMW S1000RR",						["brand"] = "BMW",					["model"] = "s1000rr",				["price"] = 250000,			["category"] = "custom",			["hash"] = "s1000rr",				["shop"] = "custom",},
		["z4"] = 				{["name"] = "BMW Z4",							["brand"] = "BMW",					["model"] = "z4",					["price"] = 100000,			["category"] = "sports",			["hash"] = "z4",					["shop"] = "custom",},
		["rmodcamaro"] = 		{["name"] = "Chevrolet Camaro ZL1",				["brand"] = "Chevrolet",			["model"] = "rmodcamaro",			["price"] = 300000,			["category"] = "muscle",			["hash"] = "rmodcamaro",			["shop"] = "custom",},
		["camarozl1"] = 		{["name"] = "Chevrolet Camero",					["brand"] = "chevelerot",			["model"] = "camarozl1",			["price"] = 150000,			["category"] = "muscle",			["hash"] = "camarozl1",				["shop"] = "custom",},
		["2019zr1"] = 			{["name"] = "Chevrolet Corevette ZR1",			["brand"] = "Chevrolet",			["model"] = "2019zr1",				["price"] = 300000,			["category"] = "sports",			["hash"] = "2019zr1",				["shop"] = "custom",},
		["stingray"] = 			{["name"] = "Chevrolet Corvette",				["brand"] = "Chevrolet",			["model"] = "stingray",				["price"] = 400000,			["category"] = "muscle",			["hash"] = "stingray",				["shop"] = "custom",},
		-- ["c7"] = 				{["name"] = "Chevrolet Corvette Sting",			["brand"] = "Chevrolet",			["model"] = "c7",					["price"] = 340000,			["category"] = "coupes",			["hash"] = "c7",					["shop"] = "custom",},
		["exor"] = 				{["name"] = "Chevrolet ZL1 Excorcist",			["brand"] = "Chevrolet",			["model"] = "exor",					["price"] = 300000,			["category"] = "muscle",			["hash"] = "exor",					["shop"] = "custom",},
		["16challenger"] = 		{["name"] = "Dodge Challenger",					["brand"] = "Dodge",				["model"] = "16challenger",			["price"] = 195000,			["category"] = "coupes",			["hash"] = "16challenger",			["shop"] = "custom",},
		["charge4"] = 			{["name"] = "Dodge Charger (wheel in Boot)",	["brand"] = "Dodge",				["model"] = "charge4",				["price"] = 400000,			["category"] = "muscle",			["hash"] = "charge4",				["shop"] = "custom",},
		["chr20"] = 			{["name"] = "Dodge Charger Hellcat 2020",		["brand"] = "Dodge",				["model"] = "chr20",				["price"] = 150000,			["category"] = "custom",			["hash"] = "chr20",					["shop"] = "custom",},
		["21durango"] = 		{["name"] = "Dodge Durango srt",				["brand"] = "Dodge",				["model"] = "21durango",			["price"] = 250000,			["category"] = "muscle",			["hash"] = "21durango",				["shop"] = "custom",},
		-- ["ram2500"] = 			{["name"] = "Dodge RAM 2500",					["brand"] = "Dodge",				["model"] = "ram2500",				["price"] = 140000,			["category"] = "coupes",			["hash"] = "ram2500",				["shop"] = "custom",},
		["Viper"] = 			{["name"] = "Dodge Viper",						["brand"] = "Dodge",				["model"] = "Viper",				["price"] = 200000,			["category"] = "muscle",			["hash"] = "Viper",					["shop"] = "custom",},
		["diavel"] = 			{["name"] = "Ducati Diavel",					["brand"] = "Ducati",				["model"] = "diavel",				["price"] = 180000,			["category"] = "custom",			["hash"] = "diavel",				["shop"] = "custom",},
		["dm1200"] = 			{["name"] = "Ducati Multistrada",				["brand"] = "Ducati",				["model"] = "dm1200",				["price"] = 150000,			["category"] = "custom",			["hash"] = "dm1200",				["shop"] = "custom",},
		["v4sp"] = 				{["name"] = "Ducati V4",						["brand"] = "Ducati",				["model"] = "v4sp",					["price"] = 250000,			["category"] = "custom",			["hash"] = "v4sp",					["shop"] = "custom",},
		["512tr"] = 			{["name"] = "Ferrari 512r",						["brand"] = "Ferrari",				["model"] = "512tr",				["price"] = 250000,			["category"] = "sports",			["hash"] = "512tr",					["shop"] = "custom",},
		["fc15"] = 				{["name"] = "Ferrari California",				["brand"] = "Ferrari",				["model"] = "fc15",					["price"] = 250000,			["category"] = "custom",			["hash"] = "fc15",					["shop"] = "custom",},
		["f12m"] = 				{["name"] = "Ferrari F12 berlinetta",			["brand"] = "Ferrari",				["model"] = "f12m",					["price"] = 350000,			["category"] = "custom",			["hash"] = "f12m",					["shop"] = "custom",},
		["sf90"] = 				{["name"] = "Ferrari F90",						["brand"] = "Ferrari",				["model"] = "sf90",					["price"] = 250000,			["category"] = "sports",			["hash"] = "sf90",					["shop"] = "custom",},
		["fct"] = 				{["name"] = "Ferrari fct",						["brand"] = "Ferrari",				["model"] = "fct",					["price"] = 260000,			["category"] = "sports",			["hash"] = "fct",					["shop"] = "custom",},
		["pistaspider19"] = 	{["name"] = "Ferrari Pista",					["brand"] = "Ferarri",				["model"] = "pistaspider19",		["price"] = 350000,			["category"] = "custom",			["hash"] = "pistaspider19",			["shop"] = "custom",},
		["gt17"] = 				{["name"] = "Ford GT40 2017",					["brand"] = "Ford",					["model"] = "gt17",					["price"] = 500000,			["category"] = "muscle",			["hash"] = "gt17",					["shop"] = "custom",},
		["mst"] = 				{["name"] = "Ford Mustang",						["brand"] = "Ford",					["model"] = "mst",					["price"] = 100000,			["category"] = "muscle",			["hash"] = "mst",					["shop"] = "custom",},
		["gxraptor"] = 			{["name"] = "Ford Raptor",						["brand"] = "Ford",					["model"] = "gxraptor",				["price"] = 90000,			["category"] = "muscle",			["hash"] = "gxraptor",				["shop"] = "custom",},
		["cbr650r"] = 			{["name"] = "Honda CBR 650",					["brand"] = "Honda",				["model"] = "cbr650r",				["price"] = 200000,			["category"] = "custom",			["hash"] = "cbr650r",				["shop"] = "custom",},
		["ninjah2"] = 			{["name"] = "Kawasaki Ninja H2R",				["brand"] = "Kawasaki",				["model"] = "ninjah2",				["price"] = 250000,			["category"] = "custom",			["hash"] = "ninjah2",				["shop"] = "custom",},
		["zx10r"] = 			{["name"] = "Kawasaki Ninja ZX10r",				["brand"] = "Kawasaki",				["model"] = "zx10r",				["price"] = 250000,			["category"] = "custom",			["hash"] = "zx10r",					["shop"] = "custom",},
		["z1000"] = 			{["name"] = "Kawaski Z1000",					["brand"] = "Kawasaki",				["model"] = "z1000",				["price"] = 200000,			["category"] = "custom",			["hash"] = "z1000",					["shop"] = "custom",},
		["rmodjesko"] = 		{["name"] = "Konisegg Jesko",					["brand"] = "Konisegg",				["model"] = "rmodjesko",			["price"] = 270000,			["category"] = "sports",			["hash"] = "rmodjesko",				["shop"] = "custom",},
		["duker"] = 			{["name"] = "KTM DUKE",							["brand"] = "KTM",					["model"] = "duker",				["price"] = 150000,			["category"] = "custom",			["hash"] = "duker",					["shop"] = "custom",},
		["rc"] = 				{["name"] = "KTM RC",							["brand"] = "KTM",					["model"] = "rc",					["price"] = 200000,			["category"] = "custom",			["hash"] = "rc",					["shop"] = "custom",},
		["hurper"] = 			{["name"] = "Lamborghini Aventador",			["brand"] = "lamborghini",			["model"] = "hurper",				["price"] = 200000,			["category"] = "sports",			["hash"] = "hurper",				["shop"] = "custom",},
		["lp570"] = 			{["name"] = "Lamborghini Superleggera",			["brand"] = "Lamborghini",			["model"] = "lp570",				["price"] = 250000,			["category"] = "sports",			["hash"] = "lp570",					["shop"] = "custom",},
		["lp670sv"] = 			{["name"] = "Lamborghini SV",					["brand"] = "Lamborghini",			["model"] = "lp670sv",				["price"] = 220000,			["category"] = "sports",			["hash"] = "lp670sv",				["shop"] = "custom",},
		["terzo"] = 			{["name"] = "Lamborghini Terzo",				["brand"] = "Lamborgini",			["model"] = "terzo",				["price"] = 350000,			["category"] = "custom",			["hash"] = "terzo",					["shop"] = "custom",},
		["urus"] = 				{["name"] = "Lamborghini urus",					["brand"] = "Lamborghini",			["model"] = "urus",					["price"] = 450000,			["category"] = "suvs",				["hash"] = "urus",					["shop"] = "custom",},
		["levante"] = 			{["name"] = "levante",							["brand"] = "Maserati",				["model"] = "levante",				["price"] = 120000,			["category"] = "suvs",				["hash"] = "levante",				["shop"] = "custom",},
		["m3wideprzemo"] = 		{["name"] = "M3 widebody",						["brand"] = "BMW",					["model"] = "m3wideprzemo",			["price"] = 250000,			["category"] = "sedans",			["hash"] = "m3wideprzemo",			["shop"] = "custom",},
		["720wideprzemo"] = 	{["name"] = "Maclaren 720",						["brand"] = "Maclaren ",			["model"] = "720wideprzemo",		["price"] = 300000,			["category"] = "sports",			["hash"] = "720wideprzemo",			["shop"] = "custom",},
		["mqgts"] = 			{["name"] = "Maserati GTS",						["brand"] = "Maserati",				["model"] = "mqgts",				["price"] = 150000,			["category"] = "sedans",			["hash"] = "mqgts",					["shop"] = "custom",},
		["dkrx7"] = 			{["name"] = "Mazda RX7",						["brand"] = "mazda",				["model"] = "dkrx7",				["price"] = 300000,			["category"] = "sports",			["hash"] = "dkrx7",					["shop"] = "custom",},
		["fd"] = 				{["name"] = "Mazda RX7 Tuned",					["brand"] = "Mazda",				["model"] = "fd",					["price"] = 145000,			["category"] = "coupes",			["hash"] = "fd",					["shop"] = "custom",},
		["675lt"] = 			{["name"] = "Mclaren 675lt",					["brand"] = "Maclaren ",			["model"] = "675lt",				["price"] = 400000,			["category"] = "sports",			["hash"] = "675lt",					["shop"] = "custom",},
		["gls63"] = 			{["name"] = "Mercdedes GLS Brabus",				["brand"] = "Mercedes",				["model"] = "gls63",				["price"] = 400000,			["category"] = "suvs",				["hash"] = "gls63",					["shop"] = "custom",},
		["mbbs20"] = 			{["name"] = "Mercdedes GT AMG",					["brand"] = "Mercedes",				["model"] = "mbbs20",				["price"] = 350000,			["category"] = "sports",			["hash"] = "mbbs20",				["shop"] = "custom",},
		["b45przemo"] = 		{["name"] = "mercedes 45",						["brand"] = "Mercedes",				["model"] = "b45przemo",			["price"] = 250000,			["category"] = "sedans",			["hash"] = "b45przemo",				["shop"] = "custom",},
		["amggtrr20"] = 		{["name"] = "Mercedes AMG GTR",					["brand"] = "Mercedes",				["model"] = "amggtrr20",			["price"] = 150000,			["category"] = "custom",			["hash"] = "amggtrr20",				["shop"] = "custom",},
		["c32"] = 				{["name"] = "Mercedes C32 AMG",					["brand"] = "Mercedes",				["model"] = "c32",					["price"] = 150000,			["category"] = "sedans",			["hash"] = "c32",					["shop"] = "custom",},
		["mbc63"] = 			{["name"] = "Mercedes C63 AMG",					["brand"] = "Mercedes",				["model"] = "mbc63",				["price"] = 230000,			["category"] = "sedans",			["hash"] = "mbc63",					["shop"] = "custom",},
		["c63w205"] = 			{["name"] = "Mercedes C63s AMG",				["brand"] = "Mercedes",				["model"] = "c63w205",				["price"] = 350000,			["category"] = "sedans",			["hash"] = "c63w205",				["shop"] = "custom",},
		["g65amg"] = 			{["name"] = "Mercedes G63 Wagon",				["brand"] = "Mercedes",				["model"] = "g65amg",				["price"] = 375000,			["category"] = "suvs",				["hash"] = "g65amg",				["shop"] = "custom",},
		["mbgle"] = 			{["name"] = "Mercedes GLE 450 4 Matic",			["brand"] = "Mercedes",				["model"] = "mbgle",				["price"] = 250000,			["category"] = "suvs",				["hash"] = "mbgle",					["shop"] = "custom",},
		["gle"] = 				{["name"] = "Mercedes gle53 AMG",				["brand"] = "Mercedes",				["model"] = "gle",					["price"] = 300000,			["category"] = "suvs",				["hash"] = "gle",					["shop"] = "custom",},
		["G65"] = 				{["name"] = "Mercedes G-Wagon",					["brand"] = "Mercedes",				["model"] = "G65",					["price"] = 450000,			["category"] = "custom",			["hash"] = "G65",					["shop"] = "custom",},
		["sl65bs"] = 			{["name"] = "Mercedes SL65 AMG",				["brand"] = "Mercedes",				["model"] = "sl65bs",				["price"] = 300000,			["category"] = "sedans",			["hash"] = "sl65bs",				["shop"] = "custom",},
		["17r35"] = 			{["name"] = "Nissan GTR35 2017",				["brand"] = "nissan",				["model"] = "17r35",				["price"] = 150000,			["category"] = "sports",			["hash"] = "17r35",					["shop"] = "custom",},
		["tulenis"] = 			{["name"] = "Nissan Nismo",						["brand"] = "Nissan",				["model"] = "tulenis",				["price"] = 90000,			["category"] = "suvs",				["hash"] = "tulenis",				["shop"] = "custom",},
		["skyline"] = 			{["name"] = "Nissan Skyline GTR Vspec 2",		["brand"] = "Skyline R34",			["model"] = "skyline",				["price"] = 230000,			["category"] = "coupes",			["hash"] = "skyline",				["shop"] = "custom",},
		["2018transam"] = 		{["name"] = "Pontiac",							["brand"] = "Pontiac",				["model"] = "2018transam",			["price"] = 350000,			["category"] = "muscle",			["hash"] = "2018transam",			["shop"] = "custom",},
		["911turbos"] = 		{["name"] = "Porsche 911 TURBO S",				["brand"] = "Porsche",				["model"] = "911turbos",			["price"] = 450000,			["category"] = "sports",			["hash"] = "911turbos",				["shop"] = "custom",},
		["CGT"] = 				{["name"] = "Porsche Carrera GT",				["brand"] = "Porsche",				["model"] = "CGT",					["price"] = 250000,			["category"] = "sports",			["hash"] = "CGT",					["shop"] = "custom",},
		["cayenne"] = 			{["name"] = "Porsche Cayenne Turbo S",			["brand"] = "Porsche",				["model"] = "cayenne",				["price"] = 150000,			["category"] = "suvs",				["hash"] = "cayenne",				["shop"] = "custom",},
		["techart17"] = 		{["name"] = "Porsche Grand GT",					["brand"] = "Porsche",				["model"] = "techart17",			["price"] = 250000,			["category"] = "sports",			["hash"] = "techart17",				["shop"] = "custom",},
		["pm19"] = 				{["name"] = "Porsche Macan Turbo",				["brand"] = "Porsche",				["model"] = "pm19",					["price"] = 250000,			["category"] = "suvs",				["hash"] = "pm19",					["shop"] = "custom",},
		["macanturbo"] = 		{["name"] = "Porsche Macan Turbo ",				["brand"] = "Porsche",				["model"] = "macanturbo",			["price"] = 300000,			["category"] = "sports",			["hash"] = "macanturbo",			["shop"] = "custom",},
		["techart911gt"] = 		{["name"] = "Porsche Techart",					["brand"] = "Porsche",				["model"] = "techart911gt",			["price"] = 300000,			["category"] = "sports",			["hash"] = "techart911gt",			["shop"] = "custom",},
		["evoque"] = 			{["name"] = "Range Rover Evoque",				["brand"] = "Range Rover",			["model"] = "evoque",				["price"] = 180000,			["category"] = "suvs",				["hash"] = "evoque",				["shop"] = "custom",},
		["rover"] = 			{["name"] = "Range Rover Sport",				["brand"] = "rangerover",			["model"] = "rover",				["price"] = 280000,			["category"] = "suvs",				["hash"] = "rover",					["shop"] = "custom",},
		["baller4"] = 			{["name"] = "Range Rover SV Lux",				["brand"] = "Range Rover",			["model"] = "baller4",				["price"] = 180000,			["category"] = "custom",			["hash"] = "baller4",				["shop"] = "custom",},
		["rsvr16"] = 			{["name"] = "Range Rover SVR",					["brand"] = "Range Rover",			["model"] = "rsvr16",				["price"] = 300000,			["category"] = "suvs",				["hash"] = "rsvr16",				["shop"] = "custom",},
		["rculi"] = 			{["name"] = "Rolls Royce Cullinan",				["brand"] = "Rolls Royce",			["model"] = "rculi",				["price"] = 400000,			["category"] = "suvs",				["hash"] = "rculi",					["shop"] = "custom",},
		["rrphantom"] = 		{["name"] = "Rolls Royce Phantom",				["brand"] = "rolls royce",			["model"] = "rrphantom",			["price"] = 250000,			["category"] = "sedans",			["hash"] = "rrphantom",				["shop"] = "custom",},
		["wraith"] = 			{["name"] = "Rolls Royce Wraith",				["brand"] = "Rolls Royce",			["model"] = "wraith",				["price"] = 250000,			["category"] = "sedans",			["hash"] = "wraith",				["shop"] = "custom",},
		["teslax"] = 			{["name"] = "Tesla Model X P90D",				["brand"] = "Tesla",				["model"] = "teslax",				["price"] = 120000,			["category"] = "suvs",				["hash"] = "teslax",				["shop"] = "custom",},
		["180326"] = 			{["name"] = "Toyota 180SX",						["brand"] = "Toyota",				["model"] = "180326",				["price"] = 250000,			["category"] = "sedans",			["hash"] = "180326",				["shop"] = "custom",},
		["tsgr20"] = 			{["name"] = "Toyota Supra GR 2020",				["brand"] = "Toyota",				["model"] = "tsgr20",				["price"] = 300000,			["category"] = "sports",			["hash"] = "tsgr20",				["shop"] = "custom",},
	--DONO----------DONO----------DONO----------DONO----------DONO----------DONO----------DONO----------DONO----------DONO----------DONO----------DONO----------DONO----------DONO----------DONO----------DONO----------DONO----------DONO----------DONO----------DONO----------DONO---	
		["rmodmk7"] = 			{["name"] = "Golf R MK7 ",						["brand"] = "Golf",					["model"] = "rmodmk7",				["price"] = 10,				["category"] = "sedans",			["hash"] = "rmodmk7",				["shop"] = "dono",},
		["rmodbiposto"] = 		{["name"] = "Abarth 500 biposto 6G5",			["brand"] = "Abarth",				["model"] = "rmodbiposto",			["price"] = 7,				["category"] = "Hatchback",			["hash"] = "rmodbiposto",			["shop"] = "dono",},
		["ad11"] = 				{["name"] = "Aston Martin D11",					["brand"] = "Aston Martin",			["model"] = "ad11",					["price"] = 100000,			["category"] = "sports",			["hash"] = "ad11",					["shop"] = "dono",},
		["speedster"] = 		{["name"] = "Aston Martin V12 Speedster",		["brand"] = "Aston Martin",			["model"] = "speedster",			["price"] = 15,				["category"] = "sports",			["hash"] = "speedster",				["shop"] = "dono",},
		["ast"] = 				{["name"] = "Aston Martin Vanquish",			["brand"] = "Austin Martin",		["model"] = "ast",					["price"] = 150000,			["category"] = "sports",			["hash"] = "ast",					["shop"] = "dono",},
		["Rs318"] = 			{["name"] = "Audi RS3 2018",					["brand"] = "Audi",					["model"] = "Rs318",				["price"] = 12,				["category"] = "Hatchback",			["hash"] = "Rs318",					["shop"] = "dono",},
		["rmodrs6"] = 			{["name"] = "Audi RS6",							["brand"] = "Audi",					["model"] = "rmodrs6",				["price"] = 12,				["category"] = "Estate",			["hash"] = "rmodrs6",				["shop"] = "dono",},
		["rs666"] = 			{["name"] = "Audi RS6 Wide",					["brand"] = "Audi",					["model"] = "rs666",				["price"] = 10,				["category"] = "Estate",			["hash"] = "rs666",					["shop"] = "dono",},
		["rmodrs7"] = 			{["name"] = "Audi RS7",							["brand"] = "Audi",					["model"] = "rmodrs7",				["price"] = 10,				["category"] = "Saloon",			["hash"] = "rmodrs7",				["shop"] = "dono",},
		["rs7c8wb"] = 			{["name"] = "Audi RS7",							["brand"] = "Audi",					["model"] = "rs7c8wb",				["price"] = 12,				["category"] = "Saloon",			["hash"] = "rs7c8wb",				["shop"] = "dono",},
		["rsq8m"] = 			{["name"] = "Audi RS8",							["brand"] = "Audi",					["model"] = "rsq8m",				["price"] = 12,				["category"] = "SUV",				["hash"] = "rsq8m",					["shop"] = "dono",},
		["rmodbacalar"] = 		{["name"] = "Bentley Bacalar",					["brand"] = "Bentley",				["model"] = "rmodbacalar",			["price"] = 12,				["category"] = "Sports",			["hash"] = "rmodbacalar",			["shop"] = "dono",},
		["m3kean"] = 			{["name"] = "bmw e46 rocketb",					["brand"] = "BMW",					["model"] = "m3kean",				["price"] = 200000,			["category"] = "sedans",			["hash"] = "m3kean",				["shop"] = "dono",},
		["rmoddarki8"] = 		{["name"] = "BMW I8",							["brand"] = "BMW",					["model"] = "rmoddarki8",			["price"] = 10,				["category"] = "Sports",			["hash"] = "rmoddarki8",			["shop"] = "dono",},
		["rmodbmwi8"] = 		{["name"] = "BMW i8",							["brand"] = "BMW",					["model"] = "rmodbmwi8",			["price"] = 150000,			["category"] = "custom",			["hash"] = "rmodbmwi8",				["shop"] = "dono",},
		["rmodmi8lb"] = 		{["name"] = "BMW i8 libertywalk",				["brand"] = "BMW",					["model"] = "rmodmi8lb",			["price"] = 12,				["category"] = "Sports",			["hash"] = "rmodmi8lb",				["shop"] = "dono",},
		["rmodi8ks"] = 			{["name"] = "BMW i8 standard",					["brand"] = "BMW",					["model"] = "rmodi8ks",				["price"] = 7,				["category"] = "custom",			["hash"] = "rmodi8ks",				["shop"] = "dono",},
		["m135iwb"] = 			{["name"] = "BMW m135",							["brand"] = "BMW",					["model"] = "m135iwb",				["price"] = 12,				["category"] = "Hatchback",			["hash"] = "m135iwb",				["shop"] = "dono",},
		["m3e30"] = 			{["name"] = "BMW M3 e30",						["brand"] = "BMW",					["model"] = "m3e30",				["price"] = 12,				["category"] = "Saloon",			["hash"] = "m3e30",					["shop"] = "dono",},
		["rmodm4gts"] = 		{["name"] = "BMW M4",							["brand"] = "BMW",					["model"] = "rmodm4gts",			["price"] = 12,				[	"category"] = "Saloon",			["hash"] = "rmodm4gts",				["shop"] = "dono",},
		["bmwm4custom"] = 		{["name"] = "BMW M4 (21plate)",					["brand"] = "BMW",					["model"] = "bmwm4custom",			["price"] = 14,				["category"] = "Saloon",			["hash"] = "bmwm4custom",			["shop"] = "dono",},
		["bmwm8"] = 			{["name"] = "BMW M8",							["brand"] = "BMW",					["model"] = "bmwm8",				["price"] = 10,				["category"] = "Saloon",			["hash"] = "bmwm8",					["shop"] = "dono",},
		["rmodx6"] = 			{["name"] = "BMW X6",							["brand"] = "BMW",					["model"] = "rmodx6",				["price"] = 12,				["category"] = "SUV",				["hash"] = "rmodx6",				["shop"] = "dono",},
		["19x7m"] = 			{["name"] = "BMW X7 ",							["brand"] = "BMW",					["model"] = "19x7m",				["price"] = 15,				["category"] = "SUV",				["hash"] = "19x7m",					["shop"] = "dono",},
		["divo"] = 				{["name"] = "Bugati Divo",						["brand"] = "Bugatti",				["model"] = "divo",					["price"] = 150000,			["category"] = "custom",			["hash"] = "divo",					["shop"] = "dono",},
		["chiron17"] = 			{["name"] = "Bugatti Chiron",					["brand"] = "Bugatti",				["model"] = "chiron17",				["price"] = 150000,			["category"] = "custom",			["hash"] = "chiron17",				["shop"] = "dono",},
		["bdivo"] = 			{["name"] = "Bugatti Prezmo",					["brand"] = "Bugatti",				["model"] = "bdivo",				["price"] = 15,				["category"] = "Sports",			["hash"] = "bdivo",					["shop"] = "dono",},
		["rcfgt3"] = 			{["name"] = "Denso Racing",						["brand"] = "Lexus",				["model"] = "rcfgt3",				["price"] = 12,				["category"] = "Saloon",			["hash"] = "rcfgt3",				["shop"] = "dono",},
		["rmodcharger69"] = 	{["name"] = "Dodge ChargerRT69",				["brand"] = "Dodge",				["model"] = "rmodcharger69",		["price"] = 9,				["category"] = "Muscle",			["hash"] = "rmodcharger69",			["shop"] = "dono",},
		["458it"] = 			{["name"] = "Ferrari 458",						["brand"] = "Ferrari",				["model"] = "458it",				["price"] = 10,				["category"] = "Sports",			["hash"] = "458it",					["shop"] = "dono",},
		["tdf"] = 				{["name"] = "Ferrari f12",						["brand"] = "Ferrari",				["model"] = "tdf",					["price"] = 15,				["category"] = "Sports",			["hash"] = "tdf",					["shop"] = "dono",},
		["f80"] = 				{["name"] = "Ferrari F80",						["brand"] = "Ferrari",				["model"] = "f80",					["price"] = 150000,			["category"] = "custom",			["hash"] = "f80",					["shop"] = "dono",},
		["fxxk"] = 				{["name"] = "Ferrari FXXK",						["brand"] = "Ferrari",				["model"] = "fxxk",					["price"] = 150000,			["category"] = "custom",			["hash"] = "fxxk",					["shop"] = "dono",},
		["gtc4"] = 				{["name"] = "Ferrari GT",						["brand"] = "Ferrari",				["model"] = "gtc4",					["price"] = 13,				["category"] = "Sports",			["hash"] = "gtc4",					["shop"] = "dono",},
		["fxxkevo"] = 			{["name"] = "Ferrari K Evo",					["brand"] = "Ferrari",				["model"] = "fxxkevo",				["price"] = 15,				["category"] = "Sports",			["hash"] = "fxxkevo",				["shop"] = "dono",},
		["mansorysf90"] = 		{["name"] = "Ferrari Mansory F90",				["brand"] = "Ferrari",				["model"] = "mansorysf90",			["price"] = 15,				["category"] = "Sports",			["hash"] = "mansorysf90",			["shop"] = "dono",},
		["hs"] = 				{["name"] = "Ford Mustang",						["brand"] = "Ford",					["model"] = "hs",					["price"] = 10,				["category"] = "Muscle",			["hash"] = "hs",					["shop"] = "dono",},
		["rmodmustang"] = 		{["name"] = "Ford Mustang2020-CustomGT",		["brand"] = "Ford",					["model"] = "rmodmustang",			["price"] = 200000,			["category"] = "custom",			["hash"] = "rmodmustang",			["shop"] = "dono",},
		["bg700w"] = 			{["name"] = "G Wagon Brabus",					["brand"] = "Mercedes",				["model"] = "bg700w",				["price"] = 15,				["category"] = "SUV",				["hash"] = "bg700w",				["shop"] = "dono",},
		["lp700"] = 			{["name"] = "Ghallardo",						["brand"] = "Lamborghini",			["model"] = "lp700",				["price"] = 14,				["category"] = "Sports",			["hash"] = "lp700",					["shop"] = "dono",},
		["trhawk"] = 			{["name"] = "Grand Cherokee",					["brand"] = "Jeep",					["model"] = "trhawk",				["price"] = 14,				["category"] = "SUV",				["hash"] = "trhawk",				["shop"] = "dono",},
		["h1"] = 				{["name"] = "Hummer H1",						["brand"] = "Hummer",				["model"] = "h1",					["price"] = 10,				["category"] = "SUV",				["hash"] = "h1",					["shop"] = "dono",},
		["demonhawk"] = 		{["name"] = "Jeep Demonhawk",					["brand"] = "Jeep",					["model"] = "demonhawk",			["price"] = 12,				["category"] = "SUV",				["hash"] = "demonhawk",				["shop"] = "dono",},
		["rmodjeep"] = 			{["name"] = "Jeep Grand Cheroke",				["brand"] = "Jeep",					["model"] = "rmodjeep",				["price"] = 12,				["category"] = "SUV",				["hash"] = "rmodjeep",				["shop"] = "dono",},
		["jesko2020"] = 		{["name"] = "Konisegg Jesko",					["brand"] = "Konisegg",				["model"] = "jesko2020",			["price"] = 15,				["category"] = "Sports",			["hash"] = "jesko2020",				["shop"] = "dono",},
		["huracangt3evo"] = 	{["name"] = "Lamborghini Hurracan",				["brand"] = "lamborghini",			["model"] = "huracangt3evo",		["price"] = 15,				["category"] = "Sports",			["hash"] = "huracangt3evo",			["shop"] = "dono",},
		["murus20"] = 			{["name"] = "Lamborghini Mansory Urus",			["brand"] = "Lamborghini",			["model"] = "murus20",				["price"] = 12,				["category"] = "SUV",				["hash"] = "murus20",				["shop"] = "dono",},
		["18performante"] = 	{["name"] = "Lamborghini Performante 18",		["brand"] = "Lamborghini",			["model"] = "18performante",		["price"] = 160000,			["category"] = "custom",			["hash"] = "18performante",			["shop"] = "dono",},
		["rmodsian"] = 			{["name"] = "Lamborghini Sian",					["brand"] = "Lamborgini",			["model"] = "rmodsian",				["price"] = 300000,			["category"] = "custom",			["hash"] = "rmodsian",				["shop"] = "dono",},
		["rmodsianr"] = 		{["name"] = "Lamborghini Sian Roadster",		["brand"] = "Lamborghini",			["model"] = "rmodsianr",			["price"] = 15,				["category"] = "Sports",			["hash"] = "rmodsianr",				["shop"] = "dono",},
		["urustc"] = 			{["name"] = "Lamborghini Urus",					["brand"] = "Lamborghini",			["model"] = "urustc",				["price"] = 11,				["category"] = "SUV",				["hash"] = "urustc",				["shop"] = "dono",},
		["rmodveneno"] = 		{["name"] = "Lamborghini Veneno",				["brand"] = "Lamborgini",			["model"] = "rmodveneno",			["price"] = 350000,			["category"] = "custom",			["hash"] = "rmodveneno",			["shop"] = "dono",},
		["lp700r"] = 			{["name"] = "Lamborgini Aventador",				["brand"] = "Lamborgini",			["model"] = "lp700r",				["price"] = 150000,			["category"] = "custom",			["hash"] = "lp700r",				["shop"] = "dono",},
		["lp770"] = 			{["name"] = "Lamborgini Centenario",			["brand"] = "Lamborgini",			["model"] = "lp770",				["price"] = 150000,			["category"] = "custom",			["hash"] = "lp770",					["shop"] = "dono",},
		["lc500"] = 			{["name"] = "LC500",							["brand"] = "Lexus",				["model"] = "lc500",				["price"] = 10,				["category"] = "Saloon",			["hash"] = "lc500",					["shop"] = "dono",},
		["lykan"] = 			{["name"] = "Lykan Fenyr",						["brand"] = "Lykan",				["model"] = "lykan",				["price"] = 150000,			["category"] = "custom",			["hash"] = "lykan",					["shop"] = "dono",},
		["720s"] = 				{["name"] = "Maclaren 720s",					["brand"] = "Maclaren",				["model"] = "720s",					["price"] = 10,				["category"] = "Sports",			["hash"] = "720s",					["shop"] = "dono",},
		["senna"] = 			{["name"] = "Maclaren Senna",					["brand"] = "Maclaren",				["model"] = "senna",				["price"] = 14,				["category"] = "Sports",			["hash"] = "senna",					["shop"] = "dono",},
		["mcst"] = 				{["name"] = "Maclaren Speedtail",				["brand"] = "Maclaren",				["model"] = "mcst",					["price"] = 10,				["category"] = "Sports",			["hash"] = "mcst",					["shop"] = "dono",},
		["rmodspeed"] = 		{["name"] = "Maclaren Speedtail 2",				["brand"] = "Maclaren",				["model"] = "rmodspeed",			["price"] = 13,				["category"] = "Sports",			["hash"] = "rmodspeed",				["shop"] = "dono",},
		["alfieri"] = 			{["name"] = "Maserati Alifieri Concept",		["brand"] = "Maserati",				["model"] = "alfieri",				["price"] = 150000,			["category"] = "custom",			["hash"] = "alfieri",				["shop"] = "dono",},
		["675ltsp"] = 			{["name"] = "McLaren 675LT",					["brand"] = "McLaren",				["model"] = "675ltsp",				["price"] = 12,				["category"] = "custom",			["hash"] = "675ltsp",				["shop"] = "dono",},
		["p1gtr"] = 			{["name"] = "McLaren P1 GTR",					["brand"] = "McLaren",				["model"] = "p1gtr",				["price"] = 150000,			["category"] = "custom",			["hash"] = "p1gtr",					["shop"] = "dono",},
		["rmodgt63"] = 			{["name"] = "Merc GT63s Coupe",					["brand"] = "Mercedes",				["model"] = "rmodgt63",				["price"] = 13,				["category"] = "Saloon",			["hash"] = "rmodgt63",				["shop"] = "dono",},
		["rmodc63amg"] = 		{["name"] = "Mercedes C63s Coupe",				["brand"] = "Mercedes",				["model"] = "rmodc63amg",			["price"] = 12,				["category"] = "Saloon",			["hash"] = "rmodc63amg",			["shop"] = "dono",},
		["gle800przemo"] = 		{["name"] = "Mercedes GLE Brabus",				["brand"] = "Mercedes",				["model"] = "gle800przemo",			["price"] = 13,				["category"] = "SUV",				["hash"] = "gle800przemo",			["shop"] = "dono",},
		["gt63samg"] = 			{["name"] = "Mercedes GT63s",					["brand"] = "Mercedes",				["model"] = "gt63samg",				["price"] = 15,				["category"] = "Saloon",			["hash"] = "gt63samg",				["shop"] = "dono",},
		["amggtr"] = 			{["name"] = "Mercedes GTR",						["brand"] = "Mercedes",				["model"] = "amggtr",				["price"] = 10,				["category"] = "sports",			["hash"] = "amggtr",				["shop"] = "dono",},
		["mercedesbenzgseries"] = {["name"] = "Mercedes Gwagon",				["brand"] = "Mercedes",				["model"] = "mercedesbenzgseries",	["price"] = 10,				["category"] = "SUV",				["hash"] = "mercedesbenzgseries",	["shop"] = "dono",},
		["mvisiongt"] = 		{["name"] = "Mercedes VisionGT",				["brand"] = "Mercedes",				["model"] = "mvisiongt",			["price"] = 150000,			["category"] = "custom",			["hash"] = "mvisiongt",				["shop"] = "dono",},
		["defiant"] = 			{["name"] = "Mustang Ringsbro",					["brand"] = "Ford",					["model"] = "defiant",				["price"] = 100000,			["category"] = "muscle",			["hash"] = "defiant",				["shop"] = "dono",},
		["rmodgtr"] = 			{["name"] = "Nissan GTR",						["brand"] = "Nissan",				["model"] = "rmodgtr",				["price"] = 150000,			["category"] = "custom",			["hash"] = "rmodgtr",				["shop"] = "dono",},
		["rmodgtr50"] = 		{["name"] = "Nissan GTR 50",					["brand"] = "Nissan",				["model"] = "rmodgtr50",			["price"] = 10,				["category"] = "Saloon",			["hash"] = "rmodgtr50",				["shop"] = "dono",},
		["z15tribal"] = 		{["name"] = "Nissan Silvia s15",				["brand"] = "Nissan",				["model"] = "z15tribal",			["price"] = 12,				["category"] = "Sports",			["hash"] = "z15tribal",				["shop"] = "dono",},
		["huayra"] = 			{["name"] = "Pagani Huayra",					["brand"] = "Pagani",				["model"] = "huayra",				["price"] = 150000,			["category"] = "custom",			["hash"] = "huayra",				["shop"] = "dono",},
		["paganiragno"] = 		{["name"] = "Pagani Ragno",						["brand"] = "Pagani",				["model"] = "paganiragno",			["price"] = 150000,			["category"] = "custom",			["hash"] = "paganiragno",			["shop"] = "dono",},
		["pgt3"] = 				{["name"] = "Porsche GT3RS",					["brand"] = "Porsche",				["model"] = "pgt3",					["price"] = 12,				["category"] = "Sports",			["hash"] = "pgt3",					["shop"] = "dono",},
		["svr14"] = 			{["name"] = "Range Rover Mansory",				["brand"] = "Range Rover",			["model"] = "svr14",				["price"] = 12,				["category"] = "SUV",				["hash"] = "svr14",					["shop"] = "dono",},
		["18svr"] = 			{["name"] = "Range Rover SVR Baloon",			["brand"] = "Range Rover",			["model"] = "18svr",				["price"] = 200000,			["category"] = "suvs",				["hash"] = "18svr",					["shop"] = "dono",},
		["dawnonyx"] = 			{["name"] = "Rolls Royce Dawn",					["brand"] = "Rolls Royce",			["model"] = "dawnonyx",				["price"] = 150000,			["category"] = "custom",			["hash"] = "dawnonyx",				["shop"] = "dono",},
		["silver67"] = 			{["name"] = "Rolls Royce Wedding",				["brand"] = "Rolls Royce",			["model"] = "silver67",				["price"] = 10,				["category"] = "Saloon",			["hash"] = "silver67",				["shop"] = "dono",},
		["subisti08"] = 		{["name"] = "Subaru STI",						["brand"] = "Subaru",				["model"] = "subisti08",			["price"] = 10,				["category"] = "Hatchback",			["hash"] = "subisti08",				["shop"] = "dono",},
		["subwrx"] = 			{["name"] = "Subaru WRX",						["brand"] = "Subaru",				["model"] = "subwrx",				["price"] = 11,				["category"] = "Saloon",			["hash"] = "subwrx",				["shop"] = "dono",},
		["gdwrxsti"] = 			{["name"] = "Subaru WRX STI",					["brand"] = "Subaru",				["model"] = "gdwrxsti",				["price"] = 125000,			["category"] = "custom",			["hash"] = "gdwrxsti",				["shop"] = "dono",},
		--PDM----------PDM----------PDM----------PDM----------PDM----------PDM----------PDM----------PDM----------PDM----------PDM----------PDM----------PDM----------PDM----------PDM----------PDM----------PDM----------PDM----------PDM----------PDM----------PDM----------PDM----------
		["pfister811"] = 		{["name"] = "811",								["brand"] = "Pfister",				["model"] = "pfister811",			["price"] = 583000,			["category"] = "super",				["hash"] = "pfister811",			["shop"] = "pdm",},
		["z190"] = 				{["name"] = "190Z",								["brand"] = "Karin",				["model"] = "z190",					["price"] = 330000,			["category"] = "sportsclassics",	["hash"] = "z190",					["shop"] = "pdm",},
		["ninef"] = 			{["name"] = "9F",								["brand"] = "Obey",					["model"] = "ninef",				["price"] = 135000,			["category"] = "sports",			["hash"] = "ninef",					["shop"] = "pdm",},
		["ninef2"] = 			{["name"] = "9F Cabrio",						["brand"] = "Obey",					["model"] = "ninef2",				["price"] = 142000,			["category"] = "sports",			["hash"] = "ninef2",				["shop"] = "pdm",},
		["adder"] = 			{["name"] = "Adder",							["brand"] = "Truffade",				["model"] = "adder",				["price"] = 1000000,		["category"] = "super",				["hash"] = "adder",					["shop"] = "pdm",},
		["africat"] = 			{["name"] = "Africa Twin",						["brand"] = "Africa",				["model"] = "africat",				["price"] = 150000,			["category"] = "custom",			["hash"] = "africat",				["shop"] = "pdm",},
		["alpha"] = 			{["name"] = "Alpha",							["brand"] = "Albany",				["model"] = "alpha",				["price"] = 38000,			["category"] = "sports",			["hash"] = "alpha",					["shop"] = "pdm",},
		["shotaroccc"] = 		{["name"] = "American 1960",					["brand"] = "American",				["model"] = "shotaroccc",			["price"] = 20000,			["category"] = "sedans",			["hash"] = "shotaroccc",			["shop"] = "pdm",},
		["ardent"] = 			{["name"] = "Ardent",							["brand"] = "Ocelot",				["model"] = "ardent",				["price"] = 100000,			["category"] = "sportsclassics",	["hash"] = "ardent",				["shop"] = "pdm",},
		["asea"] = 				{["name"] = "Asea",								["brand"] = "Declasse",				["model"] = "asea",					["price"] = 13000,			["category"] = "sedans",			["hash"] = "asea",					["shop"] = "pdm",},
		["vgt12"] = 			{["name"] = "Aston Martin GT12",				["brand"] = "Aston Martin",			["model"] = "vgt12",				["price"] = 110000,			["category"] = "sports",			["hash"] = "vgt12",					["shop"] = "pdm",},
		["audirs3"] = 			{["name"] = "Audi RS3",							["brand"] = "Audi",					["model"] = "audirs3",				["price"] = 140000,			["category"] = "custom",			["hash"] = "audirs3",				["shop"] = "pdm",},
		["autarch"] = 			{["name"] = "Autarch",							["brand"] = "Autarch",				["model"] = "autarch",				["price"] = 1800000,		["category"] = "super",				["hash"] = "autarch",				["shop"] = "pdm",},
		["avarus"] = 			{["name"] = "Avarus",							["brand"] = "LCC",					["model"] = "avarus",				["price"] = 6500,			["category"] = "motorcycles",		["hash"] = "avarus",				["shop"] = "pdm",},
		["bagger"] = 			{["name"] = "Bagger",							["brand"] = "Bagger",				["model"] = "bagger",				["price"] = 7000,			["category"] = "motorcycles",		["hash"] = "bagger",				["shop"] = "pdm",},
		["baller2"] = 			{["name"] = "Baller",							["brand"] = "Gallivanter",			["model"] = "baller2",				["price"] = 79000,			["category"] = "suvs",				["hash"] = "baller2",				["shop"] = "pdm",},
		["baller3"] = 			{["name"] = "Baller LE",						["brand"] = "Gallivanter",			["model"] = "baller3",				["price"] = 90000,			["category"] = "suvs",				["hash"] = "baller3",				["shop"] = "pdm",},
		["banshee"] = 			{["name"] = "Banshee",							["brand"] = "Bravado",				["model"] = "banshee",				["price"] = 98000,			["category"] = "sports",			["hash"] = "banshee",				["shop"] = "pdm",},
		["banshee2"] = 			{["name"] = "Banshee 900R",						["brand"] = "Bravado",				["model"] = "banshee2",				["price"] = 178000,			["category"] = "super",				["hash"] = "banshee2",				["shop"] = "pdm",},
		["bati"] = 				{["name"] = "Bati 801",							["brand"] = "Pegassi",				["model"] = "bati",					["price"] = 17500,			["category"] = "motorcycles",		["hash"] = "bati",					["shop"] = "pdm",},
		["bjxl"] = 				{["name"] = "BeeJay XL",						["brand"] = "Karin",				["model"] = "bjxl",					["price"] = 47000,			["category"] = "suvs",				["hash"] = "bjxl",					["shop"] = "pdm",},
		["bestiagts"] = 		{["name"] = "Bestia GTS",						["brand"] = "Grotti",				["model"] = "bestiagts",			["price"] = 197000,			["category"] = "sports",			["hash"] = "bestiagts",				["shop"] = "pdm",},
		["bfinjection"] = 		{["name"] = "Bf Injection",						["brand"] = "Annis",				["model"] = "bfinjection",			["price"] = 16000,			["category"] = "offroad",			["hash"] = "bfinjection",			["shop"] = "pdm",},
		["bifta"] = 			{["name"] = "Bifta",							["brand"] = "Annis",				["model"] = "bifta",				["price"] = 12000,			["category"] = "offroad",			["hash"] = "bifta",					["shop"] = "pdm",},
		["bison"] = 			{["name"] = "Bison",							["brand"] = "Bravado",				["model"] = "bison",				["price"] = 34000,			["category"] = "vans",				["hash"] = "bison",					["shop"] = "pdm",},
		["blade"] = 			{["name"] = "Blade",							["brand"] = "Vapid",				["model"] = "blade",				["price"] = 19000,			["category"] = "muscle",			["hash"] = "blade",					["shop"] = "pdm",},
		["blazer"] = 			{["name"] = "Blazer",							["brand"] = "Annis",				["model"] = "blazer",				["price"] = 6500,			["category"] = "offroad",			["hash"] = "blazer",				["shop"] = "pdm",},
		["blazer4"] = 			{["name"] = "Blazer Sport",						["brand"] = "Annis",				["model"] = "blazer4",				["price"] = 8500,			["category"] = "offroad",			["hash"] = "blazer4",				["shop"] = "pdm",},
		["blista"] = 			{["name"] = "Blista",							["brand"] = "Dinka",				["model"] = "blista",				["price"] = 8000,			["category"] = "compacts",			["hash"] = "blista",				["shop"] = "pdm",},
		["blista2"] = 			{["name"] = "Blista Compact",					["brand"] = "Dinka",				["model"] = "blista2",				["price"] = 12500,			["category"] = "compacts",			["hash"] = "blista2",				["shop"] = "pdm",},
		-- ["bobcatxl2"] = 		{["name"] = "Bobcat XL Closed",					["brand"] = "Vapid",				["model"] = "bobcatxl2",			["price"] = 23000,			["category"] = "vans",				["hash"] = "bobcatxl2",				["shop"] = "pdm",},
		["bobcatxl"] = 			{["name"] = "Bobcat XL Open",					["brand"] = "Vapid",				["model"] = "bobcatxl",				["price"] = 23000,			["category"] = "vans",				["hash"] = "bobcatxl",				["shop"] = "pdm",},
		["brawler"] = 			{["name"] = "Brawler",							["brand"] = "Annis",				["model"] = "brawler",				["price"] = 45000,			["category"] = "offroad",			["hash"] = "brawler",				["shop"] = "pdm",},
		["brioso"] = 			{["name"] = "Brioso R/A",						["brand"] = "Grotti",				["model"] = "brioso",				["price"] = 14500,			["category"] = "compacts",			["hash"] = "brioso",				["shop"] = "pdm",},
		["dubsta3"] = 			{["name"] = "Bubsta 6x6",						["brand"] = "Annis",				["model"] = "dubsta3",				["price"] = 120000,			["category"] = "offroad",			["hash"] = "dubsta3",				["shop"] = "pdm",},
		["buccaneer"] = 		{["name"] = "Buccaneer",						["brand"] = "Albany",				["model"] = "buccaneer",			["price"] = 19500,			["category"] = "muscle",			["hash"] = "buccaneer",				["shop"] = "pdm",},
		["buccaneer2"] = 		{["name"] = "Buccaneer Rider",					["brand"] = "Albany",				["model"] = "buccaneer2",			["price"] = 22500,			["category"] = "muscle",			["hash"] = "buccaneer2",			["shop"] = "pdm",},
		["buffalo"] = 			{["name"] = "Buffalo",							["brand"] = "Bravado",				["model"] = "buffalo",				["price"] = 32000,			["category"] = "sports",			["hash"] = "buffalo",				["shop"] = "pdm",},
		["buffalo2"] = 			{["name"] = "Buffalo S",						["brand"] = "Bravado",				["model"] = "buffalo2",				["price"] = 39500,			["category"] = "sports",			["hash"] = "buffalo2",				["shop"] = "pdm",},
		["bullet"] = 			{["name"] = "Bullet",							["brand"] = "Vapid",				["model"] = "bullet",				["price"] = 190000,			["category"] = "super",				["hash"] = "bullet",				["shop"] = "pdm",},
		["burrito3"] = 			{["name"] = "Burrito",							["brand"] = "Declasse",				["model"] = "burrito3",				["price"] = 38500,			["category"] = "vans",				["hash"] = "burrito3",				["shop"] = "pdm",},
		["gburrito2"] = 		{["name"] = "Burrito Custom",					["brand"] = "Declasse",				["model"] = "gburrito2",			["price"] = 65000,			["category"] = "vans",				["hash"] = "gburrito2",				["shop"] = "pdm",},
		["carbonrs"] = 			{["name"] = "Carbon RS",						["brand"] = "Nagasaki",				["model"] = "carbonrs",				["price"] = 14500,			["category"] = "motorcycles",		["hash"] = "carbonrs",				["shop"] = "pdm",},
		["carbonizzare"] = 		{["name"] = "Carbonizzare",						["brand"] = "Grotti",				["model"] = "carbonizzare",			["price"] = 219000,			["category"] = "sports",			["hash"] = "carbonizzare",			["shop"] = "pdm",},
		["casco"] = 			{["name"] = "Casco",							["brand"] = "Lampadati",			["model"] = "casco",				["price"] = 102000,			["category"] = "sportsclassics",	["hash"] = "casco",					["shop"] = "pdm",},
		["cavalcade2"] = 		{["name"] = "Cavalcade",						["brand"] = "Albany",				["model"] = "cavalcade2",			["price"] = 45000,			["category"] = "suvs",				["hash"] = "cavalcade2",			["shop"] = "pdm",},
		["cheetah"] = 			{["name"] = "Cheetah",							["brand"] = "Grotti",				["model"] = "cheetah",				["price"] = 395000,			["category"] = "super",				["hash"] = "cheetah",				["shop"] = "pdm",},
		["cheetah2"] = 			{["name"] = "Cheetah Classic",					["brand"] = "Grotti",				["model"] = "cheetah2",				["price"] = 220000,			["category"] = "sports",			["hash"] = "cheetah2",				["shop"] = "pdm",},
		["chimera"] = 			{["name"] = "Chimera",							["brand"] = "Nagasaki",				["model"] = "chimera",				["price"] = 15000,			["category"] = "motorcycles",		["hash"] = "chimera",				["shop"] = "pdm",},
		["chino"] = 			{["name"] = "Chino",							["brand"] = "Vapid",				["model"] = "chino",				["price"] = 20000,			["category"] = "muscle",			["hash"] = "chino",					["shop"] = "pdm",},
		["chino2"] = 			{["name"] = "Chino Luxe",						["brand"] = "Vapid",				["model"] = "chino2",				["price"] = 35000,			["category"] = "muscle",			["hash"] = "chino2",				["shop"] = "pdm",},
		["krust"] = 			{["name"] = "chopper",							["brand"] = "chopper",				["model"] = "krust",				["price"] = 45000,			["category"] = "motorcycles",		["hash"] = "krust",					["shop"] = "pdm",},
		["hdknuckle"] = 		{["name"] = "chopper bobber",					["brand"] = "chopper",				["model"] = "hdknuckle",			["price"] = 45000,			["category"] = "motorcycles",		["hash"] = "hdknuckle",				["shop"] = "pdm",},
		["cognoscenti"] = 		{["name"] = "Cognoscenti",						["brand"] = "Enus",					["model"] = "cognoscenti",			["price"] = 400000,			["category"] = "sedans",			["hash"] = "cognoscenti",			["shop"] = "pdm",},
		["cogcabrio"] = 		{["name"] = "Cognoscenti Cabrio",				["brand"] = "Enus",					["model"] = "cogcabrio",			["price"] = 455000,			["category"] = "coupes",			["hash"] = "cogcabrio",				["shop"] = "pdm",},
		["comet2"] = 			{["name"] = "Comet",							["brand"] = "Pfister",				["model"] = "comet2",				["price"] = 142000,			["category"] = "sports",			["hash"] = "comet2",				["shop"] = "pdm",},
		["comet3"] = 			{["name"] = "Comet Retro Custom",				["brand"] = "Pfister",				["model"] = "comet3",				["price"] = 125000,			["category"] = "sports",			["hash"] = "comet3",				["shop"] = "pdm",},
		["comet5"] = 			{["name"] = "Comet SR",							["brand"] = "Pfister",				["model"] = "comet5",				["price"] = 252000,			["category"] = "sports",			["hash"] = "comet5",				["shop"] = "pdm",},
		["coquette"] = 			{["name"] = "Coquette",							["brand"] = "Invetero",				["model"] = "coquette",				["price"] = 97000,			["category"] = "sports",			["hash"] = "coquette",				["shop"] = "pdm",},
		["coquette3"] = 		{["name"] = "Coquette BlackFin",				["brand"] = "Invetero",				["model"] = "coquette3",			["price"] = 45000,			["category"] = "muscle",			["hash"] = "coquette3",				["shop"] = "pdm",},
		["coquette2"] = 		{["name"] = "Coquette Classic",					["brand"] = "Invetero",				["model"] = "coquette2",			["price"] = 125000,			["category"] = "sportsclassics",	["hash"] = "coquette2",				["shop"] = "pdm",},
		["cyclone"] = 			{["name"] = "Cyclone",							["brand"] = "Coil",					["model"] = "cyclone",				["price"] = 1200000,		["category"] = "super",				["hash"] = "cyclone",				["shop"] = "pdm",},
		["daemon"] = 			{["name"] = "Daemon",							["brand"] = "WMC",					["model"] = "daemon",				["price"] = 12500,			["category"] = "motorcycles",		["hash"] = "daemon",				["shop"] = "pdm",},
		["defiler"] = 			{["name"] = "Defiler",							["brand"] = "Shitzu",				["model"] = "defiler",				["price"] = 13500,			["category"] = "motorcycles",		["hash"] = "defiler",				["shop"] = "pdm",},
		["dilettante"] = 		{["name"] = "Dilettante",						["brand"] = "Karin",				["model"] = "dilettante",			["price"] = 13000,			["category"] = "compacts",			["hash"] = "dilettante",			["shop"] = "pdm",},
		["dominator"] = 		{["name"] = "Dominator",						["brand"] = "Vapid",				["model"] = "dominator",			["price"] = 53000,			["category"] = "muscle",			["hash"] = "dominator",				["shop"] = "pdm",},
		["dominator3"] = 		{["name"] = "Dominator GTX",					["brand"] = "Vapid",				["model"] = "dominator3",			["price"] = 87500,			["category"] = "muscle",			["hash"] = "dominator3",			["shop"] = "pdm",},
		["tampa2"] = 			{["name"] = "Drift Tampa",						["brand"] = "Declasse",				["model"] = "tampa2",				["price"] = 50500,			["category"] = "muscle",			["hash"] = "tampa2",				["shop"] = "pdm",},
		["dubsta2"] = 			{["name"] = "Dubsta Luxuary",					["brand"] = "Benefactor",			["model"] = "dubsta2",				["price"] = 165000,			["category"] = "suvs",				["hash"] = "dubsta2",				["shop"] = "pdm",},
		["dukes"] = 			{["name"] = "Dukes",							["brand"] = "Imponte",				["model"] = "dukes",				["price"] = 15000,			["category"] = "muscle",			["hash"] = "dukes",					["shop"] = "pdm",},
		["dune"] = 				{["name"] = "Dune Buggy",						["brand"] = "Annis",				["model"] = "dune",					["price"] = 8000,			["category"] = "offroad",			["hash"] = "dune",					["shop"] = "pdm",},
		["elegy"] = 			{["name"] = "Elegy Retro Custom",				["brand"] = "Annis",				["model"] = "elegy",				["price"] = 60000,			["category"] = "sports",			["hash"] = "elegy",					["shop"] = "pdm",},
		["elegy2"] = 			{["name"] = "Elegy RH8",						["brand"] = "Annis",				["model"] = "elegy2",				["price"] = 68500,			["category"] = "sports",			["hash"] = "elegy2",				["shop"] = "pdm",},
		["zl400b"] = 			{["name"] = "Eliminator Bike",					["brand"] = "Eliminator",			["model"] = "zl400b",				["price"] = 30000,			["category"] = "motorcycles",		["hash"] = "zl400b",				["shop"] = "pdm",},
		["ellie"] = 			{["name"] = "Ellie",							["brand"] = "Vapid",				["model"] = "ellie",				["price"] = 50000,			["category"] = "muscle",			["hash"] = "ellie",					["shop"] = "pdm",},
		["emperor"] = 			{["name"] = "Emperor",							["brand"] = "Albany",				["model"] = "emperor",				["price"] = 14500,			["category"] = "sedans",			["hash"] = "emperor",				["shop"] = "pdm",},
		["entityxf"] = 			{["name"] = "Entity XF",						["brand"] = "Jaguar",				["model"] = "entityxf",				["price"] = 825000,			["category"] = "super",				["hash"] = "entityxf",				["shop"] = "pdm",},
		["entity2"] = 			{["name"] = "Entity XXR",						["brand"] = "Jaguar",				["model"] = "entity2",				["price"] = 1532000,		["category"] = "super",				["hash"] = "entity2",				["shop"] = "pdm",},
		["esskey"] = 			{["name"] = "Esskey",							["brand"] = "Pegassi",				["model"] = "esskey",				["price"] = 6000,			["category"] = "motorcycles",		["hash"] = "esskey",				["shop"] = "pdm",},
		["exemplar"] = 			{["name"] = "Exemplar",							["brand"] = "Dewbauchee",			["model"] = "exemplar",				["price"] = 65000,			["category"] = "coupes",			["hash"] = "exemplar",				["shop"] = "pdm",},
		["f620"] = 				{["name"] = "F620",								["brand"] = "Ocelot",				["model"] = "f620",					["price"] = 37500,			["category"] = "coupes",			["hash"] = "f620",					["shop"] = "pdm",},
		["faction"] = 			{["name"] = "Faction",							["brand"] = "Willard",				["model"] = "faction",				["price"] = 20000,			["category"] = "muscle",			["hash"] = "faction",				["shop"] = "pdm",},
		["faction2"] = 			{["name"] = "Faction Rider",					["brand"] = "Willard",				["model"] = "faction2",				["price"] = 22500,			["category"] = "muscle",			["hash"] = "faction2",				["shop"] = "pdm",},
		["fagaloa"] = 			{["name"] = "Fagaloa",							["brand"] = "Vulcar",				["model"] = "fagaloa",				["price"] = 35000,			["category"] = "sportsclassics",	["hash"] = "fagaloa",				["shop"] = "pdm",},
		["faggio3"] = 			{["name"] = "Faggio Mod",						["brand"] = "Pegassi",				["model"] = "faggio3",				["price"] = 900,			["category"] = "motorcycles",		["hash"] = "faggio3",				["shop"] = "pdm",},
		["faggio"] = 			{["name"] = "Faggio Sport",						["brand"] = "Pegassi",				["model"] = "faggio",				["price"] = 750,			["category"] = "motorcycles",		["hash"] = "faggio",				["shop"] = "pdm",},
		["felon"] = 			{["name"] = "Felon",							["brand"] = "Lampadati",			["model"] = "felon",				["price"] = 31000,			["category"] = "coupes",			["hash"] = "felon",					["shop"] = "pdm",},
		["felon2"] = 			{["name"] = "Felon GT",							["brand"] = "Lampadati",			["model"] = "felon2",				["price"] = 37000,			["category"] = "coupes",			["hash"] = "felon2",				["shop"] = "pdm",},
		["feltzer2"] = 			{["name"] = "Feltzer",							["brand"] = "Benefactor",			["model"] = "feltzer2",				["price"] = 83500,			["category"] = "sports",			["hash"] = "feltzer2",				["shop"] = "pdm",},
		["flashgt"] = 			{["name"] = "Flash GT",							["brand"] = "Vapid",				["model"] = "flashgt",				["price"] = 111000,			["category"] = "sports",			["hash"] = "flashgt",				["shop"] = "pdm",},
		["fmj"] = 				{["name"] = "FMJ",								["brand"] = "Vapid",				["model"] = "fmj",					["price"] = 335000,			["category"] = "super",				["hash"] = "fmj",					["shop"] = "pdm",},
		["focusrs"] = 			{["name"] = "Ford Focus RS",					["brand"] = "Ford",					["model"] = "focusrs",				["price"] = 70000,			["category"] = "sedans",			["hash"] = "focusrs",				["shop"] = "pdm",},
		["fmgt"] = 				{["name"] = "Ford Mustang GT",					["brand"] = "Ford",					["model"] = "fmgt",					["price"] = 120000,			["category"] = "muscle",			["hash"] = "mgt",					["shop"] = "pdm",},
		["svt00"] = 			{["name"] = "Ford Mustang SVT",					["brand"] = "Ford",					["model"] = "svt00",				["price"] = 100000,			["category"] = "muscle",			["hash"] = "svt00",					["shop"] = "pdm",},
		["fq2"] = 				{["name"] = "FQ2",								["brand"] = "Fathom",				["model"] = "fq2",					["price"] = 38000,			["category"] = "suvs",				["hash"] = "fq2",					["shop"] = "pdm",},
		["btype2"] = 			{["name"] = "Franken Stange",					["brand"] = "Albany",				["model"] = "btype2",				["price"] = 350000,			["category"] = "sportsclassics",	["hash"] = "btype2",				["shop"] = "pdm",},
		["fugitive"] = 			{["name"] = "Fugitive",							["brand"] = "Cheval",				["model"] = "fugitive",				["price"] = 22500,			["category"] = "sedans",			["hash"] = "fugitive",				["shop"] = "pdm",},
		["furoregt"] = 			{["name"] = "Furore GT",						["brand"] = "Lampadati",			["model"] = "furoregt",				["price"] = 115000,			["category"] = "sports",			["hash"] = "furoregt",				["shop"] = "pdm",},
		["fusilade"] = 			{["name"] = "Fusilade",							["brand"] = "Schyster",				["model"] = "fusilade",				["price"] = 50000,			["category"] = "sports",			["hash"] = "fusilade",				["shop"] = "pdm",},
		["futo"] = 				{["name"] = "Futo",								["brand"] = "Karin",				["model"] = "futo",					["price"] = 20000,			["category"] = "coupes",			["hash"] = "futo",					["shop"] = "pdm",},
		["gauntlet"] = 			{["name"] = "Gauntlet",							["brand"] = "Bravado",				["model"] = "gauntlet",				["price"] = 39500,			["category"] = "muscle",			["hash"] = "gauntlet",				["shop"] = "pdm",},
		["glendale"] = 			{["name"] = "Glendale",							["brand"] = "Benefactor",			["model"] = "glendale",				["price"] = 11500,			["category"] = "sedans",			["hash"] = "glendale",				["shop"] = "pdm",},
		["gp1"] = 				{["name"] = "GP1",								["brand"] = "Progen",				["model"] = "gp1",					["price"] = 462000,			["category"] = "super",				["hash"] = "gp1",					["shop"] = "pdm",},
		["granger"] = 			{["name"] = "Granger",							["brand"] = "Declasse",				["model"] = "granger",				["price"] = 43500,			["category"] = "suvs",				["hash"] = "granger",				["shop"] = "pdm",},
		["gresley"] = 			{["name"] = "Gresley",							["brand"] = "Bravado",				["model"] = "gresley",				["price"] = 47000,			["category"] = "suvs",				["hash"] = "gresley",				["shop"] = "pdm",},
		["gt500"] = 			{["name"] = "GT500",							["brand"] = "Grotti",				["model"] = "gt500",				["price"] = 255000,			["category"] = "sportsclassics",	["hash"] = "gt500",					["shop"] = "pdm",},
		["guardian"] = 			{["name"] = "Guardian",							["brand"] = "Annis",				["model"] = "guardian",				["price"] = 45000,			["category"] = "offroad",			["hash"] = "guardian",				["shop"] = "pdm",},
		["hakuchou"] = 			{["name"] = "Hakuchou",							["brand"] = "Shitzu",				["model"] = "hakuchou",				["price"] = 16000,			["category"] = "motorcycles",		["hash"] = "hakuchou",				["shop"] = "pdm",},
		["f131"] = 				{["name"] = "Hellcat Bob X132",					["brand"] = "Hellcat",				["model"] = "f131",					["price"] = 150000,			["category"] = "custom",			["hash"] = "f131",					["shop"] = "pdm",},
		["hexer"] = 			{["name"] = "Hexer",							["brand"] = "LCC",					["model"] = "hexer",				["price"] = 7500,			["category"] = "motorcycles",		["hash"] = "hexer",					["shop"] = "pdm",},
		["hotknife"] = 			{["name"] = "Hotknife",							["brand"] = "Vapid",				["model"] = "hotknife",				["price"] = 95000,			["category"] = "muscle",			["hash"] = "hotknife",				["shop"] = "pdm",},
		["huntley"] = 			{["name"] = "Huntley S",						["brand"] = "Enus",					["model"] = "huntley",				["price"] = 85000,			["category"] = "suvs",				["hash"] = "huntley",				["shop"] = "pdm",},
		["hustler"] = 			{["name"] = "Hustler",							["brand"] = "Vapid",				["model"] = "hustler",				["price"] = 75500,			["category"] = "muscle",			["hash"] = "hustler",				["shop"] = "pdm",},
		["infernus"] = 			{["name"] = "Infernus",							["brand"] = "Pegassi",				["model"] = "infernus",				["price"] = 285000,			["category"] = "super",				["hash"] = "infernus",				["shop"] = "pdm",},
		["infernus2"] = 		{["name"] = "Infernus Classic",					["brand"] = "Pegassi",				["model"] = "infernus2",			["price"] = 200000,			["category"] = "sportsclassics",	["hash"] = "infernus2",				["shop"] = "pdm",},
		["intruder"] = 			{["name"] = "Intruder",							["brand"] = "Karin",				["model"] = "intruder",				["price"] = 15000,			["category"] = "sedans",			["hash"] = "intruder",				["shop"] = "pdm",},
		["issi2"] = 			{["name"] = "Issi",								["brand"] = "Weeny",				["model"] = "issi2",				["price"] = 12000,			["category"] = "compacts",			["hash"] = "issi2",					["shop"] = "pdm",},
		["issi3"] = 			{["name"] = "Issi Classic",						["brand"] = "Weeny",				["model"] = "issi3",				["price"] = 10000,			["category"] = "compacts",			["hash"] = "issi3",					["shop"] = "pdm",},
		["italigtb"] = 			{["name"] = "Itali GTB",						["brand"] = "Progen",				["model"] = "italigtb",				["price"] = 1200000,		["category"] = "super",				["hash"] = "italigtb",				["shop"] = "pdm",},
		["jackal"] = 			{["name"] = "Jackal",							["brand"] = "Ocelot",				["model"] = "jackal",				["price"] = 29000,			["category"] = "coupes",			["hash"] = "jackal",				["shop"] = "pdm",},
		["xkgt"] = 				{["name"] = "Jaguar GT",						["brand"] = "Jaguar",				["model"] = "xkgt",					["price"] = 150000,			["category"] = "sports",			["hash"] = "xkgt",					["shop"] = "pdm",},
		["jester"] = 			{["name"] = "Jester",							["brand"] = "Dinka",				["model"] = "jester",				["price"] = 265000,			["category"] = "sports",			["hash"] = "jester",				["shop"] = "pdm",},
		["jester3"] = 			{["name"] = "Jester Classic",					["brand"] = "Dinka",				["model"] = "jester3",				["price"] = 70000,			["category"] = "sports",			["hash"] = "jester3",				["shop"] = "pdm",},
		["khamelion"] = 		{["name"] = "Khamelion",						["brand"] = "Hijak",				["model"] = "khamelion",			["price"] = 102000,			["category"] = "sports",			["hash"] = "khamelion",				["shop"] = "pdm",},
		["kuruma"] = 			{["name"] = "Kuruma",							["brand"] = "Karin",				["model"] = "kuruma",				["price"] = 59500,			["category"] = "sports",			["hash"] = "kuruma",				["shop"] = "pdm",},
		["lp580"] = 			{["name"] = "Lamborghini Aventador",			["brand"] = "Lamborghini",			["model"] = "lp580",				["price"] = 230000,			["category"] = "sports",			["hash"] = "lp580",					["shop"] = "pdm",},
		["landstalker"] = 		{["name"] = "Landstalker",						["brand"] = "Dundreary",			["model"] = "landstalker",			["price"] = 27000,			["category"] = "suvs",				["hash"] = "landstalker",			["shop"] = "pdm",},
		["lexy"] = 				{["name"] = "Lexus SC900",						["brand"] = "Lexus",				["model"] = "lexy",					["price"] = 80000,			["category"] = "sedans",			["hash"] = "lexy",					["shop"] = "pdm",},
		["lynx"] = 				{["name"] = "Lynx",								["brand"] = "Ocelot",				["model"] = "lynx",					["price"] = 68500,			["category"] = "sports",			["hash"] = "lynx",					["shop"] = "pdm",},
		["mamba"] = 			{["name"] = "Mamba",							["brand"] = "Declasse",				["model"] = "mamba",				["price"] = 86000,			["category"] = "sportsclassics",	["hash"] = "mamba",					["shop"] = "pdm",},
		["massacro"] = 			{["name"] = "Massacro",							["brand"] = "Dewbauchee",			["model"] = "massacro",				["price"] = 165000,			["category"] = "sports",			["hash"] = "massacro",				["shop"] = "pdm",},
		["monroe"] = 			{["name"] = "Monroe",							["brand"] = "Pegassi",				["model"] = "monroe",				["price"] = 98500,			["category"] = "sportsclassics",	["hash"] = "monroe",				["shop"] = "pdm",},
		["moonbeam"] = 			{["name"] = "Moonbeam",							["brand"] = "Declasse",				["model"] = "moonbeam",				["price"] = 29500,			["category"] = "vans",				["hash"] = "moonbeam",				["shop"] = "pdm",},
		["nemesis"] = 			{["name"] = "Nemesis",							["brand"] = "Principe",				["model"] = "nemesis",				["price"] = 12000,			["category"] = "motorcycles",		["hash"] = "nemesis",				["shop"] = "pdm",},
		["neon"] = 				{["name"] = "Neon",								["brand"] = "Pfister",				["model"] = "neon",					["price"] = 185000,			["category"] = "sports",			["hash"] = "neon",					["shop"] = "pdm",},
		["nero"] = 				{["name"] = "Nero",								["brand"] = "Truffade",				["model"] = "nero",					["price"] = 2352000,		["category"] = "super",				["hash"] = "nero",					["shop"] = "pdm",},
		["nightblade"] = 		{["name"] = "Nightblade",						["brand"] = "WMC",					["model"] = "nightblade",			["price"] = 14500,			["category"] = "motorcycles",		["hash"] = "nightblade",			["shop"] = "pdm",},
		["nightshade"] = 		{["name"] = "Nightshade",						["brand"] = "Imponte",				["model"] = "nightshade",			["price"] = 84000,			["category"] = "muscle",			["hash"] = "nightshade",			["shop"] = "pdm",},
		["omnis"] = 			{["name"] = "Omnis",							["brand"] = "Wow",					["model"] = "omnis",				["price"] = 120000,			["category"] = "sports",			["hash"] = "omnis",					["shop"] = "pdm",},
		["oracle"] = 			{["name"] = "Oracle",							["brand"] = "Ubermacht",			["model"] = "oracle",				["price"] = 25000,			["category"] = "sedans",			["hash"] = "oracle",				["shop"] = "pdm",},
		["oracle2"] = 			{["name"] = "Oracle XS",						["brand"] = "Ubermacht",			["model"] = "oracle2",				["price"] = 28000,			["category"] = "coupes",			["hash"] = "oracle2",				["shop"] = "pdm",},
		["osiris"] = 			{["name"] = "Osiris",							["brand"] = "Pegassi",				["model"] = "osiris",				["price"] = 1400000,		["category"] = "super",				["hash"] = "osiris",				["shop"] = "pdm",},
		["panto"] = 			{["name"] = "Panto",							["brand"] = "Benefactor",			["model"] = "panto",				["price"] = 8500,			["category"] = "compacts",			["hash"] = "panto",					["shop"] = "pdm",},
		["pariah"] = 			{["name"] = "Pariah",							["brand"] = "Ocelot",				["model"] = "pariah",				["price"] = 395000,			["category"] = "sports",			["hash"] = "pariah",				["shop"] = "pdm",},
		["patriot"] = 			{["name"] = "Patriot",							["brand"] = "Mammoth",				["model"] = "patriot",				["price"] = 32000,			["category"] = "suvs",				["hash"] = "patriot",				["shop"] = "pdm",},
		["pcj"] = 				{["name"] = "PCJ-600",							["brand"] = "Shitzu",				["model"] = "pcj",					["price"] = 13500,			["category"] = "motorcycles",		["hash"] = "pcj",					["shop"] = "pdm",},
		["penetrator"] = 		{["name"] = "Penetrator",						["brand"] = "Ocelot",				["model"] = "penetrator",			["price"] = 567000,			["category"] = "super",				["hash"] = "penetrator",			["shop"] = "pdm",},
		["phoenix"] = 			{["name"] = "Phoenix",							["brand"] = "Imponte",				["model"] = "phoenix",				["price"] = 25000,			["category"] = "muscle",			["hash"] = "phoenix",				["shop"] = "pdm",},
		["picador"] = 			{["name"] = "Picador",							["brand"] = "Cheval",				["model"] = "picador",				["price"] = 18000,			["category"] = "muscle",			["hash"] = "picador",				["shop"] = "pdm",},
		["pigalle"] = 			{["name"] = "Pigalle",							["brand"] = "Lampadati",			["model"] = "pigalle",				["price"] = 135000,			["category"] = "sportsclassics",	["hash"] = "pigalle",				["shop"] = "pdm",},
		["belvedere57"] = 		{["name"] = "Plymouth",							["brand"] = "Plymouth",				["model"] = "belvedere57",			["price"] = 60000,			["category"] = "sports",			["hash"] = "belvedere57",			["shop"] = "pdm",},
		["prairie"] = 			{["name"] = "Prairie",							["brand"] = "Bollokan",				["model"] = "prairie",				["price"] = 15000,			["category"] = "compacts",			["hash"] = "prairie",				["shop"] = "pdm",},
		["premier"] = 			{["name"] = "Premier",							["brand"] = "Declasse",				["model"] = "premier",				["price"] = 16500,			["category"] = "sedans",			["hash"] = "premier",				["shop"] = "pdm",},
		["primo2"] = 			{["name"] = "Primo Custom",						["brand"] = "Albany",				["model"] = "primo2",				["price"] = 14500,			["category"] = "sedans",			["hash"] = "primo2",				["shop"] = "pdm",},
		["radi"] = 				{["name"] = "Radius",							["brand"] = "Vapid",				["model"] = "radi",					["price"] = 24000,			["category"] = "suvs",				["hash"] = "radi",					["shop"] = "pdm",},
		["raiden"] = 			{["name"] = "Raiden",							["brand"] = "Coil",					["model"] = "raiden",				["price"] = 150000,			["category"] = "sports",			["hash"] = "raiden",				["shop"] = "pdm",},
		["18Velar"] = 			{["name"] = "Range Rover Velar",				["brand"] = "Range Rover",			["model"] = "18Velar",				["price"] = 150000,			["category"] = "custom",			["hash"] = "18Velar",				["shop"] = "pdm",},
		["rapidgt"] = 			{["name"] = "Rapid GT",							["brand"] = "Dewbauchee",			["model"] = "rapidgt",				["price"] = 60000,			["category"] = "sports",			["hash"] = "rapidgt",				["shop"] = "pdm",},
		["rapidgt3"] = 			{["name"] = "Rapid GT",							["brand"] = "Dewbauchee",			["model"] = "rapidgt3",				["price"] = 445000,			["category"] = "sportsclassics",	["hash"] = "rapidgt3",				["shop"] = "pdm",},
		["rapidgt2"] = 			{["name"] = "Rapid GT Convertible",				["brand"] = "Dewbauchee",			["model"] = "rapidgt2",				["price"] = 65000,			["category"] = "sports",			["hash"] = "rapidgt2",				["shop"] = "pdm",},
		["reaper"] = 			{["name"] = "Reaper",							["brand"] = "Pegassi",				["model"] = "reaper",				["price"] = 365000,			["category"] = "super",				["hash"] = "reaper",				["shop"] = "pdm",},
		["rebel2"] = 			{["name"] = "Rebel",							["brand"] = "Annis",				["model"] = "rebel2",				["price"] = 35000,			["category"] = "offroad",			["hash"] = "rebel2",				["shop"] = "pdm",},
		["regina"] = 			{["name"] = "Regina",							["brand"] = "Dundreary",			["model"] = "regina",				["price"] = 10000,			["category"] = "sedans",			["hash"] = "regina",				["shop"] = "pdm",},
		["revolter"] = 			{["name"] = "Revolter",							["brand"] = "Ubermacht",			["model"] = "revolter",				["price"] = 195000,			["category"] = "sports",			["hash"] = "revolter",				["shop"] = "pdm",},
		["rhapsody"] = 			{["name"] = "Rhapsody",							["brand"] = "Declasse",				["model"] = "rhapsody",				["price"] = 10000,			["category"] = "compacts",			["hash"] = "rhapsody",				["shop"] = "pdm",},
		["rocoto"] = 			{["name"] = "Rocoto",							["brand"] = "Obey",					["model"] = "rocoto",				["price"] = 48500,			["category"] = "suvs",				["hash"] = "rocoto",				["shop"] = "pdm",},
		["btype"] = 			{["name"] = "Roosevelt",						["brand"] = "Albany",				["model"] = "btype",				["price"] = 325000,			["category"] = "sportsclassics",	["hash"] = "btype",					["shop"] = "pdm",},
		["btype3"] = 			{["name"] = "Roosevelt Valor",					["brand"] = "Albany",				["model"] = "btype3",				["price"] = 375000,			["category"] = "sportsclassics",	["hash"] = "btype3",				["shop"] = "pdm",},
		["ruffian"] = 			{["name"] = "Ruffian",							["brand"] = "Pegassi",				["model"] = "ruffian",				["price"] = 14000,			["category"] = "motorcycles",		["hash"] = "ruffian",				["shop"] = "pdm",},
		["rumpo"] = 			{["name"] = "Rumpo",							["brand"] = "Bravado",				["model"] = "rumpo",				["price"] = 30000,			["category"] = "vans",				["hash"] = "rumpo",					["shop"] = "pdm",},
		["ruston"] = 			{["name"] = "Ruston",							["brand"] = "Hijak",				["model"] = "ruston",				["price"] = 165000,			["category"] = "sports",			["hash"] = "ruston",				["shop"] = "pdm",},
		["sabregt2"] = 			{["name"] = "Sabre GT",							["brand"] = "Declasse",				["model"] = "sabregt2",				["price"] = 29500,			["category"] = "muscle",			["hash"] = "sabregt2",				["shop"] = "pdm",},
		["sabregt"] = 			{["name"] = "Sabre Turbo",						["brand"] = "Declasse",				["model"] = "sabregt",				["price"] = 25000,			["category"] = "muscle",			["hash"] = "sabregt",				["shop"] = "pdm",},
		["sandking"] = 			{["name"] = "Sandking",							["brand"] = "Annis",				["model"] = "sandking",				["price"] = 55000,			["category"] = "offroad",			["hash"] = "sandking",				["shop"] = "pdm",},
		["sc1"] = 				{["name"] = "SC1",								["brand"] = "Ubermacht",			["model"] = "sc1",					["price"] = 750000,			["category"] = "super",				["hash"] = "sc1",					["shop"] = "pdm",},
		["schafter2"] = 		{["name"] = "Schafter",							["brand"] = "Benefactor",			["model"] = "schafter2",			["price"] = 32000,			["category"] = "sedans",			["hash"] = "schafter2",				["shop"] = "pdm",},
		["schafter3"] = 		{["name"] = "Schafter V12",						["brand"] = "Benefactor",			["model"] = "schafter3",			["price"] = 69000,			["category"] = "sports",			["hash"] = "schafter3",				["shop"] = "pdm",},
		["seminole"] = 			{["name"] = "Seminole",							["brand"] = "Canis",				["model"] = "seminole",				["price"] = 29500,			["category"] = "suvs",				["hash"] = "seminole",				["shop"] = "pdm",},
		["sentinel"] = 			{["name"] = "Sentinel",							["brand"] = "Ubermacht",			["model"] = "sentinel",				["price"] = 30000,			["category"] = "coupes",			["hash"] = "sentinel",				["shop"] = "pdm",},
		["sentinel3"] = 		{["name"] = "Sentinel Classic",					["brand"] = "Ubermacht",			["model"] = "sentinel3",			["price"] = 40000,			["category"] = "coupes",			["hash"] = "sentinel3",				["shop"] = "pdm",},
		-- ["sentinelc1"] = 		{["name"] = "Sentinel Custom XR",				["brand"] = "Ubermach",				["model"] = "sentinelc1",			["price"] = 250000,			["category"] = "super",				["hash"] = "sentinelc1",			["shop"] = "pdm",},
		["sentinel2"] = 		{["name"] = "Sentinel XS",						["brand"] = "Ubermacht",			["model"] = "sentinel2",			["price"] = 36500,			["category"] = "coupes",			["hash"] = "sentinel2",				["shop"] = "pdm",},
		["seven70"] = 			{["name"] = "Seven-70",							["brand"] = "Dewbauchee",			["model"] = "seven70",				["price"] = 85000,			["category"] = "sports",			["hash"] = "seven70",				["shop"] = "pdm",},
		["slamvan3"] = 			{["name"] = "Slam Van",							["brand"] = "Vapid",				["model"] = "slamvan3",				["price"] = 35000,			["category"] = "muscle",			["hash"] = "slamvan3",				["shop"] = "pdm",},
		["sovereign"] = 		{["name"] = "Sovereign",						["brand"] = "WMC",					["model"] = "sovereign",			["price"] = 27000,			["category"] = "motorcycles",		["hash"] = "sovereign",				["shop"] = "pdm",},
		["specter"] = 			{["name"] = "Specter",							["brand"] = "Dewbauchee",			["model"] = "specter",				["price"] = 155000,			["category"] = "sports",			["hash"] = "specter",				["shop"] = "pdm",},
		["specter2"] = 			{["name"] = "Specter Custom",					["brand"] = "Dewbauchee",			["model"] = "specter2",				["price"] = 178000,			["category"] = "sports",			["hash"] = "specter2",				["shop"] = "pdm",},
		["stafford"] = 			{["name"] = "Stafford",							["brand"] = "Enus",					["model"] = "stafford",				["price"] = 45000,			["category"] = "sedans",			["hash"] = "stafford",				["shop"] = "pdm",},
		["stalion"] = 			{["name"] = "Stallion",							["brand"] = "Declasse",				["model"] = "stalion",				["price"] = 23500,			["category"] = "muscle",			["hash"] = "stalion",				["shop"] = "pdm",},
		["stingergt"] = 		{["name"] = "Stinger GT",						["brand"] = "Grotti",				["model"] = "stingergt",			["price"] = 184000,			["category"] = "sportsclassics",	["hash"] = "stingergt",				["shop"] = "pdm",},
		["feltzer3"] = 			{["name"] = "Stirling GT",						["brand"] = "Benefactor",			["model"] = "feltzer3",				["price"] = 195000,			["category"] = "sportsclassics",	["hash"] = "feltzer3",				["shop"] = "pdm",},
		["streiter"] = 			{["name"] = "Streiter",							["brand"] = "Benefactor",			["model"] = "streiter",				["price"] = 98000,			["category"] = "sports",			["hash"] = "streiter",				["shop"] = "pdm",},
		["sultan"] = 			{["name"] = "Sultan",							["brand"] = "Karin",				["model"] = "sultan",				["price"] = 56500,			["category"] = "sports",			["hash"] = "sultan",				["shop"] = "pdm",},
		["sultanrs"] = 			{["name"] = "Sultan RS",						["brand"] = "Karin",				["model"] = "sultanrs",				["price"] = 76500,			["category"] = "sports",			["hash"] = "sultanrs",				["shop"] = "pdm",},
		["superd"] = 			{["name"] = "Super Diamond",					["brand"] = "Enus",					["model"] = "superd",				["price"] = 108000,			["category"] = "sedans",			["hash"] = "superd",				["shop"] = "pdm",},
		["surano"] = 			{["name"] = "Surano",							["brand"] = "Benefactor",			["model"] = "surano",				["price"] = 89000,			["category"] = "sports",			["hash"] = "surano",				["shop"] = "pdm",},
		["surge"] = 			{["name"] = "Surge",							["brand"] = "Cheval",				["model"] = "surge",				["price"] = 28500,			["category"] = "sedans",			["hash"] = "surge",					["shop"] = "pdm",},
		["t20"] = 				{["name"] = "T20",								["brand"] = "Progen",				["model"] = "t20",					["price"] = 1680000,		["category"] = "super",				["hash"] = "t20",					["shop"] = "pdm",},
		["tailgater"] = 		{["name"] = "Tailgater",						["brand"] = "Obey",					["model"] = "tailgater",			["price"] = 45000,			["category"] = "sedans",			["hash"] = "tailgater",				["shop"] = "pdm",},
		["taipan"] = 			{["name"] = "Taipan",							["brand"] = "Cheval",				["model"] = "taipan",				["price"] = 1650000,		["category"] = "super",				["hash"] = "taipan",				["shop"] = "pdm",},
		["tampa"] = 			{["name"] = "Tampa",							["brand"] = "Declasse",				["model"] = "tampa",				["price"] = 27500,			["category"] = "muscle",			["hash"] = "tampa",					["shop"] = "pdm",},
		["tempesta"] = 			{["name"] = "Tempesta",							["brand"] = "Pegassi",				["model"] = "tempesta",				["price"] = 400000,			["category"] = "super",				["hash"] = "tempesta",				["shop"] = "pdm",},
		["tezeract"] = 			{["name"] = "Tezeract",							["brand"] = "Pegassi",				["model"] = "tezeract",				["price"] = 2350000,		["category"] = "super",				["hash"] = "tezeract",				["shop"] = "pdm",},
		["thrust"] = 			{["name"] = "Thrust",							["brand"] = "Dinka",				["model"] = "thrust",				["price"] = 16000,			["category"] = "motorcycles",		["hash"] = "thrust",				["shop"] = "pdm",},
		["torero"] = 			{["name"] = "Torero",							["brand"] = "Pegassi",				["model"] = "torero",				["price"] = 285500,			["category"] = "sportsclassics",	["hash"] = "torero",				["shop"] = "pdm",},
		["rmodsupra"] = 		{["name"] = "Toyota Supra",						["brand"] = "Toyota",				["model"] = "rmodsupra",			["price"] = 250000,			["category"] = "sports",			["hash"] = "rmodsupra",				["shop"] = "pdm",},
		["turismor"] = 			{["name"] = "Turismo R",						["brand"] = "Grotti",				["model"] = "turismor",				["price"] = 750000,			["category"] = "super",				["hash"] = "turismor",				["shop"] = "pdm",},
		["tyrant"] = 			{["name"] = "Tyrant",							["brand"] = "Tyrant",				["model"] = "tyrant",				["price"] = 2100000,		["category"] = "super",				["hash"] = "tyrant",				["shop"] = "pdm",},
		["vacca"] = 			{["name"] = "Vacca",							["brand"] = "Pegassi",				["model"] = "vacca",				["price"] = 255000,			["category"] = "super",				["hash"] = "vacca",					["shop"] = "pdm",},
		["vagner"] = 			{["name"] = "Vagner",							["brand"] = "Dewbauchee",			["model"] = "vagner",				["price"] = 1460000,		["category"] = "super",				["hash"] = "vagner",				["shop"] = "pdm",},
		["verlierer2"] = 		{["name"] = "Verlierer",						["brand"] = "Bravado",				["model"] = "verlierer2",			["price"] = 90500,			["category"] = "sports",			["hash"] = "verlierer2",			["shop"] = "pdm",},
		["vigero"] = 			{["name"] = "Vigero",							["brand"] = "Declasse",				["model"] = "vigero",				["price"] = 16500,			["category"] = "muscle",			["hash"] = "vigero",				["shop"] = "pdm",},
		["virgo"] = 			{["name"] = "Virgo",							["brand"] = "Albany",				["model"] = "virgo",				["price"] = 19700,			["category"] = "muscle",			["hash"] = "virgo",					["shop"] = "pdm",},
		["visione"] = 			{["name"] = "Visione",							["brand"] = "Grotti",				["model"] = "visione",				["price"] = 1750000,		["category"] = "sports",			["hash"] = "visione",				["shop"] = "pdm",},
		["voltic"] = 			{["name"] = "Voltic",							["brand"] = "Coil",					["model"] = "voltic",				["price"] = 120000,			["category"] = "super",				["hash"] = "voltic",				["shop"] = "pdm",},
		["voodoo"] = 			{["name"] = "Voodoo",							["brand"] = "Declasse",				["model"] = "voodoo",				["price"] = 21000,			["category"] = "muscle",			["hash"] = "voodoo",				["shop"] = "pdm",},
		["washington"] = 		{["name"] = "Washington",						["brand"] = "Albany",				["model"] = "washington",			["price"] = 19000,			["category"] = "sedans",			["hash"] = "washington",			["shop"] = "pdm",},
		["windsor"] = 			{["name"] = "Windsor",							["brand"] = "Enus",					["model"] = "windsor",				["price"] = 325000,			["category"] = "coupes",			["hash"] = "windsor",				["shop"] = "pdm",},
		["windsor2"] = 			{["name"] = "Windsor Drop",						["brand"] = "Enus",					["model"] = "windsor2",				["price"] = 355000,			["category"] = "coupes",			["hash"] = "windsor2",				["shop"] = "pdm",},
		["prototipo"] = 		{["name"] = "X80 Proto",						["brand"] = "Grotti",				["model"] = "prototipo",			["price"] = 1430000,		["category"] = "super",				["hash"] = "prototipo",				["shop"] = "pdm",},
		["xa21"] = 				{["name"] = "XA-21",							["brand"] = "Ocelot",				["model"] = "xa21",					["price"] = 2150000,		["category"] = "super",				["hash"] = "xa21",					["shop"] = "pdm",},
		["xls"] = 				{["name"] = "XLS",								["brand"] = "Benefactor",			["model"] = "xls",					["price"] = 75000,			["category"] = "suvs",				["hash"] = "xls",					["shop"] = "pdm",},
		["20r1"] = 				{["name"] = "Yamaha R1",						["brand"] = "Yamaha",				["model"] = "20r1",					["price"] = 150000,			["category"] = "custom",			["hash"] = "20r1",					["shop"] = "pdm",},
		["yosemite"] = 			{["name"] = "Yosemite",							["brand"] = "Declasse",				["model"] = "yosemite",				["price"] = 19500,			["category"] = "muscle",			["hash"] = "yosemite",				["shop"] = "pdm",},
		["z2879"] = 			{["name"] = "Z28",								["brand"] = "Z28",					["model"] = "z2879",				["price"] = 100000,			["category"] = "muscle",			["hash"] = "z2879",					["shop"] = "pdm",},
		["zentorno"] = 			{["name"] = "Zentorno",							["brand"] = "Pegassi",				["model"] = "zentorno",				["price"] = 1250000,		["category"] = "super",				["hash"] = "zentorno",				["shop"] = "pdm",},
		["zion"] = 				{["name"] = "Zion",								["brand"] = "Ubermacht",			["model"] = "zion",					["price"] = 25500,			["category"] = "coupes",			["hash"] = "zion",					["shop"] = "pdm",},
		["zion2"] = 			{["name"] = "Zion Cabrio",						["brand"] = "Ubermacht",			["model"] = "zion2",				["price"] = 27000,			["category"] = "coupes",			["hash"] = "zion2",					["shop"] = "pdm",},
		["zombieb"] = 			{["name"] = "Zombie Chopper",					["brand"] = "Steel Horse",			["model"] = "zombieb",				["price"] = 17000,			["category"] = "motorcycles",		["hash"] = "zombieb",				["shop"] = "pdm",},
		["ztype"] = 			{["name"] = "Z-Type",							["brand"] = "Truffade",				["model"] = "ztype",				["price"] = 2500000,		["category"] = "sportsclassics",	["hash"] = "ztype",					["shop"] = "pdm",},
}

