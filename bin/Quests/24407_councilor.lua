
local UserClass;
local QuestNum;
local Ret = 0;
local NPC= 14407;


if EVENT == 100 then
	QuestNum = SearchQuest(UID, NPC);
		if QuestNum == 0 then 
			 SelectMsg(UID, 2, -1, 4273, NPC, 10, 101);
		elseif QuestNum > 1 and QuestNum < 100 then 
          NpcMsg(UID, 4274, NPC)
      else
          EVENT = QuestNum
		end
end

if EVENT == 101 then
    Ret = 1;
end



local savenum = 63;
local Level
local NATION

if EVENT == 105 then
Level = CheckLevel(UID)
    if Level > 44 and Level < 50 then
    SelectMsg(UID, 4, savenum, 4277, NPC, 22, 106, 23, 107);
    elseif Level > 50 then
    SelectMsg(UID, 2, savenum, 4278, NPC, 10, 101);
    SaveEvent(UID, 4174);
    else
    SelectMsg(UID, 2, savenum, 4278, NPC, 10, 101);
    end
end

if EVENT == 106 then
    SaveEvent(UID,4173);
end

if EVENT == 107 then
    SaveEvent(UID,4176);
end


   local ItemA = 0;


if EVENT == 110 then 
    SelectMsg(UID, 2, savenum, 4280, NPC, 4171, 120, 4063, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 120 then 
    ItemA = HowmuchItem(UID, 910084000);  
   if  ItemA == 0 then 
       SelectMsg(UID, 2, savenum, 4279, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else
    SaveEvent(UID, 4174);
    RunExchange(UID, 468);
   end
end
-----------------------------------------------------------
-- ´ÙÅ©·ç³ª ³¡ 
-----------------------------------------------------------

-----------------------------------------------------------
-- ·ç³ª ½ÃÀÛ 
local savenum = 64;
local Level
local NATION
-----------------------------------------------------------

-- [°í¹®°ü]³×Áî  64¹øÀÇ ¼Ó¼º 0¹ø 4¹øÀÏ °æ¿ì

if EVENT == 125 then
Level = CheckLevel(UID)
    if Level > 39 then -- 40 ÀÌ»óÀÏ¶§ 
    SelectMsg(UID, 4, savenum, 4283, NPC, 22, 126, 23, 127, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    else
    SelectMsg(UID, 2, savenum, 4284, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
    end
end

if EVENT == 126 then
    SaveEvent(UID,4178);
end

if EVENT == 127 then
    SaveEvent(UID,4181);
end

--[°í¹®°ü]³×Áî 64¹øÀÇ ¼Ó¼º 1¹ø 3¹øÀÏ °æ¿ì

   local ItemA = 0;


if EVENT == 130 then 
    SelectMsg(UID, 2, savenum, 4285, NPC, 4171, 131, 4063, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


if EVENT == 131 then 
    ItemA = HowmuchItem(UID, 910085000);  
   if  ItemA == 0 then 
       SelectMsg(UID, 2, savenum, 4179, NPC, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
   else
    SaveEvent(UID, 4168);
    RunExchange(UID, 469);
   end
end

-----------------------------------------------------------
-- ·ç³ª ³¡ 
-----------------------------------------------------------
