-----------------------------------
--  Area: Newton Movalpolos
--  NPC:  Mining Point
-----------------------------------
package.loaded["scripts/zones/Newton_Movalpolos/TextIDs"] = nil;
-------------------------------------

require("scripts/globals/mining");
require("scripts/zones/Newton_Movalpolos/TextIDs");

-----------------------------------
-- onTrade
-----------------------------------

function onTrade(player,npc,trade)
	startMining(player,player:getZone(),npc,trade,0x000A);
end;

-----------------------------------
-- onTrigger
-----------------------------------

function onTrigger(player,npc)
	player:messageSpecial(MINING_IS_POSSIBLE_HERE,605);
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;