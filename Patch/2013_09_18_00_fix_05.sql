-- Azuremyst Isle
-- fix_quests
UPDATE `quest_template` SET `RequiredRaces` = 1024 WHERE `Id` in (9289,9288,9291,9421,9409,9369);
UPDATE `quest_template` SET `RequiredRaces` = 1101 WHERE `Id` in (10304,11356,13506,13591,14169);
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `Id` = 11581;
UPDATE `creature_template` SET `ScriptName` = 'npc_geezle' WHERE `entry` = 17318;
-- fix npc 16516 (
UPDATE `creature_template` SET `faction_A` = 91, `faction_H` = 91 WHERE `entry` = 16516;
-- fix npc 16521
UPDATE `creature_template` SET `faction_A` = 1620, `faction_H` = 1620 WHERE `entry` = 16521;
-- fix npc 16522
UPDATE `creature_template` SET `faction_A` = 1620, `faction_H` = 1620 WHERE `entry` = 16522;
-- fix npc 17555
UPDATE `creature` SET `position_x` = -3867.5600, `position_y` = -11641.0996 WHERE `guid` = 63164;
UPDATE `points_of_interest` SET `x`= -3867, `y`= -11641 WHERE `entry`= 192;
UPDATE `quest_poi_points` SET `x`= -3867, `y`= -11641 WHERE `questId`= 9605 AND `id`= 0 AND `idx`= 0;
-- 





































