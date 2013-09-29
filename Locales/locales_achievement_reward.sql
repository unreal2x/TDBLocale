/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : world

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2013-09-29 10:07:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `locales_achievement_reward`
-- ----------------------------
DROP TABLE IF EXISTS `locales_achievement_reward`;
CREATE TABLE `locales_achievement_reward` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject_loc1` varchar(100) NOT NULL DEFAULT '',
  `subject_loc2` varchar(100) NOT NULL DEFAULT '',
  `subject_loc3` varchar(100) NOT NULL DEFAULT '',
  `subject_loc4` varchar(100) NOT NULL DEFAULT '',
  `subject_loc5` varchar(100) NOT NULL DEFAULT '',
  `subject_loc6` varchar(100) NOT NULL DEFAULT '',
  `subject_loc7` varchar(100) NOT NULL DEFAULT '',
  `subject_loc8` varchar(100) NOT NULL DEFAULT '',
  `text_loc1` text,
  `text_loc2` text,
  `text_loc3` text,
  `text_loc4` text,
  `text_loc5` text,
  `text_loc6` text,
  `text_loc7` text,
  `text_loc8` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of locales_achievement_reward
-- ----------------------------
INSERT INTO `locales_achievement_reward` VALUES ('45', '', '', '', '', '', '', '', 'Исследователь - твое второе имя!', null, null, null, null, null, null, null, 'Вот это да!$b$bА я то думал, что уже все обошел в этой обледеневшей дыре! Но старому-то дворфу вроде меня сразу видно, у кого глаза горят от жажды приключений!$b$bНоси эту накидку с гордостью. Пусть твои друзья знают, кто всегда сможет повести их за собой!$b$bНе сворачивай с выбранного пути!$b$b-Бранн Бронзобород');
INSERT INTO `locales_achievement_reward` VALUES ('614', '', '', '', '', '', '', '', 'За Альянс!', null, null, null, null, null, null, null, 'Война бушует повсюду в наших землях. Только самые храбрые герои смеют бросить вызов Орде на границе, где это представляет большую угрозу. Вы в числе таких же героев.$b$bСтолкновения с лидерами Орды, позволят нам нанести завершающий удар. Орда склонится перед мощью Альянса.$b$bВаши успехи будут вознаграждены. Держитесь гордо!$b$b--Ваш Король');
INSERT INTO `locales_achievement_reward` VALUES ('619', '', '', '', '', '', '', '', 'За Орду!', null, null, null, null, null, null, null, 'Во время большой суматохи истинные герои поднимаются из нищеты. Вы - единственный великий герой.$b$bВойна надвигается на нас. Ваши усилия будут продолжением нашего дела в Азероте. Ваши великие подвиги будут вознаграждены. Возьмите этот приз Оргриммара и поезжайте праздновать.$b$bЗа Орду!$b$bВождь Тралл');
INSERT INTO `locales_achievement_reward` VALUES ('1021', '', '', '', '', '', '', '', 'Такими достижениями можно гордиться!', null, null, null, null, null, null, null, 'Твоя коллекция гербовых накидок не может не вызывать восхищение! Думаю, ты не откажешься добавить к ней еще одну. Не хочу, чтобы она просто собирала пыль у меня в шкафу.');
INSERT INTO `locales_achievement_reward` VALUES ('1250', '', '', '', '', '', '', '', 'Новый дом для Вонючки', null, null, null, null, null, null, null, 'Говорят, ты очень заботливо относишься к братьям нашим меньшим. Надеюсь, ты не откажешься приютить у себя моего Вонючку? Он отказывается играть со всеми, кроме тебя...$b$bПожалуйста, не забывай кормить его дважды в день. И еще... держи его подальше от черных котов.$b$bБреанни');
INSERT INTO `locales_achievement_reward` VALUES ('1681', '', '', '', '', '', '', '', 'Поздравления от Дарнасса', null, null, null, null, null, null, null, 'Ваши достижения были основательными и имеющие большие перспективы. Азерот, со всей недавней суматохой, извлекает большую пользу из тех, кто стремится избавить землю от зла.$b$bТолько те, кто не торопится узнать наши земли, понимают жертвы потерь и доблесть наших героев. Вы - один такой герой. Хотелось бы надеяться, вы отречетесь от рассказов о своих приключениях в течение многих последующих лет.$b$bОт имени Альянса, я благодарю вас, Хранитель мудрости.');
INSERT INTO `locales_achievement_reward` VALUES ('1682', '', '', '', '', '', '', '', 'Поздравления от Громового Утеса', null, null, null, null, null, null, null, 'Новости о ваших достижениях быстро разносятся. Ветры суматохи воют в наших землях. Те, кто бросают вызов злу, являются нашей единственной надеждой.$b$bТолько те, кто прислушиваются к ветру, понимают долги, которые заплатили наши павшие герои, чтобы защитить наших людей. Может такой герой как вы проживет долгую жизнь, чтобы рассказать о своих приключениях. Только тогда мы будем помнить как мы должны быть благодарны вам.$b$bГлубоко признателен, Хранитель мудрости.$b$bЗа Орду!$b$b--Кэрн Кровавое Копыто');
INSERT INTO `locales_achievement_reward` VALUES ('2096', '', '', '', '', '', '', '', 'Властелин монет', null, null, null, null, null, null, null, 'Поздравляю тебя с завершением коллекции даларанских монет! В награду за столь нелегкий труд прилагаю к этому письму только что выкованную титановую печать Даларана. Это особенная монета, которую мы рассылаем только самым успешным коллекционерам.$b$bНадеюсь, тебе понравится эта награда. Ты ее заслужил!$b$bС уважением,$b$bДжепетто Таратор');
INSERT INTO `locales_achievement_reward` VALUES ('2143', '', '', '', '', '', '', '', 'Во главе ковалерии', null, null, null, null, null, null, null, 'Надо заметить, ты прекрасно обращаешься с животными. Благодаря тебе, наши дела пошли на лад.$b$bНадеюсь ты не откажешься присмотреть за этим драконом-альбиносом? У меня просто нет времени уделять ему достаточно внимания.$b$bС уважением,$bМей');
INSERT INTO `locales_achievement_reward` VALUES ('2136', '', '', '', '', '', '', '', 'Слава герою', null, null, null, null, null, null, null, '$gВоитель:Воительница;,$b$bСлухи о твоих великих деяниях в Нордсколе достигли и Храма Драконьего Покоя.$b$bПодобная смелость должна быть достойно вознаграждена. Прошу тебя, прими этот дар от лица Аспектов. Вместе мы избавим Азерот от сил зла - раз и навсегда.$b$bАлекстраза Хранительница Жизни');
INSERT INTO `locales_achievement_reward` VALUES ('876', '', '', '', '', '', '', '', 'Жестокость гладиатора', null, null, null, null, null, null, null, 'Я уже давно слежу за твоими успехами, малыш.$b$bТы отлично сражаешься на этой арене! Вот, возьми это и носи с гордостью.$bА теперь отправляйся обратно и покажи всем, чего ты стоишь!$b$bДядя Сэл.');
INSERT INTO `locales_achievement_reward` VALUES ('2957', '', '', '', '', '', '', '', 'Слава рейдеру Ульдуара', null, null, null, null, null, null, null, '$gДорогой:Дорогая; $N!$b$bНадеюсь у тебя все хорошо, и ты уже пришел:пришла в себя после наших приключений в Ульдуаре.$b$bМои друзья из поисковой команды наткнулись на полуживого детеныша дракона. Должно быть, он стал жертвой эксперимента железных дворфов.$b$bМы поставили его на ноги, и с тех пор он значительно подрос - можешь $gсам:сама; убедиться! Мы, к сожалению, умеем ездить верхом только на баранах и вьючных мулах, поэтому мы решили преподнести его тебе в подарок - в качестве знака благодарности за помощь.$b$bС уважением,$bБранн Бронзобород');
INSERT INTO `locales_achievement_reward` VALUES ('2958', '', '', '', '', '', '', '', 'Слава рейдеру Ульдуара (героич.)', null, null, null, null, null, null, null, '$gДорогой:Дорогая; $N!$b$bНадеюсь у тебя все хорошо, и ты уже пришел:пришла в себя после наших приключений в Ульдуаре.$b$bМои друзья из поисковой команды наткнулись на полуживого детеныша дракона. Должно быть, он стал жертвой эксперимента железных дворфов.$b$bМы поставили его на ноги, и с тех пор он значительно подрос - можешь $gсам:сама; убедиться! Мы, к сожалению, умеем ездить верхом только на баранах и вьючных мулах, поэтому мы решили преподнести его тебе в подарок - в качестве знака благодарности за помощь.$b$bС уважением,$bБранн Бронзобород');
INSERT INTO `locales_achievement_reward` VALUES ('2144', '', '', '', '', '', '', '', 'И снова - время', null, null, null, null, null, null, null, 'Пение военных горнов часто заглушает голос совести: слишком легко многие обитатели Азерота забывают о величайших ценностях жизни.$b$bТы же, однако, являешься воплощением лучших качеств своей расы, ибо помнишь о том, ради чего мы сражаемся. Не забывай же и о наших победах, и пусть остальные восславят их вместе с тобой.$b$bАлекстраза Хранительница Жизни');
INSERT INTO `locales_achievement_reward` VALUES ('2145', '', '', '', '', '', '', '', 'И снова - время', null, null, null, null, null, null, null, 'Пение военных горнов часто заглушает голос совести: слишком легко многие обитатели Азерота забывают о величайших ценностях жизни.$b$bТы же, однако, являешься воплощением лучших качеств своей расы, ибо помнишь о том, ради чего мы сражаемся. Не забывай же и о наших победах, и пусть остальные восславят их вместе с тобой.$b$bАлекстраза Хранительница Жизни');
INSERT INTO `locales_achievement_reward` VALUES ('4602', '', '', '', '', '', '', '', 'Слава рейдеру Ледяной Короны', null, null, null, null, null, null, null, '$N!$b$bВлияние Короля-Лича ослабло, и многие могущественные существа освободились от его власти.$b$bПример тому - этот ледяной змей: освободившись от воли своего повелителя, она проявила собственный характер, если не сказать своенравность.$b$bОдин из моих солдат потерял руку во время ее поимки, но теперь змей относится к седокам снисходительно, если у них хватает умения и силы воли, чтобы ей управлять.$b$bПрошу, прими этого величественного зверя в дар от рыцарей Черного Клинка. Для меня было честью сражаться вместе с тобой в этой величайшей из битв.$b$bС уважением,$bДарион Могрейн.');
INSERT INTO `locales_achievement_reward` VALUES ('4603', '', '', '', '', '', '', '', 'Слава рейдеру Ледяной Короны (героич.)', null, null, null, null, null, null, null, '$N!$b$bВлияние Короля-Лича ослабло, и многие могущественные существа освободились от его власти.$b$bПример тому - этот ледяной змей: освободившись от воли своего повелителя, она проявила собственный характер, если не сказать своенравность.$b$bОдин из моих солдат потерял руку во время ее поимки, но теперь змей относится к седокам снисходительно, если у них хватает умения и силы воли, чтобы ей управлять.$b$bПрошу, прими этого величественного зверя в дар от рыцарей Черного Клинка. Для меня было честью сражаться вместе с тобой в этой величайшей из битв.$b$bС уважением,$bДарион Могрейн.');
INSERT INTO `locales_achievement_reward` VALUES ('4478', '', '', '', '', '', '', '', 'Пугель', null, null, null, null, null, null, null, 'Дорогой наш неутомимый игрок!$b$bМы склоняем головы перед твоим стойким желанием проходить подземелья в составе новых и даже совсем не знакомых групп. Мы готовы биться об заклад, что тебе уже приходилось открывать глаза новичкам и разъяснять, что почем в таких на первый взгляд пугающих проходах.$b$bКороче говоря, мы прослышали, что ты любитель этих самых \"пугов\" и сопутствующих им приключений. Так прими же от нас замечательного карликового пугеля, который поможет тебе быть начеку в любом рейде, даже в самом непредсказуемом и полном пугающих опасностей.$b$bВсех благ!$b$bРазработчики World of Warcraft');
INSERT INTO `locales_achievement_reward` VALUES ('1956', '', '', '', '', '', '', '', 'Высшее образование', null, null, null, null, null, null, null, 'Поздравляю с окончанием изучения школ тайной магии! В благодарность за усердие прилагаю к этому письму завершающую книгу серии.$b$bНадеюсь, она покажется вам особенно увлекательной. Впрочем - один раз увидеть, чем сто раз услышать!$b$bС уважением.$b$bРонин.');
INSERT INTO `locales_achievement_reward` VALUES ('4079', '', '', '', '', '', '', '', 'Дань бессмертию', null, null, null, null, null, null, null, '$gДорогой:Дорогая; $N!$b$bЛегенды о твоем триумфальном выступлении на Испытании великого крестоносца будут жить в веках. Серебряный Авангард призвал под свои знамёна величайших чемпионов Азерота, дабы закалить их отвагу в горниле Колизея. Я живу надеждой, что адепты Света, подобные тебе и твоим союзникам, развеют мрак, сгустившийся над нами.$b$bНам нужна твоя помощь в грядущей битве против Короля-лича. Но пока этот день не настал, наслаждайся плодами своей победы. Я дарую тебе в знак признания твоих заслуг одного из наших лучших боевых скакунов. И когда Плеть узрит твой флаг, развевающийся на горизонте, они поймут, что конец близок.$b$bЗа честь и отвагу,$bТирион Фордринг');
INSERT INTO `locales_achievement_reward` VALUES ('4156', '', '', '', '', '', '', '', 'Дань бессмертию', null, null, null, null, null, null, null, '$gДорогой:Дорогая; $N!$b$bЛегенды о твоем триумфальном выступлении на Испытании великого крестоносца будут жить в веках. Серебряный Авангард призвал под свои знамёна величайших чемпионов Азерота, дабы закалить их отвагу в горниле Колизея. Я живу надеждой, что адепты Света, подобные тебе и твоим союзникам, развеют мрак, сгустившийся над нами.$b$bНам нужна твоя помощь в грядущей битве против Короля-лича. Но пока этот день не настал, наслаждайся плодами своей победы. Я дарую тебе в знак признания твоих заслуг одного из наших лучших боевых скакунов. И когда Плеть узрит твой флаг, развевающийся на горизонте, они поймут, что конец близок.$b$bЗа честь и отвагу,$bТирион Фордринг');
INSERT INTO `locales_achievement_reward` VALUES ('13', '', '', '', '', '', '', '', 'Мои поздравления!', null, null, null, null, null, null, null, 'Мои поздравления с достижением 80-го уровня! Спасибо тебе за самоотверженную работу по очищению Азерота от захватившего нас зла.$b$bИ хотя твои приключения нельзя назвать легкой прогулкой, знай, что настоящие битвы все еще ждут тебя впереди.$b$bДержи меч на готове!$b$bРонин');
INSERT INTO `locales_achievement_reward` VALUES ('1793', '', '', '', '', '', '', '', 'Спасибо!', null, null, null, null, null, null, null, '$gДорогой:Дорогая; $N!$b$bСпасибо за прекрасные каникулы! Сама леди Лиадрин приходила к попечительнице сирот и хотела забрать меня к себе, чтобы я могла учиться в Луносвете!$b$bСпасибо за то, что ты показал мне эти места – Трон Стихий, Темный портал и Пещеры времени – и позволил увидеть мою подругу Хч\'уу. А еще мне очень понравился игрушечный дракон!$b$bУверена, что ты хорошо заботишься о моем питомце! Передай ему, что я тоже по нему скучаю!$b$bС любовью,$bСаландрия.');
INSERT INTO `locales_achievement_reward` VALUES ('2516', '', '', '', '', '', '', '', 'Мой первый олененок', null, null, null, null, null, null, null, 'Приветствую вас!$b$bКак я понимаю, в вашем доме нашлось место даже для вредины Вонюши... Надеюсь, ваш теплый кров примет еще одну сиротливую душу?$b$bЭтот олешек очень стеснителен, но вы без труда завоюете его сердце с помощью прилагаемого лакомства – его любимого солевого лизунца.$b$b-Бреанни');
