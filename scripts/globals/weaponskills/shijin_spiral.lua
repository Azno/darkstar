-----------------------------------	
-- Shijin Spiral	
-- Hand-to-Hand weapon skill	
-- Skill Level: N/A	
-- Delivers a fivefold attack that Plagues the target. Chance of inflicting Plague varies with TP.	
-- In order to obtain Shijin Spiral, the quest Martial Mastery must be completed.
-- Aligned with the Flame Gorget, Light Gorget & Aqua Gorget.	
-- Aligned with the Flame Belt, Light Belt & Aqua Belt.	
-- Element: None	
-- Modifiers: DEX: 85% //actually 17~100%
-- 100%TP    200%TP    300%TP	
-- 1.0625    1.0625    1.0625	
-----------------------------------	
	
require("scripts/globals/status");	
require("scripts/globals/settings");	
require("scripts/globals/weaponskills");	
-----------------------------------	
	
function OnUseWeaponSkill(player, target, wsID)	
	
	local params = {};
	params.numHits = 5;
	params.ftp100 = 1.0625; params.ftp200 = 1.0625; params.ftp300 = 1.0625;
	params.str_wsc = 0.0; params.dex_wsc = 0.85; params.vit_wsc = 0.0; params.agi_wsc = 0.0; params.int_wsc = 0.0; params.mnd_wsc = 0.0; params.chr_wsc = 0.0;
	params.crit100 = 0.0; params.crit200 = 0.0; params.crit300 = 0.0;
	params.canCrit = false;
	params.acc100 = 0.0; params.acc200= 0.0; params.acc300= 0.0;
	params.atkmulti = 1;
	local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, params);

	if damage > 0 then
		local tp = player:getTP();
		local duration = (tp/100) + 4;
		if(target:hasStatusEffect(EFFECT_PLAGUE) == false) then
			target:addStatusEffect(EFFECT_PLAGUE, 5, 0, duration);
		end
	end	
	
	return tpHits, extraHits, criticalHit, damage;
	
end	
