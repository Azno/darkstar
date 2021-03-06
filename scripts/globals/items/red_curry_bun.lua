-----------------------------------------
-- ID: 5759
-- Item: red_curry_bun
-- Food Effect: 30 Min, All Races
-----------------------------------------
-- Health 25
-- Strength 7
-- Agility 1
-- Intelligence -2 
-- Attack % 24.7
-- Attack Cap 150
-- Ranged ATT % 24.7
-- Ranged ATT Cap 150
-- Demon Killer 5
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
local result = 0;
	if (target:hasStatusEffect(EFFECT_FOOD) == true) then
		result = 246;
	end
return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
	target:addStatusEffect(EFFECT_FOOD,0,0,1600,5759);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
	target:addMod(MOD_HP, 25);
	target:addMod(MOD_STR, 7);
	target:addMod(MOD_INT, -2);
	target:addMod(MOD_FOOD_ATTP, 24);
	target:addMod(MOD_FOOD_ATT_CAP, 150);
	target:addMod(MOD_FOOD_RATTP, 24);
	target:addMod(MOD_FOOD_RATT_CAP, 150);
	target:addMod(MOD_DEMON_KILLER, 5);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target,effect)
	target:delMod(MOD_HP, 25);
	target:delMod(MOD_STR, 7);
	target:delMod(MOD_INT, -2);
	target:delMod(MOD_FOOD_ATTP, 24);
	target:delMod(MOD_FOOD_ATT_CAP, 150);
	target:delMod(MOD_FOOD_RATTP, 24);
	target:delMod(MOD_FOOD_RATT_CAP, 150);
	target:delMod(MOD_DEMON_KILLER, 5);
end;