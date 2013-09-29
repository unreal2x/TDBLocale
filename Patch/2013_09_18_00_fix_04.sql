-- fix startup
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry` in (42010,51982,51979,51975,28006,50525,52359,
52361,41366,42494,46447,51970,51971,13158,46749,46841,55306,55307,52810,52812,48343,48342,48341,48340,37140,
36850,36787,36673,36125,42816,42817,42399,42403,42401,42402,33407,33728,39071,39096,40799,40800,40820,40829,
41743,52368,47455,47222,45715,47772,47037,46042,46041,47224,48694,50939,45188,45875,45205,48041,48043,46361,
46362,34293,47870,50604,44732,44733,44734,44737,44766,46559,46560,35205,40942,41019,41417,41988,42029,43560,
52350,44796,29838,27661,42189,42201,54433,40351,40353,40761,41747,41907,32638,32639,47203,28093,33292,54123);
UPDATE `creature` SET `spawnMask` = 1 WHERE `guid` in (90190,90189,90188,90179,90180,90181,90182,90183,90184,90185,90186,90187,90191,90192);
UPDATE `creature` SET `phaseMask` = 1 WHERE `guid` = 25;
-- fix npc 11260
DELETE FROM `creature` WHERE `id`=11260;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(80119, 11260, 0, 1, 1, 0, 1, -8845.67, -268.674, 81.386, 0.582703, 180, 0, 0, 42, 0, 0, 0, 0, 0),
(80127, 11260, 0, 1, 1, 0, 1, -8856.89, -252.401, 81.078, 5.37848, 180, 0, 0, 42, 0, 2, 0, 0, 0),
(80137, 11260, 0, 1, 1, 0, 1, -8891.61, -275.477, 80.0948, 4.86014, 180, 0, 0, 42, 0, 2, 0, 0, 0),
(80145, 11260, 0, 1, 1, 89, 1, -8932.22, -240.487, 79.3923, 2.99685, 180, 0, 0, 42, 0, 2, 0, 0, 0),
(80262, 11260, 0, 1, 1, 0, 1, -8967.41, -203.362, 75.5193, 2.50597, 180, 0, 0, 42, 0, 2, 0, 0, 0),
(168429, 11260, 0, 1, 1, 0, 1, -8932.19, -238.262, 79.4828, 3.36695, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(168426, 11260, 0, 1, 1, 0, 1, -8883.18, -275.934, 80.3692, 5.14194, 300, 0, 0, 42, 0, 0, 0, 0, 0),
(168418, 11260, 0, 1, 1, 0, 1, -8856.92, -255.106, 80.9438, 5.96268, 300, 0, 0, 42, 0, 0, 0, 0, 0);
DELETE FROM `creature_addon` WHERE (`guid`=80137);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (80137, 801370, 0, 0, 4097, 0, '');
DELETE FROM `creature_addon` WHERE (`guid`=80127);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (80127, 801270, 0, 0, 0, 0, '');
DELETE FROM `creature_addon` WHERE (`guid`=80119);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (80119, 801190, 0, 0, 4097, 234, '');
DELETE FROM `creature_addon` WHERE (`guid`=80145);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (80145, 801450, 0, 0, 0, 0, '');
DELETE FROM `creature_addon` WHERE (`guid`=80262);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (80262, 802620, 0, 0, 4097, 0, '');
DELETE FROM `creature_addon` WHERE (`guid`=168429);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168429, '', 0, 0, 0, 234, '');
DELETE FROM `creature_addon` WHERE (`guid`=168426);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168426, '', 0, 0, 0, 234, '');
DELETE FROM `creature_addon` WHERE (`guid`=168418);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168418, '', 0, 0, 0, 234, '');
UPDATE `waypoint_data` SET `delay`='10000' WHERE (`id`='801270') AND (`point`='7');
UPDATE `waypoint_data` SET `delay`='9000' WHERE (`id`='801370') AND (`point`='5');
UPDATE `waypoint_data` SET `delay`='8000' WHERE (`id`='802620') AND (`point`='9');
UPDATE `waypoint_data` SET `delay`='10000' WHERE (`id`='801450') AND (`point`='4');
DELETE FROM `gameobject` WHERE `id`=105568;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(186474, 105568, 0, 1, 4294967295, -8886.27, -275.704, 80.4673, 2.11817, 0, 0, 0.871907, 0.489672, 300, 0, 1),
(186475, 105568, 0, 1, 4294967295, -8855.99, -253.358, 81.1208, 2.44411, 0, 0, 0.939803, 0.341717, 300, 0, 1),
(186476, 105568, 0, 1, 4294967295, -8932.02, -239.123, 79.4436, 3.45727, 0, 0, 0.987569, -0.157185, 300, 0, 1),
(186566, 105568, 0, 1, 4294967295, -8847.42, -267.299, 81.4909, 0.103603, 0, 0, 0.0517781, 0.998659, 300, 0, 1);
-- fix quest 37
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 55;
-- fix npc
DELETE FROM `creature` WHERE `id` in (37574,37543,32520);
UPDATE `creature_template` SET `faction_A` = 38, `faction_H` = 38, `maxlevel` = 2 WHERE `entry` = 49871;
UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `id` in (620,2442,40,1933,116,47194,13321);
UPDATE `creature` SET `spawndist` = 10, `MovementType` = 1 WHERE `id` in (525,721,883,822,49871,476,478,97,732,285);
UPDATE `creature` SET `spawndist` = 15, `MovementType` = 1 WHERE `id` in (30,1412,113,524,1922,474,118,46,428);
UPDATE `creature_template` SET `MovementType` = 1, `InhabitType` = 4 WHERE `entry` = 53394;
UPDATE `creature_template` SET `MovementType` = 1, `InhabitType` = 4 WHERE `entry` = 53396;
-- fix npc 468 (Town Crier)
UPDATE `creature` SET `guid`='4185', `MovementType`='2' WHERE (`guid`='5741');
DELETE FROM `creature_addon` WHERE `guid` IN (4185,5741);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('4185', '41850', '0', '0', '0', '0', NULL);
-- fix npc 576 (Watcher Ladimore)
UPDATE `creature` SET `guid`='4211', `MovementType`='2' WHERE (`guid`='5742');
DELETE FROM `creature_addon` WHERE `guid` IN (4211,5742);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('4211', '42110', '0', '0', '0', '0', NULL);
-- fix npc 495 (Watcher Keefer)
UPDATE `creature` SET `guid`='5965', `MovementType`='2' WHERE (`guid`='5744');
DELETE FROM `creature_addon` WHERE `guid` IN (5965,5744);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('5965', '59650', '0', '0', '0', '0', NULL);
-- fix npc 840 (Watcher Backus)
UPDATE `creature` SET `guid`='4230', `MovementType`='2' WHERE (`guid`='5783');
DELETE FROM `creature_addon` WHERE `guid` IN (4230,5783);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('4230', '42300', '0', '0', '0', '0', NULL);
-- fix npc 887 (Watcher Jordan)
UPDATE `creature` SET `guid`='5941', `MovementType`='2' WHERE (`guid`='5684');
DELETE FROM `creature_addon` WHERE `guid` IN (5941,5684);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('5941', '59410', '0', '0', '0', '0', NULL);
-- fix npc 272 (Chef Grual)
DELETE FROM `creature` WHERE `guid`=192457;
-- fix npc 494 (Watcher Bukouris)
DELETE FROM `creature` WHERE `guid`=192463;
-- fix npc 228 (Avette Fellwood)
DELETE FROM `creature` WHERE `guid`=192458;
-- fix npc 14423 (Officer Jaxon)
DELETE FROM `creature` WHERE `id`=14423;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(79818, 14423, 0, 1, 1, 0, 1, -8833.45, 545.681, 96.7027, 0.655296, 350, 0, 1, 50400, 0, 2, 0, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` IN (31103,79818);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('79818', '798180', '0', '0', '0', '0', NULL);
-- fix npc 14439 (Officer Brady)
DELETE FROM `creature` WHERE `id`=14439;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(79768, 14439, 0, 1, 1, 0, 1, -8618.18, 498.294, 102.999, 0.667497, 350, 0, 1, 50400, 0, 2, 0, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` IN (30422,79768);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('79768', '797680', '0', '0', '0', '0', NULL);
-- fix npc 47688 (Officer Connelly)
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 30667;
DELETE FROM `creature_addon` WHERE (`guid`=30667);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (30667, 306670, 0, 0, 0, 0, '');
INSERT INTO `waypoint_data` VALUES ('306670', '42', '-8577.78', '600.665', '103.441', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '43', '-8586.68', '582.121', '103.489', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '44', '-8586.25', '564.93', '102.234', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '45', '-8580.77', '545.594', '102.035', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '46', '-8582.54', '539.988', '102.279', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '47', '-8598.63', '526.932', '106.413', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '48', '-8611.43', '513.769', '103.577', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '49', '-8608.73', '507.848', '103.809', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '50', '-8596.36', '498.489', '103.849', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '51', '-8582.57', '481.385', '104.312', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '52', '-8572.36', '471.135', '104.402', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '53', '-8553.3', '462.428', '104.638', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '54', '-8545.75', '454.986', '104.749', '0', '22000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '55', '-8541.5', '459.6', '104.726', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '56', '-8535.6', '461.851', '104.706', '0', '22000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '57', '-8540.25', '468.399', '104.47', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '58', '-8540.89', '476.857', '103.25', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '59', '-8532.06', '486.916', '101.445', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '60', '-8519.71', '495.663', '101.033', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '61', '-8508.08', '504.127', '99.4312', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '62', '-8497.2', '510.802', '98.27', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '63', '-8495.46', '518.755', '97.8128', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '64', '-8492.58', '528.818', '97.7373', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '65', '-8493.94', '539.07', '97.7398', '0', '30000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '1', '-8483.77', '555.884', '97.9627', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '2', '-8473.87', '567.451', '96.9473', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '3', '-8462.07', '576.178', '95.7562', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '4', '-8450.04', '578.862', '94.7329', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '5', '-8439.77', '577.089', '94.6284', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '6', '-8429.88', '570.998', '94.3107', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '7', '-8419.28', '567.272', '93.2677', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '8', '-8405.48', '564.179', '92.354', '0', '22000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '9', '-8396.38', '570.076', '91.9794', '0', '22000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '10', '-8393.4', '579.005', '91.8765', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '11', '-8395.16', '606.468', '94.5792', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '12', '-8388.04', '614.07', '95.14', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '13', '-8371.7', '620.265', '95.2326', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '14', '-8360.89', '620.768', '95.3505', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '15', '-8337.23', '637.596', '95.6072', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '16', '-8335.58', '643.777', '96.5302', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '17', '-8332.86', '648.92', '97.6431', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '18', '-8327.54', '649.577', '97.2159', '0', '22000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '19', '-8330.95', '653.075', '97.2425', '0', '22000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '20', '-8331.27', '649.814', '97.5608', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '21', '-8336.54', '645.762', '96.6359', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '22', '-8344.32', '646.542', '95.5585', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '23', '-8348.67', '644.898', '95.5155', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '24', '-8351.91', '641.592', '95.3096', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '25', '-8370.08', '638.058', '95.0322', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '26', '-8374.87', '640.552', '95.1135', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '27', '-8384.23', '651.397', '95.2564', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '28', '-8396.49', '666.783', '94.9412', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '29', '-8404.77', '671.776', '95.1323', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '30', '-8412.42', '673.078', '95.1246', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '31', '-8419.29', '670.027', '94.8773', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '32', '-8438.79', '656.01', '93.0693', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '33', '-8445.6', '657.696', '93.2156', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '34', '-8468.67', '685.065', '99.1869', '0', '22000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '35', '-8472.7', '689.245', '99.9277', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '36', '-8479.6', '688.289', '100.378', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '37', '-8490.91', '676.068', '100.634', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '38', '-8503.82', '658.07', '100.423', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '39', '-8523.17', '642.727', '99.975', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '40', '-8548.69', '625.109', '101.329', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('306670', '41', '-8567.09', '613.628', '102.624', '0', '0', '0', '0', '100', '0');
-- fix npc 14438 (Officer Pomeroy)
DELETE FROM `creature` WHERE `guid`=31095;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES ('90484', '14438', '0', '1', '1', '0', '1', '-8752.66', '984.545', '97.9592', '0.523878', '350', '0', '1', '50400', '0', '2', '0', '0', '0');
DELETE FROM `creature_addon` WHERE `guid` IN (31095,90484);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('90484', '904840', '0', '0', '0', '0', NULL);
-- fix npc 3627 (Erich Lohan)
DELETE FROM `creature` WHERE `guid`=31148;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES ('90445', '3627', '0', '1', '1', '0', '0', '-9028.74', '889.187', '110.196', '4.19386', '180', '0', '0', '102', '0', '2', '0', '0', '0');
DELETE FROM `creature_addon` WHERE `guid` IN (31148,90445);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('90445', '904450', '0', '0', '0', '0', NULL);
-- fix npc 1413,1414,1415, (Janey Anship,Lisan Pierce,Suzanne)
DELETE FROM `creature_addon` WHERE (`guid`=31192);
UPDATE `creature_template` SET `speed_run` = 1.14686 WHERE `entry` = 1413;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (31192, 311920, 0, 0, 0, 0, '');
DELETE FROM `creature_addon` WHERE (`guid`=31193);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (31193, 311930, 0, 0, 0, 0, '');
DELETE FROM `creature_addon` WHERE (`guid`=31194);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (31194, 311940, 0, 0, 0, 0, '');
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (31192,31193,31194);
DELETE FROM `waypoint_data` WHERE `id` in (865960,86597,89294);
INSERT INTO `waypoint_data` VALUES ('311920', '1', '-8975.91', '861.471', '106.467', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '2', '-8952.88', '862.624', '104.953', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '3', '-8930.08', '859.242', '100.453', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '4', '-8906.49', '850.512', '96.2808', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '5', '-8890.17', '880.884', '100.977', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '6', '-8889.11', '898.179', '106.273', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '7', '-8893.57', '911.529', '110.648', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '8', '-8854.72', '932.843', '102.339', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '9', '-8829.55', '898.337', '98.1171', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '10', '-8820.52', '868.157', '98.935', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '11', '-8847.18', '843.336', '98.9387', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '12', '-8836.89', '831.263', '99.1418', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '13', '-8826.25', '823.883', '98.9805', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '14', '-8832.23', '787.328', '96.5199', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '15', '-8870.22', '762.153', '96.7845', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '16', '-8856.47', '741.563', '100.654', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '17', '-8844.73', '718.002', '97.5484', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '18', '-8811.88', '742.337', '97.8843', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '19', '-8783.44', '745.507', '98.8949', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '20', '-8763.36', '734.435', '99.0021', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '21', '-8732.42', '694.876', '98.9663', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '22', '-8709.57', '655.027', '99.6368', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '23', '-8701.32', '613.65', '99.8007', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '24', '-8711.33', '594.29', '98.7484', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '25', '-8734.58', '576.419', '97.4484', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '26', '-8770.91', '606.951', '97.2679', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '27', '-8794.07', '589.278', '97.6678', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '28', '-8816.71', '612.291', '95.484', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '29', '-8846.14', '641.481', '96.4167', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '30', '-8849.81', '660.372', '97.2144', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '31', '-8841.97', '669.167', '97.9381', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '32', '-8825.86', '678.101', '97.6371', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '33', '-8846.81', '723.275', '97.4223', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '34', '-8854.22', '742.762', '100.746', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '35', '-8871.31', '762.228', '96.7833', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '36', '-8878.05', '756.899', '96.4819', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '37', '-8911.65', '790.966', '87.3832', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '38', '-8923.39', '777.573', '87.3659', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '39', '-8944.46', '773.914', '90.5853', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '40', '-8969.19', '775.507', '95.7605', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '41', '-8971.58', '777.368', '96.3407', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '42', '-8989.87', '796.4', '101.995', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '43', '-8995.35', '827.259', '105.352', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311920', '44', '-8982.91', '842.79', '105.717', '0', '60000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '1', '-8975.65', '861.486', '106.491', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '2', '-8944.01', '864.241', '104.118', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '3', '-8911.54', '851.662', '96.495', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '4', '-8894.7', '862.802', '96.4931', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '5', '-8887.88', '896.015', '105.351', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '6', '-8895.54', '911.779', '110.738', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '7', '-8854.39', '934.91', '102.533', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '8', '-8844.22', '922.301', '101.569', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '9', '-8835.15', '910.134', '98.5369', '0', '0', '385', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '10', '-8818.12', '872.19', '98.91', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '11', '-8846.35', '844.242', '98.8702', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '12', '-8837.71', '833.174', '99.1836', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '13', '-8825.62', '822.338', '99.0033', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '14', '-8824.68', '796.207', '97.378', '0', '0', '386', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '15', '-8845.2', '776.592', '96.0731', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '16', '-8870.63', '762.34', '96.7809', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '17', '-8855.29', '742.306', '100.703', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '18', '-8847.73', '720.972', '97.4028', '0', '0', '387', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '19', '-8806.98', '741.291', '97.7508', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '20', '-8777.05', '743.235', '99.4993', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '21', '-8758.71', '729.247', '98.6169', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '22', '-8737.94', '701.145', '98.8372', '0', '0', '388', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '23', '-8718.12', '671.277', '98.8876', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '24', '-8705.49', '640.072', '100.33', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '25', '-8704.39', '614.71', '100.162', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '26', '-8710.58', '595.468', '98.8503', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '27', '-8736.5', '573.298', '97.3959', '0', '0', '389', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '28', '-8770.96', '608.729', '97.4164', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '29', '-8798.96', '589.885', '97.6081', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '30', '-8823.43', '621.763', '94.4329', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '31', '-8848.89', '644.485', '96.4852', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '32', '-8851.31', '661.843', '97.2409', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '33', '-8823.88', '678.449', '97.674', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '34', '-8847.46', '725.486', '97.461', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '35', '-8855.9', '741.608', '100.675', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '36', '-8870.68', '761.829', '96.783', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '37', '-8881.55', '754.924', '96.2457', '0', '0', '390', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '38', '-8909.39', '791.24', '87.4854', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '39', '-8931.01', '774.617', '88.461', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '40', '-8952.87', '770.324', '92.3752', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '41', '-8976.05', '778.586', '96.8896', '0', '0', '391', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '42', '-8989', '798.228', '102.24', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '43', '-8995.51', '823.625', '104.97', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311930', '44', '-8984.68', '841.277', '105.783', '0', '60000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '1', '-8976.89', '857.371', '105.935', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '2', '-8949.19', '863.774', '104.701', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '3', '-8927.1', '858.709', '99.6514', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '4', '-8910.27', '852.178', '96.4317', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '5', '-8896.63', '870.453', '98.1904', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '6', '-8890.9', '893.159', '104.692', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '7', '-8895.77', '912.269', '110.834', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '8', '-8855.22', '934.996', '102.343', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '9', '-8846.19', '924.558', '101.984', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '10', '-8836.07', '911.008', '98.6459', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '11', '-8817.51', '870.908', '99.0126', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '12', '-8843.94', '846.738', '98.9404', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '13', '-8837.11', '834.226', '99.2952', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '14', '-8824.78', '823.166', '98.9393', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '15', '-8827.54', '788.917', '96.7355', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '16', '-8850.25', '773.393', '96.0789', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '17', '-8867.94', '761.482', '96.8208', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '18', '-8854.52', '742.534', '100.732', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '19', '-8845.26', '724.759', '97.4668', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '20', '-8815.02', '742.839', '98.0757', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '21', '-8780.54', '747.52', '98.738', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '22', '-8762.65', '737.986', '98.9315', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '23', '-8739.78', '706.253', '98.6167', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '24', '-8711.66', '665.258', '99.1562', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '25', '-8699.72', '625.061', '100.129', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '26', '-8701.88', '607.971', '99.2969', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '27', '-8709.1', '597.026', '98.9889', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '28', '-8735.86', '571.359', '97.3063', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '29', '-8771.54', '608.819', '97.4512', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '30', '-8794.59', '588.092', '97.5852', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '31', '-8804.52', '595.195', '97.145', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '32', '-8846.88', '639.967', '96.1374', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '33', '-8854.36', '658.255', '96.8188', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '34', '-8827.49', '678.794', '97.5435', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '35', '-8847.39', '720.629', '97.416', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '36', '-8859.14', '741.151', '100.556', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '37', '-8872.34', '760.209', '96.8652', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '38', '-8880.31', '753.377', '96.377', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '39', '-8910.97', '788.949', '87.5556', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '40', '-8940.56', '769.729', '89.8234', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '41', '-8972.19', '773.136', '96.1028', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '42', '-8989.84', '797.329', '102.168', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '43', '-8997.38', '825.832', '105.258', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('311940', '44', '-8981.61', '842.138', '105.748', '0', '60000', '0', '0', '100', '0');
-- fix npc 2198 (Crier Goodman)
DELETE FROM `creature` WHERE `guid`=30573;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES ('79769', '2198', '0', '1', '1', '0', '0', '-8854', '743.15', '100.751', '0.607', '180', '0', '1', '71', '0', '2', '0', '0', '0');
DELETE FROM `creature_addon` WHERE `guid` IN (30573,79769);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES ('79769', '797690', '0', '0', '0', '0', NULL);
-- fix npc 51938 (Crithto)
UPDATE `creature_template` SET `speed_walk` = 2.055556, `speed_run` = 1.857143 WHERE `entry` = 51938;
DELETE FROM `creature_addon` WHERE (`guid`=30808);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 30808;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (30808, 308080, 0, 0, 0, 0, '');
INSERT INTO `waypoint_data` VALUES ('308080', '1', '-8279.21', '290.188', '155.347', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '2', '-8275.91', '282.503', '155.347', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '3', '-8286.62', '279.247', '155.347', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '4', '-8290.38', '271.461', '155.347', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '5', '-8301.3', '267.321', '155.347', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '6', '-8319.04', '280.938', '156.833', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '7', '-8319.04', '280.938', '156.833', '0', '100', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '8', '-8330.65', '281.585', '156.833', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '9', '-8338.82', '288.262', '156.833', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '10', '-8335.67', '297.66', '156.833', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '11', '-8326.11', '302.303', '156.833', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '12', '-8311.93', '300.348', '156.833', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '13', '-8308.24', '287.107', '156.833', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '14', '-8322.68', '285.534', '156.833', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '15', '-8332.79', '288.462', '156.833', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '16', '-8337.11', '286.562', '156.833', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '17', '-8333.27', '279.169', '156.833', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '18', '-8317.63', '280.922', '156.833', '0', '100', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '19', '-8310.12', '275.47', '156.833', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '20', '-8302.9', '267.75', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '21', '-8289.55', '254.499', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '22', '-8305.15', '261.845', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '23', '-8319.72', '253.183', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '24', '-8323.23', '246.247', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '25', '-8330.4', '248.92', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '26', '-8336.74', '259.215', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '27', '-8348.1', '269.73', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '28', '-8348.1', '269.73', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '29', '-8357.25', '260.258', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '30', '-8368.76', '254.696', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '31', '-8385.8', '260.118', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '32', '-8395.1', '269.489', '154.032', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '33', '-8405.44', '291.57', '148.104', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '34', '-8418.39', '301.363', '146.976', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '35', '-8425.75', '314.799', '145.877', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '36', '-8436.39', '327.962', '144.973', '0', '100', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '37', '-8446.54', '343.185', '136.353', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '38', '-8432.76', '369.303', '135.372', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '39', '-8428.23', '399.653', '135.685', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '40', '-8438.53', '420.187', '125.608', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '41', '-8457.15', '426.241', '125.583', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '42', '-8470.85', '419.109', '122.149', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '43', '-8498.37', '390.283', '115.792', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '44', '-8489.47', '381.984', '115.857', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '45', '-8479.26', '388.726', '115.857', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '46', '-8500.39', '419.127', '113.944', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '47', '-8526.08', '444.278', '105.972', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '48', '-8541.68', '464.241', '104.486', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '49', '-8537.71', '480.75', '102.435', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '50', '-8538.23', '496.592', '99.4715', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '51', '-8568.14', '535.266', '101.564', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '52', '-8586.36', '563.737', '102.146', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '53', '-8583.73', '590.478', '103.657', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '54', '-8567.43', '610.972', '102.796', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '55', '-8550.02', '622.071', '101.656', '0', '600', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '56', '-8549.11', '621.601', '101.669', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '57', '-8549.11', '621.601', '101.669', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '58', '-8575.2', '609.05', '102.917', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '59', '-8588.21', '580.271', '103.32', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '60', '-8579.16', '543.869', '102.14', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '61', '-8599.28', '525.848', '106.463', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '62', '-8612.3', '508.548', '103.634', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '63', '-8594.08', '497.466', '103.981', '0', '100', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '64', '-8578.9', '477.908', '104.287', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '65', '-8548.68', '460.331', '104.583', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '66', '-8527.16', '438.177', '105.861', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '67', '-8517.58', '427.98', '105.627', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '68', '-8506.31', '408.252', '115.692', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '69', '-8509.02', '390.544', '115.782', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '70', '-8520.92', '371.61', '125.601', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '71', '-8525.23', '350.556', '125.606', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '72', '-8520.32', '336.987', '132.034', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '73', '-8513.66', '332.043', '135.683', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '74', '-8461.76', '324.98', '136.025', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '75', '-8441.47', '329.233', '144.075', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '76', '-8430.5', '317.187', '145.373', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '77', '-8410.49', '292.887', '147.058', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '78', '-8389.5', '266.3', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '79', '-8379.46', '258.341', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '80', '-8358.7', '257.902', '155.348', '0', '100', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '81', '-8347.14', '265.162', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '82', '-8345.97', '272.016', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '83', '-8353.88', '285.331', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '84', '-8363.04', '293.328', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '85', '-8333.18', '315.265', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '86', '-8318.3', '329.632', '155.348', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308080', '87', '-8303.54', '321.16', '155.348', '0', '0', '0', '0', '100', '0');
-- fix npc 3626 (Jenn Langston)
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 30845;
DELETE FROM `creature_addon` WHERE (`guid`=30845);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (30845, 308450, 0, 0, 0, 0, '');
INSERT INTO `waypoint_data` VALUES ('308450', '2', '-8691.48', '397.118', '102.078', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308450', '3', '-8719.25', '404.405', '97.9665', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308450', '4', '-8726.14', '412.82', '97.7012', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308450', '5', '-8719.16', '435.353', '97.6038', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308450', '6', '-8713.05', '456.939', '97.1385', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308450', '7', '-8721.58', '468.836', '98.6137', '0', '30000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308450', '8', '-8711.94', '457.773', '97.101', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308450', '9', '-8683.18', '483.501', '96.5377', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308450', '10', '-8667.35', '497.381', '100.528', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308450', '11', '-8658.77', '493.201', '101.299', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308450', '12', '-8636.5', '464.712', '102.279', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308450', '13', '-8635.8', '443.074', '102.443', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308450', '14', '-8644.23', '429.365', '101.564', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308450', '15', '-8634.07', '413.566', '103.703', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308450', '16', '-8625.63', '416.048', '103.703', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308450', '17', '-8622.81', '408.881', '102.925', '0', '30000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308450', '18', '-8626.92', '415.539', '103.703', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308450', '19', '-8635.48', '416.199', '103.703', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('308450', '20', '-8647.75', '425.216', '101.76', '0', '0', '0', '0', '100', '0');
-- fix npc 1721 (Nikova Raskol)
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 30752;
DELETE FROM `creature_addon` WHERE (`guid`=30752);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (30752, 307520, 0, 0, 0, 0, '');
INSERT INTO `waypoint_data` VALUES ('307520', '20', '-8759.01', '377.557', '101.219', '0', '100', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '1', '-8635.03', '460.446', '102.302', '0', '0100', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '2', '-8647.38', '481.452', '102.556', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '3', '-8666.24', '501.593', '101.507', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '4', '-8664.45', '517.894', '101.283', '0', '30000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '5', '-8668.35', '497.09', '100.364', '0', '100', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '6', '-8690.17', '477.265', '95.4398', '0', '100', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '7', '-8717.35', '451.144', '97.2836', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '8', '-8721.13', '429.06', '98.0033', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '9', '-8730.75', '408.129', '97.8186', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '10', '-8740.65', '398.985', '98.4746', '0', '100', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '11', '-8746.81', '392.448', '101.002', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '12', '-8762.7', '374.123', '100.854', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '13', '-8787.56', '345.129', '107.054', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '14', '-8796.85', '337.464', '107.104', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '15', '-8813.43', '338.226', '107.049', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '16', '-8818.83', '344.647', '107.047', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '17', '-8814.1', '350.864', '107.049', '0', '10000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '18', '-8799.01', '337.218', '107.074', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '19', '-8785.17', '346.94', '106.778', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '21', '-8747.62', '394.281', '100.858', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '22', '-8737.36', '402.249', '97.9192', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '23', '-8708.96', '405.11', '99.2455', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '24', '-8691.82', '397.171', '102.073', '0', '100', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '25', '-8672.78', '402.166', '103.555', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('307520', '26', '-8634.84', '442.437', '102.508', '0', '0', '0', '0', '100', '0');
-- fix npc 3937 (Kira Songshine)
DELETE FROM `creature` WHERE `id`=3937;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES ('80283', '3937', '0', '1', '1', '0', '0', '-9092.42', '426.407', '92.278', '3.9373', '300', '0', '0', '247', '0', '2', '0', '0', '0');
DELETE FROM `creature_addon` WHERE `guid` = 80283;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (80283, 802830, 0, 0, 0, 0, '');
DELETE FROM `waypoint_data` WHERE `id` = 802830;
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','1','-9113.42','405.705','92.6176','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','2','-9140.59','381.679','90.7399','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','3','-9155.34','365.969','90.259','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','4','-9171.49','343.878','85.1439','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','5','-9179.12','326.602','81.3066','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','6','-9181.69','306.781','78.6707','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','7','-9185.39','251.697','73.4279','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','8','-9185.39','251.697','73.4279','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','9','-9189.6','235.786','72.1018','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','10','-9208.97','209.959','70.3111','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','11','-9231.59','181.215','67.9062','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','12','-9259.48','158.244','67.5315','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','13','-9297.09','143.028','65.9719','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','14','-9331.89','122.594','63.5546','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','15','-9359.28','106.93','61.7336','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','16','-9374.76','101.087','60.5345','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','17','-9402.12','92.3499','58.3806','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','18','-9432.98','87.1132','56.8507','0','200','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','19','-9432.98','87.1132','56.8507','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','20','-9448.66','64.9535','56.1325','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','21','-9465.31','49.9308','56.9113','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','22','-9465.31','49.9308','56.9113','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','23','-9494','71.7464','56.1877','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','24','-9494','71.7464','56.1877','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','25','-9532.09','-19.3261','55.9019','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','26','-9524.38','-15.7079','56.2119','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','27','-9499.11','38.124','56.3644','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','28','-9492.71','79.7178','56.1379','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','29','-9492.71','79.7178','56.1379','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','30','-9486.3','98.5708','56.4024','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','31','-9475.46','68.3008','56.3467','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','32','-9453.28','65.2956','56.0749','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','33','-9422.65','77.8933','56.8128','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','34','-9398.69','93.7048','58.6951','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','35','-9359.84','108.515','61.5888','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','36','-9308.42','137.573','65.3714','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','37','-9271.16','148.356','67.1821','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','38','-9243.43','165.974','67.9956','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','39','-9216.05','196.718','69.1629','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','40','-9188.22','228.432','72.0456','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','41','-9176.62','266.985','75.0997','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','42','-9174.75','321.305','80.8403','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','43','-9161.83','350.306','87.7535','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','44','-9142.69','377.322','90.7115','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','45','-9129.16','391.973','91.3768','0','0','0','0','100','0');
insert into `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('802830','46','-9090.9','425.456','92.2515','0','0','0','0','100','0');
-- fix npc 844 (Antonio Perelli)
DELETE FROM `creature` WHERE `id`=844;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(81181, 844, 0, 1, 1, 0, 1, -9628.33, -1176.14, 39.9827, 0.992539, 310, 0, 0, 1342, 0, 2, 0, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` in (89672,81181);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (81181, 811810, 0, 0, 0, 0, '');
-- fix npc 3520 (Ol' Emma)
DELETE FROM `creature` WHERE `id`=3520;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(79796, 3520, 0, 1, 1, 0, 0, -8656.45, 676.937, 108.141, 2.33112, 180, 0, 0, 55, 0, 2, 0, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` in (79796,30992);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (79796, 797960, 0, 0, 0, 0, '');
-- fix npc 3518 (Thomas Miller)
DELETE FROM `creature` WHERE `guid` in (30985,79723);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES ('79723', '3518', '0', '1', '1', '0', '1', '-8880.11', '566.85', '93.5413', '0.838875', '300', '0', '0', '328', '0', '2', '0', '0', '0');
DELETE FROM `creature_addon` WHERE `guid` = 79723;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (79723, 797230, 0, 0, 0, 0, '');
DELETE FROM `waypoint_data` WHERE `id` = 797230;
INSERT INTO `waypoint_data` VALUES ('797230', '1', '-8880.11', '566.85', '93.5413', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '2', '-8835.48', '616.05', '93.4648', '0', '0', '271', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '3', '-8826.48', '617.939', '94.5474', '0', '60000', '272', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '4', '-8810.98', '602.79', '96.5224', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '5', '-8808.6', '594.063', '97.1686', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '6', '-8820.48', '574.017', '94.3815', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '7', '-8836.96', '551.33', '96.1881', '0', '0', '273', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '8', '-8828.7', '549.945', '96.0016', '0', '6000', '274', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '9', '-8818.54', '561.501', '94.4894', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '10', '-8810.57', '574.895', '95.1651', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '11', '-8784.7', '597.191', '97.6343', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '12', '-8766.48', '612.274', '97.9595', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '13', '-8757.88', '627.71', '102.074', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '14', '-8760.58', '647.571', '103.993', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '15', '-8784.89', '678.879', '102.785', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '16', '-8803.5', '684.834', '101.119', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '17', '-8831.92', '674.652', '98.4328', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '18', '-8852.67', '659.614', '97.0104', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '19', '-8844.95', '638.042', '95.8141', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '20', '-8836.51', '634.128', '94.7394', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '21', '-8817.55', '639.872', '94.6043', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '22', '-8812.72', '631.563', '94.4423', '0', '0', '271', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '23', '-8814.24', '626.435', '94.3168', '0', '60000', '272', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '24', '-8831.24', '619.095', '93.9468', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '25', '-8872.22', '596.114', '92.9442', '0', '0', '273', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('797230', '26', '-8891.32', '578.162', '92.9976', '0', '60000', '274', '0', '100', '0');
-- fix npc 797 (Bo)
DELETE FROM `creature` WHERE `id`=797;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(80320, 797, 0, 1, 1, 0, 0, -9426.15, 129.829, 59.5506, 3.12876, 180, 0, 0, 42, 0, 2, 0, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` IN (80320,167586);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (80320, 803200, 0, 0, 0, 0, '');
-- fix npc 54 (Corina Steele)
DELETE FROM `creature` WHERE `id`=54;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(80338, 54, 0, 1, 1, 0, 1, -9464.87, 93.9896, 58.5271, 0, 180, 0, 0, 198, 0, 0, 0, 0, 0);
-- fix npc 74 (Kurran Steele)
DELETE FROM `creature` WHERE `id`=74;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(80337, 74, 0, 1, 1, 0, 0, -9457.64, 99.6884, 58.4271, 4.11898, 180, 0, 0, 198, 0, 0, 0, 0, 0);
-- fix npc 514 (Smith Argus)
DELETE FROM `creature` WHERE `id`=514;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(80336, 514, 0, 1, 1, 0, 1, -9456.65, 87.8553, 58.4271, 2.40855, 190, 0, 0, 664, 0, 0, 0, 0, 0);
-- fix npc 240 (Marshal Dughan)
DELETE FROM `creature` WHERE `id`=240;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(80334, 240, 0, 1, 1, 0, 1, -9465.52, 74.0069, 56.7785, 4.59022, 250, 0, 0, 713, 0, 0, 0, 0, 0);
-- fix npc 927 (Brother Wilhelm)
DELETE FROM `creature` WHERE `id`=927;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(80325, 927, 0, 1, 1, 0, 1, -9468.14, 108.976, 57.6606, 1.79769, 180, 0, 0, 222, 0, 0, 0, 0, 0);
-- fix npc 913 (Lyria Du Lac)
DELETE FROM `creature` WHERE `id`=913;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(80333, 913, 0, 1, 1, 0, 1, -9461.85, 109.353, 57.8784, 2.6529, 180, 0, 0, 247, 0, 0, 0, 0, 0);
-- fix npc 46983 (Benjamin Foxworthy)
DELETE FROM `creature` WHERE `id`=46983;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(167589, 46983, 0, 1, 1, 0, 1, -9464.85, 117.162, 57.9516, 4.38398, 120, 0, 0, 1, 0, 0, 0, 0, 0);
-- fix npc 46982 (Sly)
DELETE FROM `creature` WHERE `id`=46982;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(167590, 46982, 0, 1, 1, 0, 0, -9466.18, 117.628, 57.9556, 4.30151, 120, 0, 0, 1, 0, 0, 0, 0, 0);
-- fix npc 2046 (Andrew Krighton)
DELETE FROM `creature` WHERE `id`=2046;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(80339, 2046, 0, 1, 1, 0, 0, -9462.29, 87.8151, 58.4211, 0.733038, 180, 0, 0, 156, 0, 0, 0, 0, 0);
-- fix npc 2533, 2532 (William & Donna)
DELETE FROM `creature` WHERE `id`=2532;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(79721, 2532, 0, 1, 1, 0, 0, -8744.68, 556.069, 97.9521, 5.45979, 370, 0, 0, 42, 0, 2, 0, 0, 0);
DELETE FROM `creature_addon` WHERE (`guid`=79721);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (79721, 797210, 0, 0, 0, 0, '');
DELETE FROM `creature` WHERE `id`=2533;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(79720, 2533, 0, 1, 1, 0, 0, -8739.04, 549.987, 100.173, 5.45979, 370, 0, 0, 42, 0, 2, 0, 0, 0);
DELETE FROM `creature_addon` WHERE (`guid`=79720);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (79720, 797200, 0, 0, 0, 0, '');
-- fix npc 51081 (Nathan Stockton)
UPDATE `creature_template` SET `speed_walk` = 1.86, `speed_run` = 2.14286 WHERE `entry` = 51081;
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 31271;
DELETE FROM `creature_addon` WHERE (`guid`=31271);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (31271, 312710, 0, 0, 0, 0, '');
INSERT INTO `waypoint_data` VALUES ('312710', '1', '-8579.92', '873.905', '97.6322', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '2', '-8587.26', '874.838', '96.9087', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '3', '-8579.74', '876.926', '97.7496', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '4', '-8581.87', '874.501', '97.3849', '0', '500', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '5', '-8580.97', '885.868', '97.5968', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '6', '-8583.64', '886.19', '97.3709', '0', '1000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '7', '-8582.31', '888.092', '97.4746', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '8', '-8588.81', '894.096', '97.9489', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '9', '-8587.8', '902.479', '98.7404', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '10', '-8583.81', '900.943', '98.8', '0', '3000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '11', '-8575.44', '902.546', '99.3879', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '12', '-8572.67', '899.861', '99.4015', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '13', '-8567.93', '900.097', '99.5427', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '14', '-8565.09', '902.579', '99.4631', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '15', '-8564.5', '907.277', '99.4096', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '16', '-8567.7', '910.859', '99.2976', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '17', '-8572.35', '911.148', '99.3644', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '18', '-8575.42', '908.165', '99.3309', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '19', '-8576.64', '908.54', '99.3451', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '20', '-8576.1', '907.953', '99.3489', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '21', '-8575.66', '903.206', '99.3984', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '22', '-8574.83', '899.756', '99.3324', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '23', '-8574.83', '899.756', '99.3324', '0', '2000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '24', '-8578.37', '893.114', '98.3326', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '25', '-8577.35', '892.915', '98.4385', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '26', '-8578.48', '891.087', '98.031', '0', '500', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '27', '-8576.19', '889.681', '98.18', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '28', '-8577.57', '887.97', '97.8538', '0', '500', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '29', '-8574.44', '883.209', '98.4851', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '30', '-8569.74', '880.571', '99.6319', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '31', '-8568.01', '881.196', '100.03', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '32', '-8566.15', '880.108', '100.493', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '33', '-8565.44', '877.21', '100.717', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '34', '-8568', '873.853', '100.169', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('312710', '35', '-8573.44', '871.866', '98.8668', '0', '6000', '0', '0', '100', '0');
-- fix npc 44773 (Anastasia)
UPDATE `creature_template` SET `speed_walk` = 2.2 WHERE `entry` = 44773;
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 30999;
DELETE FROM `creature_addon` WHERE (`guid`=30999);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (30999, 309990, 0, 0, 0, 0, '');
INSERT INTO `waypoint_data` VALUES ('309990', '1', '-8764.68', '654.62', '103.774', '0', '100', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '18', '-8773.45', '665.971', '103.363', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '19', '-8765.91', '658.941', '103.83', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '20', '-8766.17', '656.992', '103.788', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '21', '-8766.14', '654.67', '103.616', '0', '4000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '22', '-8764.29', '650.035', '103.724', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '23', '-8762.88', '653.604', '103.906', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '24', '-8764.9', '653.221', '103.647', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '2', '-8766.3', '653.955', '103.55', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '3', '-8765.59', '654.548', '103.669', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '4', '-8766.4', '655.683', '103.666', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '5', '-8767.47', '655.002', '103.55', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '6', '-8765.57', '656.33', '103.795', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '7', '-8766.47', '655.797', '103.669', '0', '1000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '8', '-8772.28', '661.666', '103.628', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '9', '-8769.73', '658.808', '103.731', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '10', '-8770.66', '661.323', '103.666', '0', '2000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '11', '-8769.28', '661.954', '103.67', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '12', '-8771.55', '661.794', '103.66', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '13', '-8770.67', '662.35', '103.648', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '14', '-8773.16', '668.752', '103.34', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '15', '-8773.54', '666.802', '103.356', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '16', '-8774.46', '666.958', '103.363', '0', '4000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('309990', '17', '-8772.29', '665.976', '103.353', '0', '0', '0', '0', '100', '0');
-- fix npc 1371 (Roman)
-- DELETE FROM `waypoint_data` WHERE `id`=798160;
DELETE FROM `creature` WHERE `id`=1371;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(31258, 1371, 0, 1, 1, 0, 1, -8591.69, 627.475, 97.1504, 4.25424, 120, 0, 0, 1, 0, 0, 0, 0, 0);
-- fix npc 1368 (Justin)
-- DELETE FROM `waypoint_data` WHERE `id`=798150;
DELETE FROM `creature` WHERE `id`=1368;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(31259, 1368, 0, 1, 1, 0, 1, -8586.35, 628.819, 97.1488, 4.91004, 120, 0, 0, 1, 0, 0, 0, 0, 0);
-- fix npc 1370 (Brandon)
-- DELETE FROM `waypoint_data` WHERE `id`=798170;
DELETE FROM `creature` WHERE `id`=1370;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(31260, 1370, 0, 1, 1, 0, 1, -8589.04, 629.224, 96.7258, 4.72547, 120, 0, 0, 1, 0, 0, 0, 0, 0);
-- fix npc 1366 (Adam)
DELETE FROM `creature` WHERE `id`=1366;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(79702, 1366, 0, 1, 1, 0, 1, -8746.92, 536.346, 96.7459, 0.935917, 370, 0, 0, 42, 0, 0, 0, 0, 0);
-- fix npc 1367 (Billy)
DELETE FROM `creature` WHERE `id`=1367;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(79700, 1367, 0, 1, 1, 0, 1, -8744.04, 533.854, 96.7404, 0.880939, 370, 0, 0, 42, 0, 0, 0, 0, 0);
-- fix npc 1642 (Northshire Guard)
DELETE FROM `creature` WHERE `id`=1642;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(79926, 1642, 0, 1, 1, 0, 1, -9047.58, -101.24, 88.3071, 1.98968, 430, 0, 0, 11828, 0, 0, 0, 0, 0),
(79927, 1642, 0, 1, 1, 0, 1, -9047.72, -65.2479, 88.182, 4.62545, 430, 0, 0, 11828, 0, 2, 0, 0, 0),
(79929, 1642, 0, 1, 1, 0, 1, -9061.28, -46.7949, 88.795, 1.5708, 430, 0, 0, 11828, 0, 0, 0, 0, 0),
(79930, 1642, 0, 1, 1, 0, 1, -9060.42, -39.0625, 88.295, 4.71239, 430, 0, 0, 11828, 0, 0, 0, 0, 0),
(79931, 1642, 0, 1, 1, 0, 1, -9034.7, 7.06125, 88.0834, 5.06145, 430, 0, 0, 11828, 0, 0, 0, 0, 0),
(79932, 1642, 0, 1, 1, 0, 1, -9022.7, 2.68442, 88.3783, 2.48363, 430, 0, 0, 11828, 0, 2, 0, 0, 0),
(79948, 1642, 0, 1, 1, 0, 1, -8914.44, -134.267, 80.5523, 5.17342, 430, 0, 0, 11828, 0, 2, 0, 0, 0);
DELETE FROM `creature_addon` WHERE (`guid`=79927);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (79927, 799270, 0, 0, 0, 0, '');
DELETE FROM `creature_addon` WHERE (`guid`=79932);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (79932, 799320, 0, 0, 0, 0, '');
-- fix npc 1423 (Stormwind Guard)
DELETE FROM `creature` WHERE `guid`=168151;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(80263, 1423, 0, 1, 1, 0, 1, -9076.08, -46.0496, 87.617, 0.270454, 190, 0, 0, 1124, 0, 2, 0, 0, 0);
DELETE FROM `creature_addon` WHERE (`guid`=80263);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (80263, 802630, 0, 0, 0, 0, '');
-- fix npc 68 (Stormwind City Guard)
DELETE FROM `creature` WHERE `guid` in (31129,31109);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(120789, 68, 0, 1, 1, 0, 1, -9091.4, 414.322, 92.1695, 5.32334, 180, 0, 0, 11828, 0, 2, 0, 0, 0),
(79859, 68, 0, 1, 1, 0, 1, -8958.4, 509.049, 96.5968, 0.70014, 900, 0, 0, 15952, 0, 2, 0, 0, 0),
(79666, 68, 0, 1, 1, 0, 1, -8833, 542.104, 96.942, 2.753, 900, 0, 1, 15952, 0, 2, 0, 0, 0),
(79689, 68, 0, 1, 1, 0, 1, -8825, 613.922, 94.463, 0.89, 900, 0, 1, 15952, 0, 2, 0, 0, 0),
(79857, 68, 0, 1, 1, 0, 1, -8995.8, 496.151, 96.8077, 0.720081, 900, 0, 0, 15952, 0, 2, 0, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` in (79857,79859,79666,79689,120789);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (79857, 798570, 0, 0, 257, 0, '');
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (79859, 798590, 0, 0, 257, 0, '');
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (79666, 796660, 0, 0, 257, 0, '');
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (79689, 796890, 0, 0, 257, 0, '');
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (120789, 1207890, 0, 0, 257, 0, '');
-- fix npc 1976 (Stormwind City Patroller)
DELETE FROM `creature` WHERE `guid` in (31091,31990,30744,30401,31257,30739);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(79670, 1976, 0, 1, 1, 0, 1, -8918.67, 495.736, 93.8756, 6.14151, 900, 0, 0, 11828, 0, 2, 0, 0, 0),
(79675, 1976, 0, 1, 1, 0, 1, -8916.15, 501.64, 93.8719, 0, 900, 0, 0, 11828, 0, 2, 0, 0, 0),
(79690, 1976, 0, 1, 1, 0, 1, -8738.65, 571.958, 97.3261, 0.75402, 900, 0, 0, 11828, 0, 2, 0, 0, 0),
(12088, 1976, 0, 1, 1, 0, 1, -8530.34, 695.554, 97.6074, 3.74562, 25000, 0, 0, 11828, 0, 2, 0, 0, 0),
(79807, 1976, 0, 1, 1, 0, 1, -8614.9, 707.248, 96.7702, 3.19968, 900, 0, 0, 11828, 0, 2, 0, 0, 0),
(12093, 1976, 0, 1, 1, 0, 1, -8605.83, 862.834, 96.6586, 0.770742, 350, 0, 0, 11828, 0, 2, 0, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` in (79670,79675,79690,12088,79807,12093);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (79670, 796700, 0, 0, 257, 0, '');
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (79675, 796750, 0, 0, 257, 0, '');
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (79690, 796900, 0, 0, 0, 0, '');
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (12088, 120880, 0, 0, 0, 0, '');
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (79807, 798070, 0, 0, 0, 0, '');
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (12093, 120930, 0, 0, 0, 0, '');
-- fix npc 42421 (Stormwind Fisherman)
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 30427;
DELETE FROM `creature_addon` WHERE (`guid`=30427);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (30427, 304270, 0, 0, 0, 379, '');
INSERT INTO `waypoint_data` VALUES ('304270', '1', '-8577.22', '638.242', '96.727', '0', '90000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('304270', '2', '-8578.66', '635.2', '96.727', '0', '90000', '0', '0', '100', '0');

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 5754;
DELETE FROM `creature_addon` WHERE (`guid`=5754);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (5754, 57540, 0, 0, 0, 0, '');
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 5769;
DELETE FROM `creature_addon` WHERE (`guid`=5769);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (5769, 57690, 0, 0, 0, 0, '');
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 5771;
DELETE FROM `creature_addon` WHERE (`guid`=5771);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (5771, 57710, 0, 0, 0, 0, '');
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 5827;
DELETE FROM `creature_addon` WHERE (`guid`=5827);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 5828;
DELETE FROM `creature_addon` WHERE (`guid`=5828);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (5828, 58280, 0, 0, 0, 0, '');

INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (5827, 58270, 0, 0, 0, 0, '');
INSERT INTO `waypoint_data` VALUES ('57710', '3', '-10529.3', '-1285.77', '39.5968', '0', '6000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('58270', '1', '-10542.5', '-1308.62', '40.7221', '0', '6000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('58270', '2', '-10553.9', '-1310.13', '43.6401', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('58270', '3', '-10566.6', '-1313.38', '48.3491', '0', '6000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('58270', '4', '-10556.2', '-1311.12', '44.6236', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('57540', '1', '-10563.5', '-1234.94', '27.4351', '0', '600', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('57540', '2', '-10571.7', '-1239.47', '29.8945', '0', '6000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('57540', '3', '-10563.2', '-1236.02', '27.569', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('57540', '4', '-10565', '-1250.22', '30.8307', '0', '6000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('57540', '5', '-10564', '-1242.03', '28.6967', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('57690', '1', '-10583.4', '-1262.74', '36.118', '0', '6000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('57690', '2', '-10587.5', '-1279.73', '37.1699', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('57690', '3', '-10568.1', '-1279.69', '35.9951', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('57690', '4', '-10551.5', '-1278.78', '35.841', '0', '6000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('57690', '5', '-10568.4', '-1279.25', '35.9639', '0', '600', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('57690', '6', '-10586.2', '-1280.46', '36.8722', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('57710', '1', '-10518', '-1265.65', '40.8541', '0', '6000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('57710', '2', '-10525', '-1278.96', '38.3074', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('58280', '1', '-10543.5', '-1333.07', '47.18', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('58280', '2', '-10543.9', '-1351.93', '50.9084', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('58280', '3', '-10541.9', '-1371.37', '54.8369', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('58280', '4', '-10542.1', '-1351.48', '50.8764', '0', '6000', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('58280', '5', '-10543.1', '-1335.32', '47.6139', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('58280', '6', '-10540.4', '-1324.85', '45.0953', '0', '0', '0', '0', '100', '0');
INSERT INTO `waypoint_data` VALUES ('58280', '7', '-10535.2', '-1313.57', '42.71', '0', '6000', '0', '0', '100', '0');
-- fix npc 49874
DELETE FROM `creature_addon` WHERE (`guid`=168341);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168341, '', 0, 0, 0, 0, 80676); -- труба
DELETE FROM `creature_addon` WHERE (`guid`=168332);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168332, '', 0, 0, 0, 0, 92857);
DELETE FROM `creature_addon` WHERE (`guid`=168315);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168315, '', 0, 0, 0, 0, 80676);
DELETE FROM `creature_addon` WHERE (`guid`=168302);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168302, '', 0, 0, 0, 0, 80676);
DELETE FROM `creature_addon` WHERE (`guid`=168300);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168300, '', 0, 0, 0, 0, 80676);
DELETE FROM `creature_addon` WHERE (`guid`=168239);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168239, '', 0, 0, 0, 0, 80676);
DELETE FROM `creature_addon` WHERE (`guid`=168422);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168422, '', 0, 0, 0, 0, 80676);
UPDATE `creature` SET `position_x` = -9004.5, `position_y` = -183.257, `position_z` = 77.4346 WHERE `guid` = 168311;
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 168486;
DELETE FROM `creature_addon` WHERE (`guid`=168486);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168486, 1684860, 0, 0, 0, 0, 92857);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 168314;
DELETE FROM `creature_addon` WHERE (`guid`=168314);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168314, 1683140, 0, 0, 0, 0, '');
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 168329;
DELETE FROM `creature_addon` WHERE (`guid`=168329);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168329, 1683290, 0, 0, 0, 0, 92857);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 168313;
DELETE FROM `creature_addon` WHERE (`guid`=168313);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168313, 1683130, 0, 0, 0, 0, 92857);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 168311;
DELETE FROM `creature_addon` WHERE (`guid`=168311);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168311, 1683110, 0, 0, 0, 0, 92857);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 168298;
DELETE FROM `creature_addon` WHERE (`guid`=168298);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168298, 1682980, 0, 0, 0, 0, 92857);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 168254;
DELETE FROM `creature_addon` WHERE (`guid`=168254);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168254, 1682540, 0, 0, 0, 0, 92857);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 168273;
DELETE FROM `creature_addon` WHERE (`guid`=168273);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168273, 1682730, 0, 0, 0, 0, 92857);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 168280;
DELETE FROM `creature_addon` WHERE (`guid`=168280);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168280, 1682800, 0, 0, 0, 0, 92857);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 168332;
DELETE FROM `creature_addon` WHERE (`guid`=168332);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168332, 1683320, 0, 0, 0, 0, 92857);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 168326;
DELETE FROM `creature_addon` WHERE (`guid`=168326);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (168326, 1683260, 0, 0, 0, 0, 92857);


















