/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : world

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2013-09-19 18:58:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `locales_points_of_interest`
-- ----------------------------
DROP TABLE IF EXISTS `locales_points_of_interest`;
CREATE TABLE `locales_points_of_interest` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_name_loc1` text,
  `icon_name_loc2` text,
  `icon_name_loc3` text,
  `icon_name_loc4` text,
  `icon_name_loc5` text,
  `icon_name_loc6` text,
  `icon_name_loc7` text,
  `icon_name_loc8` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of locales_points_of_interest
-- ----------------------------
INSERT INTO `locales_points_of_interest` VALUES ('1', null, null, null, null, null, null, null, 'Таверна Гордость льва');
INSERT INTO `locales_points_of_interest` VALUES ('2', null, null, null, null, null, null, null, 'Залдимар Вефхеллт');
INSERT INTO `locales_points_of_interest` VALUES ('3', null, null, null, null, null, null, null, 'Брат Вильгельм');
INSERT INTO `locales_points_of_interest` VALUES ('4', null, null, null, null, null, null, null, 'Жрица Жозетта');
INSERT INTO `locales_points_of_interest` VALUES ('5', null, null, null, null, null, null, null, 'Керин Сильвиус');
INSERT INTO `locales_points_of_interest` VALUES ('6', null, null, null, null, null, null, null, 'Максимилиан Кроу');
INSERT INTO `locales_points_of_interest` VALUES ('7', null, null, null, null, null, null, null, 'Лирия дю Лак');
INSERT INTO `locales_points_of_interest` VALUES ('8', null, null, null, null, null, null, null, 'Алхимик Маллори ');
INSERT INTO `locales_points_of_interest` VALUES ('9', null, null, null, null, null, null, null, 'Кузнец Аргус');
INSERT INTO `locales_points_of_interest` VALUES ('10', null, null, null, null, null, null, null, 'Томас');
INSERT INTO `locales_points_of_interest` VALUES ('11', null, null, null, null, null, null, null, 'Мишель Белль');
INSERT INTO `locales_points_of_interest` VALUES ('12', null, null, null, null, null, null, null, 'Ли Браун');
INSERT INTO `locales_points_of_interest` VALUES ('13', null, null, null, null, null, null, null, 'Штормградский начертатель');
INSERT INTO `locales_points_of_interest` VALUES ('14', null, null, null, null, null, null, null, 'Адель Филдер');
INSERT INTO `locales_points_of_interest` VALUES ('15', null, null, null, null, null, null, null, 'Хелена Меховяз');
INSERT INTO `locales_points_of_interest` VALUES ('16', null, null, null, null, null, null, null, 'Элдрин');
INSERT INTO `locales_points_of_interest` VALUES ('17', null, null, null, null, null, null, null, 'Ирма');
INSERT INTO `locales_points_of_interest` VALUES ('18', null, null, null, null, null, null, null, 'Штормград: аукционный дом');
INSERT INTO `locales_points_of_interest` VALUES ('19', null, null, null, null, null, null, null, 'Штормград: банк');
INSERT INTO `locales_points_of_interest` VALUES ('20', null, null, null, null, null, null, null, 'Порт Штормграда');
INSERT INTO `locales_points_of_interest` VALUES ('21', null, null, null, null, null, null, null, 'Подземный поезд');
INSERT INTO `locales_points_of_interest` VALUES ('22', null, null, null, null, null, null, null, 'Позолоченная роза');
INSERT INTO `locales_points_of_interest` VALUES ('23', null, null, null, null, null, null, null, 'Штормград: укротитель грифонов');
INSERT INTO `locales_points_of_interest` VALUES ('24', null, null, null, null, null, null, null, 'Гостевые покои Штормграда');
INSERT INTO `locales_points_of_interest` VALUES ('25', null, null, null, null, null, null, null, 'Штормградский замочник');
INSERT INTO `locales_points_of_interest` VALUES ('26', null, null, null, null, null, null, null, 'Дженова Камнещит');
INSERT INTO `locales_points_of_interest` VALUES ('27', null, null, null, null, null, null, null, 'Ву Пинг');
INSERT INTO `locales_points_of_interest` VALUES ('28', null, null, null, null, null, null, null, 'Зал Защитника');
INSERT INTO `locales_points_of_interest` VALUES ('29', null, null, null, null, null, null, null, 'Штормград: военачальники');
INSERT INTO `locales_points_of_interest` VALUES ('30', null, null, null, null, null, null, null, 'Штормградский парикмахер');
INSERT INTO `locales_points_of_interest` VALUES ('31', null, null, null, null, null, null, null, 'Штормградский начертатель');
INSERT INTO `locales_points_of_interest` VALUES ('32', null, null, null, null, null, null, null, 'Парк');
INSERT INTO `locales_points_of_interest` VALUES ('33', null, null, null, null, null, null, null, 'Охотничья Избушка');
INSERT INTO `locales_points_of_interest` VALUES ('34', null, null, null, null, null, null, null, 'Башня магов');
INSERT INTO `locales_points_of_interest` VALUES ('35', null, null, null, null, null, null, null, 'Собор Света');
INSERT INTO `locales_points_of_interest` VALUES ('36', null, null, null, null, null, null, null, 'Штормград: дом разбойников');
INSERT INTO `locales_points_of_interest` VALUES ('37', null, null, null, null, null, null, null, 'Прорицательница Умбруа');
INSERT INTO `locales_points_of_interest` VALUES ('38', null, null, null, null, null, null, null, 'Таверна \"Забитый ягненок\"');
INSERT INTO `locales_points_of_interest` VALUES ('39', null, null, null, null, null, null, null, 'Казармы Штормграда');
INSERT INTO `locales_points_of_interest` VALUES ('40', null, null, null, null, null, null, null, 'Все для алхимика');
INSERT INTO `locales_points_of_interest` VALUES ('41', null, null, null, null, null, null, null, 'Терум Подземная Кузня');
INSERT INTO `locales_points_of_interest` VALUES ('42', null, null, null, null, null, null, null, 'Таверна \"Свинья и свисток\"');
INSERT INTO `locales_points_of_interest` VALUES ('43', null, null, null, null, null, null, null, 'Лукан Корделл');
INSERT INTO `locales_points_of_interest` VALUES ('44', null, null, null, null, null, null, null, 'Лилиам Шпиндель');
INSERT INTO `locales_points_of_interest` VALUES ('45', null, null, null, null, null, null, null, 'Шайна Корпия');
INSERT INTO `locales_points_of_interest` VALUES ('46', null, null, null, null, null, null, null, 'Арнольд Лиланд');
INSERT INTO `locales_points_of_interest` VALUES ('47', null, null, null, null, null, null, null, 'Прочная шкура');
INSERT INTO `locales_points_of_interest` VALUES ('48', null, null, null, null, null, null, null, 'Гельман Камнерук');
INSERT INTO `locales_points_of_interest` VALUES ('49', null, null, null, null, null, null, null, 'Ткани Дункана');
INSERT INTO `locales_points_of_interest` VALUES ('50', null, null, null, null, null, null, null, 'Стальгорн: аукционный дом');
INSERT INTO `locales_points_of_interest` VALUES ('51', null, null, null, null, null, null, null, 'Свод');
INSERT INTO `locales_points_of_interest` VALUES ('52', null, null, null, null, null, null, null, 'Подземный поезд');
INSERT INTO `locales_points_of_interest` VALUES ('53', null, null, null, null, null, null, null, 'Стальгорн: укротитель грифонов');
INSERT INTO `locales_points_of_interest` VALUES ('54', null, null, null, null, null, null, null, 'Гостевые покои Стальгорна');
INSERT INTO `locales_points_of_interest` VALUES ('55', null, null, null, null, null, null, null, 'Таверна \"Горючий камень\"');
INSERT INTO `locales_points_of_interest` VALUES ('56', null, null, null, null, null, null, null, 'Стальгорн: почта');
INSERT INTO `locales_points_of_interest` VALUES ('57', null, null, null, null, null, null, null, 'Ульбрек Огненная Длань');
INSERT INTO `locales_points_of_interest` VALUES ('58', null, null, null, null, null, null, null, 'Бикси и Бульвайф');
INSERT INTO `locales_points_of_interest` VALUES ('59', null, null, null, null, null, null, null, 'Стальгорн: военачальники');
INSERT INTO `locales_points_of_interest` VALUES ('60', null, null, null, null, null, null, null, 'Стальгорнский парикмахер');
INSERT INTO `locales_points_of_interest` VALUES ('61', null, null, null, null, null, null, null, 'Оружейная');
INSERT INTO `locales_points_of_interest` VALUES ('62', null, null, null, null, null, null, null, 'Зал Тайн');
INSERT INTO `locales_points_of_interest` VALUES ('63', null, null, null, null, null, null, null, 'Стальгорн: наставник разбойников');
INSERT INTO `locales_points_of_interest` VALUES ('64', null, null, null, null, null, null, null, 'Стальгорн: наставник чернокнижников');
INSERT INTO `locales_points_of_interest` VALUES ('65', null, null, null, null, null, null, null, 'Стальгорн: наставник шаманов');
INSERT INTO `locales_points_of_interest` VALUES ('66', null, null, null, null, null, null, null, 'Снадобья и микстуры от Гонобобельзз');
INSERT INTO `locales_points_of_interest` VALUES ('67', null, null, null, null, null, null, null, 'Великая Кузня');
INSERT INTO `locales_points_of_interest` VALUES ('68', null, null, null, null, null, null, null, '\"Бронзовый котелок\"');
INSERT INTO `locales_points_of_interest` VALUES ('69', null, null, null, null, null, null, null, 'Колдовские штучки Чертополуша');
INSERT INTO `locales_points_of_interest` VALUES ('70', null, null, null, null, null, null, null, 'Стальгорн: целитель');
INSERT INTO `locales_points_of_interest` VALUES ('71', null, null, null, null, null, null, null, 'Странствующий рыбак');
INSERT INTO `locales_points_of_interest` VALUES ('72', null, null, null, null, null, null, null, 'Стальгорнский начертатель');
INSERT INTO `locales_points_of_interest` VALUES ('73', null, null, null, null, null, null, null, 'Кожевенная лавка Остроигла');
INSERT INTO `locales_points_of_interest` VALUES ('74', null, null, null, null, null, null, null, 'Гильдия рудокопов Темной Горы');
INSERT INTO `locales_points_of_interest` VALUES ('75', null, null, null, null, null, null, null, 'Лавка одежды Камнелоба');
INSERT INTO `locales_points_of_interest` VALUES ('76', null, null, null, null, null, null, null, 'Таверна \"Громоварка\"');
INSERT INTO `locales_points_of_interest` VALUES ('77', null, null, null, null, null, null, null, 'Шелби Щебенка');
INSERT INTO `locales_points_of_interest` VALUES ('78', null, null, null, null, null, null, null, 'Гриф Дикое Сердце');
INSERT INTO `locales_points_of_interest` VALUES ('79', null, null, null, null, null, null, null, 'Магис Искроплащ');
INSERT INTO `locales_points_of_interest` VALUES ('80', null, null, null, null, null, null, null, 'Азар Мощный Молот');
INSERT INTO `locales_points_of_interest` VALUES ('81', null, null, null, null, null, null, null, 'Максан Анвол');
INSERT INTO `locales_points_of_interest` VALUES ('82', null, null, null, null, null, null, null, 'Хограл Баккан');
INSERT INTO `locales_points_of_interest` VALUES ('83', null, null, null, null, null, null, null, 'Гимризз Которышка');
INSERT INTO `locales_points_of_interest` VALUES ('84', null, null, null, null, null, null, null, 'Гранис Свист Топора');
INSERT INTO `locales_points_of_interest` VALUES ('85', null, null, null, null, null, null, null, 'Тогнус Огниво');
INSERT INTO `locales_points_of_interest` VALUES ('86', null, null, null, null, null, null, null, 'Гремлок Пилзнор');
INSERT INTO `locales_points_of_interest` VALUES ('87', null, null, null, null, null, null, null, 'Тамнер Пол');
INSERT INTO `locales_points_of_interest` VALUES ('88', null, null, null, null, null, null, null, 'Пакстон Гантер');
INSERT INTO `locales_points_of_interest` VALUES ('89', null, null, null, null, null, null, null, 'Аукционный дом Дарнаса');
INSERT INTO `locales_points_of_interest` VALUES ('90', null, null, null, null, null, null, null, 'Дарнас: банк');
INSERT INTO `locales_points_of_interest` VALUES ('91', null, null, null, null, null, null, null, 'Дарнас: укротитель грифонов');
INSERT INTO `locales_points_of_interest` VALUES ('92', null, null, null, null, null, null, null, 'Дарнас: регистрация гильдий');
INSERT INTO `locales_points_of_interest` VALUES ('93', null, null, null, null, null, null, null, 'Дарнасская таверна');
INSERT INTO `locales_points_of_interest` VALUES ('94', null, null, null, null, null, null, null, 'Дарнас: почта');
INSERT INTO `locales_points_of_interest` VALUES ('95', null, null, null, null, null, null, null, 'Алассин');
INSERT INTO `locales_points_of_interest` VALUES ('96', null, null, null, null, null, null, null, 'Илиения Лунное Пламя');
INSERT INTO `locales_points_of_interest` VALUES ('97', null, null, null, null, null, null, null, 'Дарнас: военачальники');
INSERT INTO `locales_points_of_interest` VALUES ('98', null, null, null, null, null, null, null, 'Дарнас: наставник друидов');
INSERT INTO `locales_points_of_interest` VALUES ('99', null, null, null, null, null, null, null, 'Дарнас: наставник охотников');
INSERT INTO `locales_points_of_interest` VALUES ('100', null, null, null, null, null, null, null, 'Дарнас: наставник разбойников');
INSERT INTO `locales_points_of_interest` VALUES ('101', null, null, null, null, null, null, null, 'Терраса Воинов');
INSERT INTO `locales_points_of_interest` VALUES ('102', null, null, null, null, null, null, null, 'Дарнас: учитель алхимии');
INSERT INTO `locales_points_of_interest` VALUES ('103', null, null, null, null, null, null, null, 'Дарнас: учитель кулинарии');
INSERT INTO `locales_points_of_interest` VALUES ('104', null, null, null, null, null, null, null, 'Дарнас: учитель наложения чар');
INSERT INTO `locales_points_of_interest` VALUES ('105', null, null, null, null, null, null, null, 'Дарнас: учитель первой помощи');
INSERT INTO `locales_points_of_interest` VALUES ('106', null, null, null, null, null, null, null, 'Дарнас: учитель рыбной ловли');
INSERT INTO `locales_points_of_interest` VALUES ('107', null, null, null, null, null, null, null, 'Дарнас: начертатель');
INSERT INTO `locales_points_of_interest` VALUES ('108', null, null, null, null, null, null, null, 'Дарнас: учитель кожевничества');
INSERT INTO `locales_points_of_interest` VALUES ('109', null, null, null, null, null, null, null, 'Дарнас: учитель снятия шкур');
INSERT INTO `locales_points_of_interest` VALUES ('110', null, null, null, null, null, null, null, 'Дарнасский портной');
INSERT INTO `locales_points_of_interest` VALUES ('111', null, null, null, null, null, null, null, 'Таверна Доланаара');
INSERT INTO `locales_points_of_interest` VALUES ('112', null, null, null, null, null, null, null, 'Сериадна');
INSERT INTO `locales_points_of_interest` VALUES ('113', null, null, null, null, null, null, null, null);
INSERT INTO `locales_points_of_interest` VALUES ('114', null, null, null, null, null, null, null, null);
INSERT INTO `locales_points_of_interest` VALUES ('115', null, null, null, null, null, null, null, null);
INSERT INTO `locales_points_of_interest` VALUES ('116', null, null, null, null, null, null, null, null);
INSERT INTO `locales_points_of_interest` VALUES ('117', null, null, null, null, null, null, null, null);
INSERT INTO `locales_points_of_interest` VALUES ('118', null, null, null, null, null, null, null, null);
INSERT INTO `locales_points_of_interest` VALUES ('119', null, null, null, null, null, null, null, null);
INSERT INTO `locales_points_of_interest` VALUES ('120', null, null, null, null, null, null, null, null);
INSERT INTO `locales_points_of_interest` VALUES ('121', null, null, null, null, null, null, null, null);
INSERT INTO `locales_points_of_interest` VALUES ('122', null, null, null, null, null, null, null, null);
INSERT INTO `locales_points_of_interest` VALUES ('123', null, null, null, null, null, null, null, null);
INSERT INTO `locales_points_of_interest` VALUES ('124', null, null, null, null, null, null, null, null);
INSERT INTO `locales_points_of_interest` VALUES ('125', null, null, null, null, null, null, null, null);
INSERT INTO `locales_points_of_interest` VALUES ('126', null, null, null, null, null, null, null, null);
INSERT INTO `locales_points_of_interest` VALUES ('127', null, null, null, null, null, null, null, null);
INSERT INTO `locales_points_of_interest` VALUES ('128', null, null, null, null, null, null, null, null);
INSERT INTO `locales_points_of_interest` VALUES ('129', null, null, null, null, null, null, null, null);
INSERT INTO `locales_points_of_interest` VALUES ('130', null, null, null, null, null, null, null, null);
