/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : laravel5

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-09-27 18:25:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ݷᑍ',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT 'ൈᬿ',
  `post_count` int(11) NOT NULL DEFAULT '0' COMMENT 'ૼৼහ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '分享', '分享创造，分享发现', '0', null, null);
INSERT INTO `categories` VALUES ('2', '教程', '开发技巧，推荐扩展包等', '0', null, null);
INSERT INTO `categories` VALUES ('3', '问答', '请保持友善，互帮互助', '0', null, null);
INSERT INTO `categories` VALUES ('4', '公告', '站点公告', '0', null, null);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('4', '2018_09_27_164539_seed_categories_data', '1');

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `subscriber_count` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of projects
-- ----------------------------

-- ----------------------------
-- Table structure for topics
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `reply_count` int(10) unsigned NOT NULL DEFAULT '0',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0',
  `last_reply_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of topics
-- ----------------------------
INSERT INTO `topics` VALUES ('1', 'Ut aut aut voluptates quo aut repellat.', 'Facere vel aut fugiat dolores velit veniam. Vel dicta quos et a dolores quis. Cupiditate assumenda similique assumenda quia ut ea.', '9', '2', '0', '0', '0', '0', 'Ut aut aut voluptates quo aut repellat.', null, '2018-09-18 00:01:12', '2018-09-21 13:32:09');
INSERT INTO `topics` VALUES ('2', 'Autem maxime nesciunt adipisci ipsa accusantium est eum.', 'Natus non optio et ab voluptas. Nobis iste perspiciatis nemo. Vitae ut omnis odit eveniet ut. Natus blanditiis quisquam a voluptatum.', '2', '4', '0', '0', '0', '0', 'Autem maxime nesciunt adipisci ipsa accusantium est eum.', null, '2018-09-16 17:25:31', '2018-09-17 04:01:12');
INSERT INTO `topics` VALUES ('3', 'Repellat rerum eum excepturi dignissimos sed.', 'Accusantium et sed nam qui officiis ea nihil. Suscipit enim eos odio vitae.', '6', '2', '0', '0', '0', '0', 'Repellat rerum eum excepturi dignissimos sed.', null, '2018-09-12 16:33:16', '2018-09-19 14:42:17');
INSERT INTO `topics` VALUES ('4', 'Enim ut illum doloremque eum corrupti quos.', 'Sit officia praesentium aut ducimus amet et. Rerum quo esse quod sequi deleniti voluptates numquam. Voluptatem necessitatibus asperiores deleniti et esse ad magnam.', '8', '2', '0', '0', '0', '0', 'Enim ut illum doloremque eum corrupti quos.', null, '2018-09-03 04:27:29', '2018-09-24 23:32:18');
INSERT INTO `topics` VALUES ('5', 'Maxime illum consequuntur at omnis libero quo incidunt.', 'Qui aut sed non occaecati reiciendis nobis eos. Dignissimos modi quod eos iure unde. Nihil et dolore ullam iste eligendi saepe maiores. Debitis id quidem consequatur repudiandae animi et aut.', '2', '1', '0', '0', '0', '0', 'Maxime illum consequuntur at omnis libero quo incidunt.', null, '2018-09-06 04:50:07', '2018-09-10 16:08:38');
INSERT INTO `topics` VALUES ('6', 'Vitae voluptatum est sed ut quia.', 'Aut in omnis perspiciatis aliquid sint nulla aut. Possimus aliquid debitis labore incidunt. Quo non ad voluptas deleniti est necessitatibus.', '7', '1', '0', '0', '0', '0', 'Vitae voluptatum est sed ut quia.', null, '2018-09-01 23:05:07', '2018-09-02 17:41:54');
INSERT INTO `topics` VALUES ('7', 'Ipsum iste dolorem omnis nostrum voluptatem explicabo.', 'Aliquam odit esse ullam non eos velit. Id iusto quam est repudiandae. Quod quia dolor odio. Corporis vero soluta neque. Et numquam eum consequuntur quis ex aut similique.', '2', '1', '0', '0', '0', '0', 'Ipsum iste dolorem omnis nostrum voluptatem explicabo.', null, '2018-09-01 10:52:40', '2018-09-13 23:48:54');
INSERT INTO `topics` VALUES ('8', 'Qui ut a placeat ut quaerat ut laboriosam non.', 'Porro ipsam in est modi aut. Odio dolore molestiae nam ipsum vitae qui. Dignissimos voluptate voluptate dolor quas minus. Earum praesentium repellendus ipsa. Consequatur et nam error quia ut.', '12', '3', '0', '0', '0', '0', 'Qui ut a placeat ut quaerat ut laboriosam non.', null, '2018-09-07 08:28:10', '2018-09-15 19:16:26');
INSERT INTO `topics` VALUES ('9', 'Et est recusandae quasi est quod.', 'Eaque numquam officia quis nihil sint ea dolorem. Nulla qui natus temporibus cumque qui quod. At cum dolores soluta neque reiciendis consequatur nemo.', '12', '1', '0', '0', '0', '0', 'Et est recusandae quasi est quod.', null, '2018-08-28 09:37:30', '2018-09-03 17:48:56');
INSERT INTO `topics` VALUES ('10', 'Dolores aspernatur illum et veniam.', 'Error ad est explicabo modi quo. Ipsam ut facilis minima iste aut et velit. Exercitationem et quis magni modi.', '2', '2', '0', '0', '0', '0', 'Dolores aspernatur illum et veniam.', null, '2018-09-02 16:31:50', '2018-09-07 11:03:52');
INSERT INTO `topics` VALUES ('11', 'Officiis officiis rerum itaque et quod sit enim minima.', 'Placeat laborum amet aut repellat aut cupiditate. Non est possimus nesciunt deleniti recusandae blanditiis nobis. Aperiam quo voluptatem quod reprehenderit et labore neque magni.', '10', '2', '0', '0', '0', '0', 'Officiis officiis rerum itaque et quod sit enim minima.', null, '2018-09-07 14:31:28', '2018-09-08 18:17:41');
INSERT INTO `topics` VALUES ('12', 'Sunt quae exercitationem error fugiat incidunt blanditiis.', 'Odit harum aut numquam velit quisquam. Atque unde aspernatur molestiae animi. Dolor laboriosam qui eligendi et praesentium porro id. Delectus numquam eos quia beatae illo voluptas.', '6', '4', '0', '0', '0', '0', 'Sunt quae exercitationem error fugiat incidunt blanditiis.', null, '2018-08-31 22:20:44', '2018-09-23 02:13:35');
INSERT INTO `topics` VALUES ('13', 'Placeat ex minus aut.', 'In cum inventore et natus. Consequatur doloremque commodi doloremque eligendi voluptatem cumque dignissimos. Maiores fugit nihil quo.', '3', '3', '0', '0', '0', '0', 'Placeat ex minus aut.', null, '2018-09-04 00:08:08', '2018-09-04 00:53:31');
INSERT INTO `topics` VALUES ('14', 'Reprehenderit officiis voluptate magni ex.', 'Et dolore tempora voluptatibus sunt. Ipsum quo modi nulla hic accusantium qui architecto. Et blanditiis perspiciatis eius est.', '1', '3', '0', '0', '0', '0', 'Reprehenderit officiis voluptate magni ex.', null, '2018-09-06 00:15:00', '2018-09-27 04:56:22');
INSERT INTO `topics` VALUES ('15', 'Exercitationem soluta quod alias ducimus sed.', 'Eligendi veniam est culpa quibusdam. Illum quidem vero qui quaerat. In omnis vel nihil. Soluta ut nemo repudiandae quae pariatur sit consequatur.', '7', '4', '0', '0', '0', '0', 'Exercitationem soluta quod alias ducimus sed.', null, '2018-09-01 02:57:23', '2018-09-04 13:21:59');
INSERT INTO `topics` VALUES ('16', 'Molestiae quasi quia omnis sed at cum sit.', 'Quaerat labore aliquid dolore voluptatibus. Non dolorum ratione laboriosam et. Tempore rerum architecto voluptatum fugit. Ut quia corporis quia sit.', '8', '4', '0', '0', '0', '0', 'Molestiae quasi quia omnis sed at cum sit.', null, '2018-09-26 18:45:59', '2018-09-27 02:27:15');
INSERT INTO `topics` VALUES ('17', 'Illo quis quia a qui quod rerum.', 'Tempora dolore architecto provident ut. Ut error accusantium eligendi sit dolores vel. Error nesciunt libero blanditiis cupiditate laboriosam velit. Fugiat et atque qui consectetur dolor.', '1', '2', '0', '0', '0', '0', 'Illo quis quia a qui quod rerum.', null, '2018-08-28 16:39:15', '2018-09-22 21:54:19');
INSERT INTO `topics` VALUES ('18', 'Molestiae expedita aut corrupti maxime amet voluptas.', 'Et est nam repudiandae ut. Qui eum reiciendis molestiae sit. Ex odit sint neque repellendus voluptatem error. Doloribus odio rerum sed ad enim soluta maiores quam.', '10', '3', '0', '0', '0', '0', 'Molestiae expedita aut corrupti maxime amet voluptas.', null, '2018-09-19 04:24:07', '2018-09-27 02:36:27');
INSERT INTO `topics` VALUES ('19', 'Provident voluptatum saepe a et sint soluta.', 'Sequi quo consequatur commodi provident voluptate tempore aut. Qui quibusdam esse asperiores commodi ut accusantium aut. Quam repellendus nihil dignissimos quibusdam quaerat tenetur maiores.', '12', '4', '0', '0', '0', '0', 'Provident voluptatum saepe a et sint soluta.', null, '2018-09-19 14:54:23', '2018-09-26 23:03:03');
INSERT INTO `topics` VALUES ('20', 'Autem mollitia nam labore incidunt non aut.', 'Architecto perspiciatis ullam in sed ab et non quasi. Quis molestias voluptate necessitatibus non. Odit unde dolores deleniti fugit. Ipsum est dolorem tempora non harum odio unde.', '4', '4', '0', '0', '0', '0', 'Autem mollitia nam labore incidunt non aut.', null, '2018-09-09 08:15:25', '2018-09-17 03:18:29');
INSERT INTO `topics` VALUES ('21', 'Quia assumenda aspernatur et doloremque iste ab.', 'Velit sit fugiat ab rerum consequuntur. Numquam numquam numquam hic deleniti laborum incidunt autem. Ut aut ipsum ut ut veniam quos.', '5', '3', '0', '0', '0', '0', 'Quia assumenda aspernatur et doloremque iste ab.', null, '2018-08-30 15:29:01', '2018-08-31 10:06:10');
INSERT INTO `topics` VALUES ('22', 'Similique repellendus dolores commodi est facilis.', 'Soluta voluptatem sit aliquam alias porro in ut. Facilis sit occaecati mollitia deserunt corrupti consequuntur facilis. Sit rem velit nesciunt qui. Et eius numquam repudiandae commodi enim.', '6', '3', '0', '0', '0', '0', 'Similique repellendus dolores commodi est facilis.', null, '2018-08-29 07:40:22', '2018-09-02 15:57:53');
INSERT INTO `topics` VALUES ('23', 'Quia qui amet hic ipsa et voluptas ut.', 'Illum voluptatum in similique a perferendis qui molestias. Occaecati assumenda sint ut quo. Pariatur sit perspiciatis alias sint earum.', '12', '4', '0', '0', '0', '0', 'Quia qui amet hic ipsa et voluptas ut.', null, '2018-08-29 04:22:54', '2018-09-26 00:30:26');
INSERT INTO `topics` VALUES ('24', 'Ut quasi perferendis provident esse laboriosam.', 'Illo id suscipit quis in animi tempora. Quo facere aut in. Consequuntur amet molestiae corrupti quod ea enim dolor.', '11', '3', '0', '0', '0', '0', 'Ut quasi perferendis provident esse laboriosam.', null, '2018-09-01 09:41:49', '2018-09-04 18:23:34');
INSERT INTO `topics` VALUES ('25', 'Facere commodi aperiam dolor sunt ut repudiandae eveniet.', 'Maiores porro non inventore vero nostrum est. Architecto autem at a recusandae nihil occaecati consequuntur ut. Et fuga iusto quam sunt recusandae autem.', '9', '2', '0', '0', '0', '0', 'Facere commodi aperiam dolor sunt ut repudiandae eveniet.', null, '2018-09-13 16:06:21', '2018-09-16 20:35:30');
INSERT INTO `topics` VALUES ('26', 'Ea quis fugiat officia dolor dolorum consequuntur autem ex.', 'Molestias aut ex perferendis tempora. Rerum sequi odio suscipit ipsa. Omnis non dignissimos est doloribus voluptatem.', '6', '3', '0', '0', '0', '0', 'Ea quis fugiat officia dolor dolorum consequuntur autem ex.', null, '2018-08-29 04:03:56', '2018-09-03 13:30:42');
INSERT INTO `topics` VALUES ('27', 'Voluptatibus qui excepturi placeat tempora occaecati.', 'Facilis voluptatem et ducimus quia non. Placeat sunt odio velit sed accusantium. Laudantium sed neque vel sed. Reprehenderit totam temporibus eius illo est.', '12', '3', '0', '0', '0', '0', 'Voluptatibus qui excepturi placeat tempora occaecati.', null, '2018-08-30 14:44:43', '2018-09-10 00:59:45');
INSERT INTO `topics` VALUES ('28', 'Consequatur quidem adipisci ipsam consequatur fugiat cumque illo explicabo.', 'Omnis consequatur quia et est rerum distinctio in pariatur. Ut excepturi accusantium et odit id dignissimos rerum culpa. Sit accusamus amet dicta distinctio.', '8', '4', '0', '0', '0', '0', 'Consequatur quidem adipisci ipsam consequatur fugiat cumque illo explicabo.', null, '2018-08-30 02:37:02', '2018-09-14 23:59:46');
INSERT INTO `topics` VALUES ('29', 'Sint illo quos ex consequatur vel perferendis.', 'Qui rerum molestiae occaecati eos. Quidem eligendi debitis numquam impedit cupiditate dolore eos. Ut non vitae cumque voluptatibus saepe iste ab modi. Omnis sed quas consequatur.', '7', '4', '0', '0', '0', '0', 'Sint illo quos ex consequatur vel perferendis.', null, '2018-09-02 09:20:20', '2018-09-11 18:44:12');
INSERT INTO `topics` VALUES ('30', 'Iusto minima necessitatibus tempora vitae.', 'Voluptas earum unde molestiae. Ullam animi quo tempora sunt. Aut nulla eveniet voluptas. Sunt repellendus facere maiores eveniet ipsum excepturi et.', '12', '1', '0', '0', '0', '0', 'Iusto minima necessitatibus tempora vitae.', null, '2018-08-31 22:31:26', '2018-09-18 11:57:25');
INSERT INTO `topics` VALUES ('31', 'Voluptatibus et nihil voluptatem explicabo illo.', 'Voluptas quia fuga harum dolorum rerum. Pariatur et quo voluptatem mollitia. Sequi temporibus voluptas animi blanditiis ipsa. Rerum enim eveniet ipsam corrupti enim quo.', '11', '2', '0', '0', '0', '0', 'Voluptatibus et nihil voluptatem explicabo illo.', null, '2018-09-02 00:24:44', '2018-09-18 19:17:28');
INSERT INTO `topics` VALUES ('32', 'Aspernatur velit consectetur quis commodi id.', 'Omnis neque distinctio non ab id quia rerum. Aspernatur cum necessitatibus dolor. Distinctio ad molestiae quia error porro cumque. Ut itaque ipsam iusto sit est.', '11', '2', '0', '0', '0', '0', 'Aspernatur velit consectetur quis commodi id.', null, '2018-09-01 23:15:25', '2018-09-05 14:58:06');
INSERT INTO `topics` VALUES ('33', 'Maxime cupiditate voluptatem sint unde.', 'Nobis deleniti quibusdam quo ut et tenetur blanditiis. Enim molestiae vel dolorum praesentium molestias et. Modi mollitia dignissimos officiis sunt. Porro praesentium dolor non rerum libero.', '11', '3', '0', '0', '0', '0', 'Maxime cupiditate voluptatem sint unde.', null, '2018-08-28 02:45:48', '2018-09-03 02:22:12');
INSERT INTO `topics` VALUES ('34', 'Impedit facere quas est reprehenderit similique omnis voluptate.', 'Molestiae asperiores aliquam provident tempora non alias dolor. Accusantium quia tempore rerum qui laborum.', '4', '2', '0', '0', '0', '0', 'Impedit facere quas est reprehenderit similique omnis voluptate.', null, '2018-08-27 18:15:53', '2018-09-17 01:29:50');
INSERT INTO `topics` VALUES ('35', 'Delectus tenetur vel eos similique suscipit eos vitae.', 'Dolor nobis ut corrupti nihil eius aspernatur. Aut eum ipsam quia sequi nobis quo est. Placeat suscipit blanditiis inventore fuga molestiae.', '11', '3', '0', '0', '0', '0', 'Delectus tenetur vel eos similique suscipit eos vitae.', null, '2018-09-16 06:54:08', '2018-09-23 21:33:12');
INSERT INTO `topics` VALUES ('36', 'Vero pariatur dolorem consectetur nisi atque dolores et.', 'Ea fugiat sed aut minus voluptas. Fugiat ea voluptas laborum voluptas id natus recusandae. Commodi quas nihil officia quia.', '2', '1', '0', '0', '0', '0', 'Vero pariatur dolorem consectetur nisi atque dolores et.', null, '2018-09-03 21:42:28', '2018-09-07 05:13:14');
INSERT INTO `topics` VALUES ('37', 'Qui dicta rem eum itaque amet perferendis.', 'Quo cum sunt sunt iusto. Sed amet quia aut soluta dolores unde. Consectetur ea accusantium totam deserunt delectus.', '9', '2', '0', '0', '0', '0', 'Qui dicta rem eum itaque amet perferendis.', null, '2018-08-30 21:59:36', '2018-09-25 19:12:27');
INSERT INTO `topics` VALUES ('38', 'Aliquid neque aliquid et omnis et totam sint.', 'Voluptatem ad illo laborum exercitationem voluptas magni ratione. Quos quae totam voluptatem non ipsa magni.', '3', '2', '0', '0', '0', '0', 'Aliquid neque aliquid et omnis et totam sint.', null, '2018-08-28 05:58:42', '2018-09-04 22:24:07');
INSERT INTO `topics` VALUES ('39', 'Dolorum id voluptatum qui.', 'Dolores tempore tempora delectus sint maxime nemo. Dolor illum sit tempore id illo ipsam. Placeat minima amet aut est consequuntur voluptate eaque.', '4', '4', '0', '0', '0', '0', 'Dolorum id voluptatum qui.', null, '2018-09-13 04:05:02', '2018-09-26 14:45:33');
INSERT INTO `topics` VALUES ('40', 'A est at temporibus veniam.', 'Id molestias quidem repellendus ut eveniet assumenda ut. Nihil incidunt et ut esse. Qui accusamus exercitationem velit repellendus vel reiciendis soluta.', '9', '4', '0', '0', '0', '0', 'A est at temporibus veniam.', null, '2018-09-13 18:10:43', '2018-09-22 16:31:41');
INSERT INTO `topics` VALUES ('41', 'Quae fuga sit adipisci quasi.', 'In modi non aut. Qui ut magnam est natus eveniet. Dolorem voluptatem beatae natus aspernatur. Mollitia eum dolor unde pariatur voluptatem.', '7', '1', '0', '0', '0', '0', 'Quae fuga sit adipisci quasi.', null, '2018-09-04 11:46:16', '2018-09-12 00:03:42');
INSERT INTO `topics` VALUES ('42', 'Odit in voluptatibus consequuntur quae repellat accusamus ut placeat.', 'Est inventore impedit aut quaerat. Nulla ut enim est aliquid enim. Veniam maxime tempora aperiam qui placeat occaecati quibusdam sint. Minima sit adipisci consequatur laboriosam dolor voluptas.', '3', '2', '0', '0', '0', '0', 'Odit in voluptatibus consequuntur quae repellat accusamus ut placeat.', null, '2018-08-31 21:56:55', '2018-09-11 00:17:53');
INSERT INTO `topics` VALUES ('43', 'Sit tempore deserunt suscipit libero voluptates culpa qui.', 'Repellendus velit alias sint dolorum eos est. Quo et consectetur modi quae consequatur vel fuga reiciendis. Dicta inventore nisi aut veniam. Eos culpa dignissimos id est harum totam consectetur.', '1', '4', '0', '0', '0', '0', 'Sit tempore deserunt suscipit libero voluptates culpa qui.', null, '2018-09-01 15:20:05', '2018-09-01 18:05:12');
INSERT INTO `topics` VALUES ('44', 'Sit ut facilis iste quod velit explicabo.', 'Possimus dolores eum et. Qui dolor reprehenderit laborum harum ea tempore qui. Delectus aut ex velit quae deleniti dolorem ipsam ducimus. Quasi accusamus consequuntur asperiores nobis molestias.', '3', '4', '0', '0', '0', '0', 'Sit ut facilis iste quod velit explicabo.', null, '2018-09-14 17:41:52', '2018-09-23 12:14:30');
INSERT INTO `topics` VALUES ('45', 'Aut rerum laborum eius mollitia sed.', 'Excepturi est voluptatem rerum. Cum minus id tenetur excepturi et quam deserunt qui. Impedit consequuntur ipsa qui unde cupiditate. Id dicta saepe et sapiente dolorem debitis distinctio.', '10', '1', '0', '0', '0', '0', 'Aut rerum laborum eius mollitia sed.', null, '2018-09-03 03:34:07', '2018-09-12 02:12:51');
INSERT INTO `topics` VALUES ('46', 'Illum at sed et ab vel repudiandae repudiandae.', 'Et sint assumenda aut expedita. Doloremque dolor asperiores rerum est. Corrupti ut quo velit accusantium deleniti. Vel praesentium sit magnam quae dolores voluptas eum.', '12', '2', '0', '0', '0', '0', 'Illum at sed et ab vel repudiandae repudiandae.', null, '2018-09-14 23:51:56', '2018-09-19 14:59:36');
INSERT INTO `topics` VALUES ('47', 'Eveniet sed atque ea placeat.', 'Quia labore et ratione qui. Nisi veritatis sapiente corporis nisi. Sapiente in aut consequuntur aspernatur saepe sed voluptatem.', '1', '4', '0', '0', '0', '0', 'Eveniet sed atque ea placeat.', null, '2018-09-16 14:07:48', '2018-09-20 08:36:23');
INSERT INTO `topics` VALUES ('48', 'Quibusdam qui impedit quibusdam perspiciatis.', 'Aperiam placeat voluptate quod qui quas. Aut laudantium enim accusamus eum est voluptas dignissimos.', '10', '2', '0', '0', '0', '0', 'Quibusdam qui impedit quibusdam perspiciatis.', null, '2018-08-27 21:09:40', '2018-09-14 11:46:57');
INSERT INTO `topics` VALUES ('49', 'Delectus et officia voluptate officia ipsum et.', 'Soluta iste iste fuga quis. Et autem cum voluptatem. Iure quisquam accusantium velit aperiam atque asperiores. Quis officia quidem velit doloribus. Temporibus deserunt quo quasi rerum.', '8', '2', '0', '0', '0', '0', 'Delectus et officia voluptate officia ipsum et.', null, '2018-09-03 01:50:14', '2018-09-09 13:20:52');
INSERT INTO `topics` VALUES ('50', 'Aut et asperiores et molestiae error in.', 'Et autem iusto aliquam. Error doloribus ex autem quo ex neque quia. Quia cum nihil esse rerum est.', '4', '1', '0', '0', '0', '0', 'Aut et asperiores et molestiae error in.', null, '2018-08-30 04:58:14', '2018-09-12 20:58:09');
INSERT INTO `topics` VALUES ('51', 'Doloribus autem qui beatae iste.', 'Similique ea deleniti ea velit occaecati sit voluptatem. Voluptatibus iusto aliquid et in et minima.', '6', '3', '0', '0', '0', '0', 'Doloribus autem qui beatae iste.', null, '2018-08-30 19:24:31', '2018-09-04 21:28:34');
INSERT INTO `topics` VALUES ('52', 'Magnam a consequatur illum quae.', 'Nesciunt nostrum nisi aspernatur minus et dolorem et. Rerum et quisquam nesciunt voluptates veritatis molestiae voluptas. Quia quia libero ut sit eos. Eaque rem voluptatem dolorem ut aut sapiente.', '12', '1', '0', '0', '0', '0', 'Magnam a consequatur illum quae.', null, '2018-08-30 02:42:54', '2018-09-01 14:57:48');
INSERT INTO `topics` VALUES ('53', 'Iste vitae ipsa voluptas dolor dolorum aliquid quia molestiae.', 'Eligendi consequatur esse quia sit et dolores corrupti. Officia soluta esse debitis voluptates. Qui consequuntur corporis laboriosam id sint quaerat et iure. Delectus accusamus dolor eligendi natus.', '4', '1', '0', '0', '0', '0', 'Iste vitae ipsa voluptas dolor dolorum aliquid quia molestiae.', null, '2018-09-09 14:25:47', '2018-09-21 22:45:37');
INSERT INTO `topics` VALUES ('54', 'Aperiam qui dolores sit mollitia corrupti aut.', 'Incidunt ullam ut iusto nisi nesciunt. Inventore saepe doloribus consequuntur eveniet rerum quisquam nulla. Occaecati quaerat dolores quaerat sit quo praesentium.', '12', '4', '0', '0', '0', '0', 'Aperiam qui dolores sit mollitia corrupti aut.', null, '2018-09-12 07:06:59', '2018-09-15 03:46:41');
INSERT INTO `topics` VALUES ('55', 'Et voluptas fugit nihil delectus nisi.', 'A officiis rerum placeat qui voluptatem. Quia soluta fuga enim.', '6', '1', '0', '0', '0', '0', 'Et voluptas fugit nihil delectus nisi.', null, '2018-08-30 18:39:07', '2018-09-09 20:34:52');
INSERT INTO `topics` VALUES ('56', 'Assumenda similique dolorum nulla voluptatibus sequi et.', 'Et eaque qui qui provident neque saepe. Libero illo velit aperiam ut optio dolorem. Numquam modi eligendi ipsum voluptatibus. Et est est quos eum exercitationem qui porro.', '11', '2', '0', '0', '0', '0', 'Assumenda similique dolorum nulla voluptatibus sequi et.', null, '2018-08-30 07:02:20', '2018-08-30 15:37:23');
INSERT INTO `topics` VALUES ('57', 'Consectetur omnis occaecati deserunt expedita eos omnis.', 'Optio harum fuga nulla mollitia ut accusamus. Omnis omnis voluptates tenetur voluptatem. Repudiandae adipisci facilis eius ut esse et quo.', '7', '3', '0', '0', '0', '0', 'Consectetur omnis occaecati deserunt expedita eos omnis.', null, '2018-09-06 02:10:31', '2018-09-12 02:49:22');
INSERT INTO `topics` VALUES ('58', 'Deleniti qui eum hic ea ut.', 'Maxime dolor hic ratione consequatur optio omnis. Quo corrupti voluptate ipsum similique quia molestias. Qui labore commodi dolorum dolorem autem.', '5', '1', '0', '0', '0', '0', 'Deleniti qui eum hic ea ut.', null, '2018-09-04 08:59:39', '2018-09-11 13:35:51');
INSERT INTO `topics` VALUES ('59', 'Voluptates dolores necessitatibus quia.', 'Quaerat ipsam temporibus doloremque rerum deserunt soluta. Voluptatem occaecati et error ea sapiente ut qui. Odio adipisci distinctio voluptates autem ut nam.', '10', '4', '0', '0', '0', '0', 'Voluptates dolores necessitatibus quia.', null, '2018-08-27 18:54:18', '2018-09-09 15:37:36');
INSERT INTO `topics` VALUES ('60', 'Vel ea a eligendi rerum quae et.', 'Quo quod et doloribus. Nulla eius explicabo ipsum sint iure molestias sed. Sequi voluptatem dolorum nesciunt sit.', '3', '3', '0', '0', '0', '0', 'Vel ea a eligendi rerum quae et.', null, '2018-09-12 17:52:19', '2018-09-26 10:39:52');
INSERT INTO `topics` VALUES ('61', 'Fuga earum consectetur ducimus architecto.', 'Esse voluptatem commodi est. Dolor sed expedita aperiam temporibus quae. Qui maiores aut nisi omnis sit deleniti qui nisi. Sit voluptatem unde voluptate exercitationem id amet ratione deserunt.', '1', '2', '0', '0', '0', '0', 'Fuga earum consectetur ducimus architecto.', null, '2018-09-12 14:48:42', '2018-09-19 19:03:20');
INSERT INTO `topics` VALUES ('62', 'Rem aspernatur eligendi inventore in in.', 'Sed sed praesentium voluptates assumenda. Possimus deleniti ut ullam quia. Nesciunt est mollitia aut. Fuga veniam et est.', '5', '2', '0', '0', '0', '0', 'Rem aspernatur eligendi inventore in in.', null, '2018-09-02 10:39:44', '2018-09-19 11:57:26');
INSERT INTO `topics` VALUES ('63', 'Nulla quibusdam quisquam consequuntur culpa perspiciatis qui doloremque non.', 'Molestias itaque tempore dolores voluptas non. Earum earum dolorem voluptatem veniam sunt expedita dolorum. Rerum ut exercitationem dicta eum facilis. Voluptas dolorem esse non error.', '2', '3', '0', '0', '0', '0', 'Nulla quibusdam quisquam consequuntur culpa perspiciatis qui doloremque non.', null, '2018-09-16 12:32:11', '2018-09-19 11:29:40');
INSERT INTO `topics` VALUES ('64', 'Cumque architecto et sint laudantium quas non.', 'Fugit quisquam nostrum autem cumque non quia. Est velit voluptates adipisci non sapiente. Quaerat hic ipsa tenetur sunt aspernatur nobis.', '4', '4', '0', '0', '0', '0', 'Cumque architecto et sint laudantium quas non.', null, '2018-08-29 18:47:25', '2018-09-02 11:13:39');
INSERT INTO `topics` VALUES ('65', 'Aut veniam vel in deleniti et a porro.', 'Optio ut enim qui ut expedita. Non vitae sed qui nam praesentium molestiae et quis. Deleniti repudiandae facilis maiores sit ab ea distinctio. Est eos hic assumenda est modi.', '1', '1', '0', '0', '0', '0', 'Aut veniam vel in deleniti et a porro.', null, '2018-09-05 08:13:36', '2018-09-15 04:08:03');
INSERT INTO `topics` VALUES ('66', 'Provident dolore enim iusto deserunt quam qui et.', 'Enim sed eius aliquam culpa. Tempore id consequatur quia illo corporis. Nulla est distinctio debitis magnam fugiat ipsum. Quia aut repellendus sint et est eligendi vero.', '10', '4', '0', '0', '0', '0', 'Provident dolore enim iusto deserunt quam qui et.', null, '2018-08-31 10:17:31', '2018-09-02 21:46:44');
INSERT INTO `topics` VALUES ('67', 'Ratione commodi veritatis commodi.', 'Est sed quia autem sequi et. Nam facere adipisci pariatur asperiores et nihil dolorum illum. Quis quasi est necessitatibus porro. Sunt delectus numquam voluptatem illum in.', '5', '1', '0', '0', '0', '0', 'Ratione commodi veritatis commodi.', null, '2018-08-28 10:03:05', '2018-09-01 19:06:25');
INSERT INTO `topics` VALUES ('68', 'Unde tenetur quis voluptas esse eligendi.', 'Iusto cupiditate ratione consectetur eligendi aspernatur. Error eos dolore id. Veniam ullam rerum illo eius. Et libero nulla eaque vitae.', '3', '4', '0', '0', '0', '0', 'Unde tenetur quis voluptas esse eligendi.', null, '2018-09-02 18:58:21', '2018-09-06 03:04:37');
INSERT INTO `topics` VALUES ('69', 'Dolor voluptate debitis et eos et eos laudantium eum.', 'Repellat ipsum ut a. Vitae tempore quisquam quos occaecati ut quasi perferendis. Amet facere temporibus ut dolorem et unde tenetur. Est corporis et dolorem reiciendis.', '4', '2', '0', '0', '0', '0', 'Dolor voluptate debitis et eos et eos laudantium eum.', null, '2018-08-30 07:37:59', '2018-09-01 03:28:26');
INSERT INTO `topics` VALUES ('70', 'Saepe dolor ut delectus quaerat.', 'Est molestiae molestiae debitis aliquid aliquam repellendus. Sed eos sit velit quia molestiae molestiae. Et nostrum quis tempore tempore sed rerum. Repellendus esse voluptas facere.', '5', '1', '0', '0', '0', '0', 'Saepe dolor ut delectus quaerat.', null, '2018-08-30 03:02:03', '2018-09-01 09:14:47');
INSERT INTO `topics` VALUES ('71', 'Molestias ducimus dicta nostrum rerum consequuntur ut.', 'Ad tempora reprehenderit corrupti asperiores non odio. Velit sit qui quas ratione rerum. Officia et suscipit maiores enim.', '9', '1', '0', '0', '0', '0', 'Molestias ducimus dicta nostrum rerum consequuntur ut.', null, '2018-09-04 03:02:52', '2018-09-12 15:23:28');
INSERT INTO `topics` VALUES ('72', 'Fugit dolores sunt et dolores nesciunt porro.', 'Blanditiis consequuntur nulla possimus nostrum velit rerum. Possimus modi labore occaecati dolor et vitae odio. Quidem fugiat et sequi possimus id quidem ut.', '3', '3', '0', '0', '0', '0', 'Fugit dolores sunt et dolores nesciunt porro.', null, '2018-09-17 00:38:06', '2018-09-21 20:44:51');
INSERT INTO `topics` VALUES ('73', 'Fuga non facere adipisci asperiores optio sint vitae.', 'Maxime eligendi odit dolor neque. Modi in ut deleniti assumenda. Quibusdam porro consequatur consequuntur pariatur. Ut nam deserunt esse est ex impedit.', '6', '1', '0', '0', '0', '0', 'Fuga non facere adipisci asperiores optio sint vitae.', null, '2018-09-06 21:29:03', '2018-09-12 09:33:56');
INSERT INTO `topics` VALUES ('74', 'Laudantium ad laudantium quae possimus.', 'Adipisci aut natus dolorem vel recusandae id. Harum dolorem aut iusto et ullam laudantium. Quae et quia fuga aut. Facilis nihil ut sapiente molestiae.', '8', '2', '0', '0', '0', '0', 'Laudantium ad laudantium quae possimus.', null, '2018-08-28 13:31:36', '2018-09-06 00:28:25');
INSERT INTO `topics` VALUES ('75', 'Magnam voluptatem delectus quidem et.', 'Id libero dolorum ipsum reiciendis. Et laboriosam et veritatis enim suscipit eum voluptas vero. Et quas rerum quis aut omnis quod. Eum quo rerum quis.', '3', '1', '0', '0', '0', '0', 'Magnam voluptatem delectus quidem et.', null, '2018-09-01 03:37:01', '2018-09-08 19:10:47');
INSERT INTO `topics` VALUES ('76', 'Sapiente aut qui asperiores animi ad.', 'Quod deleniti corrupti tempora. Est vel officia officia autem eius consequuntur. Eveniet consectetur illo officiis nihil sunt asperiores.', '1', '4', '0', '0', '0', '0', 'Sapiente aut qui asperiores animi ad.', null, '2018-09-14 10:06:02', '2018-09-22 17:58:45');
INSERT INTO `topics` VALUES ('77', 'Facilis eius ea quam velit nisi accusamus.', 'Qui quasi dolore soluta minima sint omnis soluta. Omnis voluptas tempore explicabo nulla repellendus. Non non quia sequi quos a reiciendis vel. Eius quaerat repellat accusamus quisquam.', '11', '3', '0', '0', '0', '0', 'Facilis eius ea quam velit nisi accusamus.', null, '2018-08-28 04:20:55', '2018-09-19 05:22:28');
INSERT INTO `topics` VALUES ('78', 'Sed autem et sint necessitatibus laudantium dolor eligendi et.', 'Et aperiam assumenda quo sapiente veritatis voluptates pariatur assumenda. Voluptatem deleniti non dolorem nihil. Consequuntur saepe quia beatae et.', '1', '3', '0', '0', '0', '0', 'Sed autem et sint necessitatibus laudantium dolor eligendi et.', null, '2018-09-02 02:02:32', '2018-09-03 14:40:25');
INSERT INTO `topics` VALUES ('79', 'Dignissimos assumenda deleniti et possimus voluptas illum.', 'Libero nemo sunt qui praesentium totam. Natus ut et qui velit quia eum sint vitae. Quia debitis sed aut non totam pariatur qui.', '11', '1', '0', '0', '0', '0', 'Dignissimos assumenda deleniti et possimus voluptas illum.', null, '2018-08-28 07:27:16', '2018-09-09 12:54:41');
INSERT INTO `topics` VALUES ('80', 'Labore deleniti iusto sunt veniam facere officiis fugit.', 'Non autem dolorum voluptas praesentium quaerat qui debitis repellat. Quidem consequatur est soluta nihil cumque quis perferendis. Harum corporis laborum at porro sunt quia qui.', '2', '1', '0', '0', '0', '0', 'Labore deleniti iusto sunt veniam facere officiis fugit.', null, '2018-09-06 01:15:59', '2018-09-14 04:19:11');
INSERT INTO `topics` VALUES ('81', 'Non fuga recusandae molestias at sit placeat.', 'Quasi quod et assumenda incidunt fugiat et. Provident nemo ut aut dolorem necessitatibus nobis. Sed sit accusamus vitae in nihil enim nihil.', '2', '1', '0', '0', '0', '0', 'Non fuga recusandae molestias at sit placeat.', null, '2018-09-03 15:07:53', '2018-09-27 16:58:20');
INSERT INTO `topics` VALUES ('82', 'Provident ipsum corporis voluptatum hic sapiente ab.', 'Molestiae provident qui odit quibusdam eos enim et. Voluptas quos laudantium voluptates fuga et necessitatibus vitae. Aut iure et rem non ipsa. Officiis quam voluptas ut quidem voluptas.', '1', '1', '0', '0', '0', '0', 'Provident ipsum corporis voluptatum hic sapiente ab.', null, '2018-08-27 20:20:03', '2018-08-27 20:27:25');
INSERT INTO `topics` VALUES ('83', 'Nihil quae quam omnis doloremque.', 'Voluptatem distinctio voluptatem sit porro. Minus est beatae aut maxime. Iusto sit consequatur sit nihil.', '6', '2', '0', '0', '0', '0', 'Nihil quae quam omnis doloremque.', null, '2018-09-12 10:53:26', '2018-09-24 18:31:54');
INSERT INTO `topics` VALUES ('84', 'Mollitia qui vel officiis harum.', 'Sapiente qui quia qui quo omnis unde aut. Aliquam delectus perferendis enim voluptate. Corporis dolorum atque aliquid omnis.', '4', '3', '0', '0', '0', '0', 'Mollitia qui vel officiis harum.', null, '2018-08-28 14:01:49', '2018-08-31 22:41:42');
INSERT INTO `topics` VALUES ('85', 'Voluptas voluptas quaerat et minus laudantium ut quia.', 'Impedit iste et porro omnis. Dolorem quibusdam asperiores reiciendis illum et quos. Aspernatur optio voluptas veritatis iusto nostrum.', '1', '3', '0', '0', '0', '0', 'Voluptas voluptas quaerat et minus laudantium ut quia.', null, '2018-09-01 11:00:39', '2018-09-05 14:18:38');
INSERT INTO `topics` VALUES ('86', 'Rerum quidem aliquam facilis ea expedita nisi qui facere.', 'Explicabo voluptate qui harum quaerat non quia placeat. Est cum enim minus. Nihil corporis neque et asperiores sed.', '10', '1', '0', '0', '0', '0', 'Rerum quidem aliquam facilis ea expedita nisi qui facere.', null, '2018-08-27 19:18:04', '2018-08-28 11:07:45');
INSERT INTO `topics` VALUES ('87', 'Laboriosam eum provident qui hic odit ad in.', 'Iste repudiandae rerum est omnis et est alias. Animi ratione odit architecto possimus aliquid voluptatem. Molestiae fuga laboriosam aspernatur et et similique id. Dolor enim iure suscipit eligendi.', '10', '3', '0', '0', '0', '0', 'Laboriosam eum provident qui hic odit ad in.', null, '2018-09-07 12:00:38', '2018-09-22 04:54:42');
INSERT INTO `topics` VALUES ('88', 'Rerum molestiae cupiditate nesciunt ex sit aut minima.', 'Eum voluptatem totam quia. Sequi voluptas et quia nihil. Minus dolores labore porro non suscipit consequatur. Suscipit alias voluptates hic dignissimos dolores saepe.', '7', '1', '0', '0', '0', '0', 'Rerum molestiae cupiditate nesciunt ex sit aut minima.', null, '2018-08-28 13:45:06', '2018-09-02 10:09:32');
INSERT INTO `topics` VALUES ('89', 'Non consequatur esse autem et odio et autem.', 'Iste soluta fugit assumenda dolores praesentium. Sequi adipisci odit eum aperiam sapiente et. Accusamus excepturi nobis quia est accusantium cupiditate.', '3', '1', '0', '0', '0', '0', 'Non consequatur esse autem et odio et autem.', null, '2018-08-27 17:52:52', '2018-08-27 22:19:05');
INSERT INTO `topics` VALUES ('90', 'Commodi illum sint non libero molestiae ad laudantium.', 'Voluptates similique ad voluptate autem quam. Maxime quia a hic optio atque et. Aliquid voluptas sunt aut maiores voluptas.', '8', '4', '0', '0', '0', '0', 'Commodi illum sint non libero molestiae ad laudantium.', null, '2018-08-30 17:14:42', '2018-09-10 00:19:38');
INSERT INTO `topics` VALUES ('91', 'Quae dolores est velit ex.', 'Rem qui sint itaque nisi. Accusamus et placeat autem illo qui. Blanditiis sunt aut praesentium et voluptatem dolores aut. Repudiandae id hic dolore laborum.', '6', '3', '0', '0', '0', '0', 'Quae dolores est velit ex.', null, '2018-09-14 15:54:49', '2018-09-25 17:54:29');
INSERT INTO `topics` VALUES ('92', 'Maxime laborum et nostrum eaque sit.', 'Numquam facere maiores eveniet et deleniti occaecati ducimus voluptatem. Doloribus est non itaque placeat harum. Harum ipsa ab dolores facilis.', '9', '3', '0', '0', '0', '0', 'Maxime laborum et nostrum eaque sit.', null, '2018-08-27 19:20:20', '2018-09-21 13:22:58');
INSERT INTO `topics` VALUES ('93', 'Dolore fuga eligendi ea voluptas dolores ea soluta.', 'Facere nostrum rem sed eveniet tempora ad. Pariatur autem dolores sunt.', '6', '3', '0', '0', '0', '0', 'Dolore fuga eligendi ea voluptas dolores ea soluta.', null, '2018-08-31 04:52:40', '2018-08-31 10:04:42');
INSERT INTO `topics` VALUES ('94', 'Amet ea qui voluptatem omnis exercitationem aut unde sed.', 'Eveniet qui ipsum eaque enim iusto quia perspiciatis. Molestias rerum voluptatem aut et nihil.', '12', '1', '0', '0', '0', '0', 'Amet ea qui voluptatem omnis exercitationem aut unde sed.', null, '2018-09-01 13:20:09', '2018-09-06 20:47:03');
INSERT INTO `topics` VALUES ('95', 'At quas dignissimos pariatur omnis.', 'Sit commodi quibusdam accusamus quaerat. Sapiente deleniti id sunt dolor quidem. Error aut esse quasi eveniet laborum perspiciatis. Omnis nobis similique minus eum error quidem ea.', '7', '1', '0', '0', '0', '0', 'At quas dignissimos pariatur omnis.', null, '2018-09-14 02:52:32', '2018-09-20 03:45:24');
INSERT INTO `topics` VALUES ('96', 'Unde voluptas ea ab aut veniam qui id.', 'Minima qui pariatur officiis impedit ex. Tenetur vitae nulla eius corporis minus. Nesciunt a suscipit facilis quisquam voluptas. Dolor laborum nihil suscipit et ab deserunt minima.', '4', '3', '0', '0', '0', '0', 'Unde voluptas ea ab aut veniam qui id.', null, '2018-09-21 12:31:13', '2018-09-27 03:16:29');
INSERT INTO `topics` VALUES ('97', 'Explicabo fugiat beatae esse modi magnam.', 'Magni sed necessitatibus accusantium quia. Facilis modi cupiditate animi et sequi voluptatem ea. Recusandae tempore est cum debitis. Ut ipsa necessitatibus deserunt enim.', '6', '2', '0', '0', '0', '0', 'Explicabo fugiat beatae esse modi magnam.', null, '2018-09-05 01:38:11', '2018-09-24 01:09:40');
INSERT INTO `topics` VALUES ('98', 'Totam quod ratione sunt vitae similique.', 'Reprehenderit iste voluptates dolor aut. Accusamus molestiae ut iste quos ad. Eos reiciendis pariatur et aut accusamus. Nihil ex a est autem.', '11', '2', '0', '0', '0', '0', 'Totam quod ratione sunt vitae similique.', null, '2018-09-23 00:32:16', '2018-09-24 07:10:24');
INSERT INTO `topics` VALUES ('99', 'Voluptatum quam beatae reprehenderit est minus occaecati soluta.', 'Doloribus velit optio voluptas iure ut perspiciatis. Quia quia quasi qui et quia quo at. Et dolores ea explicabo similique. Dolorum ut rerum porro quae minima eum.', '9', '1', '0', '0', '0', '0', 'Voluptatum quam beatae reprehenderit est minus occaecati soluta.', null, '2018-09-03 19:08:59', '2018-09-04 06:40:45');
INSERT INTO `topics` VALUES ('100', 'Laborum nihil quas non aut.', 'Consequatur asperiores cumque natus saepe dolorem. Alias dolores nostrum facere cumque suscipit.', '4', '1', '0', '0', '0', '0', 'Laborum nihil quas non aut.', null, '2018-09-02 20:58:39', '2018-09-12 20:38:01');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Summer', 'summer@yousails.com', '$2y$10$Sr/PxiHpXtFBkn.DbsGCDes6e7D/qDexWDHfGEU2ASh5xGND8F8mq', 'FHu9kHv6r9LC9lAmFFaRb0rOJ8Z3fKCpwW1mnDRRgGCJmObWvCebuvngOSTJ', '111', 'http://mylaravel.com/uploads/images/avatars/201809/27/2_1538034844_D5d1gs1YiX.jpg', '2018-09-27 12:00:41', '2018-09-27 17:26:16');
INSERT INTO `users` VALUES ('2', 'admin', '898885242@qq.com', '$2y$10$hQ5NfnL/Nzml3ue1GT0BO.z/1G8j.rm.etpLNVE2QnWljKvdXGwhK', 'dEdwITcIaL6miwXhY2tf2rdfOn7X8NVOL5IN3O6YtJLPDFUxG0Tnb3KZVyUI', '顶顶顶顶顶顶顶顶顶顶', 'http://mylaravel.com/uploads/images/avatars/201809/27/2_1538033657_LfGZw9aQpv.jpg', '2018-09-27 13:54:06', '2018-09-27 15:54:04');
INSERT INTO `users` VALUES ('3', 'Lucio Little', 'xmueller@example.net', '$2y$10$GQlIR36vvF0YExYcZ1Ap8OTpPCDyquYUl3.JCOwxbO0pwPC8qD.xu', 'EcHfoIYFe6', 'Ad aliquam inventore quo nesciunt eveniet.', 'http://mylaravel.com/uploads/images/avatars/201809/27/2_1538033657_LfGZw9aQpv.jpg', '2018-09-27 17:26:16', '2018-09-27 17:26:16');
INSERT INTO `users` VALUES ('4', 'Marcos Rice', 'kling.darian@example.net', '$2y$10$GQlIR36vvF0YExYcZ1Ap8OTpPCDyquYUl3.JCOwxbO0pwPC8qD.xu', '31hLbtWwEw', 'In quo hic exercitationem delectus.', 'http://mylaravel.com/uploads/images/avatars/201809/27/2_1538033657_LfGZw9aQpv.jpg', '2018-09-27 17:26:16', '2018-09-27 17:26:16');
INSERT INTO `users` VALUES ('5', 'Mr. Ryann Buckridge', 'sporer.krista@example.org', '$2y$10$GQlIR36vvF0YExYcZ1Ap8OTpPCDyquYUl3.JCOwxbO0pwPC8qD.xu', 'D927zBYw3z', 'Consequatur soluta delectus est.', 'http://mylaravel.com/uploads/images/avatars/201809/27/2_1538033657_LfGZw9aQpv.jpg', '2018-09-27 17:26:16', '2018-09-27 17:26:16');
INSERT INTO `users` VALUES ('6', 'Doris Ferry', 'floy63@example.net', '$2y$10$GQlIR36vvF0YExYcZ1Ap8OTpPCDyquYUl3.JCOwxbO0pwPC8qD.xu', 'AyjvvUsnho', 'Accusamus sed amet est iusto.', 'http://mylaravel.com/uploads/images/avatars/201809/27/2_1538033657_LfGZw9aQpv.jpg', '2018-09-27 17:26:16', '2018-09-27 17:26:16');
INSERT INTO `users` VALUES ('7', 'Nona Eichmann', 'jones.ora@example.net', '$2y$10$GQlIR36vvF0YExYcZ1Ap8OTpPCDyquYUl3.JCOwxbO0pwPC8qD.xu', 'HT9dwVn6ob', 'Incidunt pariatur et officia sint ut beatae sed.', 'http://mylaravel.com/uploads/images/avatars/201809/27/2_1538033657_LfGZw9aQpv.jpg', '2018-09-27 17:26:16', '2018-09-27 17:26:16');
INSERT INTO `users` VALUES ('8', 'Prudence Emard', 'claud.sanford@example.org', '$2y$10$GQlIR36vvF0YExYcZ1Ap8OTpPCDyquYUl3.JCOwxbO0pwPC8qD.xu', '3mMiXI2Y6h', 'Amet aliquam iure ea magnam aliquid in.', 'http://mylaravel.com/uploads/images/avatars/201809/27/2_1538034179_8GJML3sZh9.jpg', '2018-09-27 17:26:16', '2018-09-27 17:26:16');
INSERT INTO `users` VALUES ('9', 'Rashad Schowalter', 'mnicolas@example.com', '$2y$10$GQlIR36vvF0YExYcZ1Ap8OTpPCDyquYUl3.JCOwxbO0pwPC8qD.xu', '63bEE3Zti7', 'Vel harum et dolorem dignissimos aperiam esse.', 'http://mylaravel.com/uploads/images/avatars/201809/27/2_1538033657_LfGZw9aQpv.jpg', '2018-09-27 17:26:16', '2018-09-27 17:26:16');
INSERT INTO `users` VALUES ('10', 'Ashly Runolfsdottir IV', 'jones.george@example.net', '$2y$10$GQlIR36vvF0YExYcZ1Ap8OTpPCDyquYUl3.JCOwxbO0pwPC8qD.xu', 'kWaAVS23vF', 'Delectus dolorem veniam cum dolor est.', 'http://mylaravel.com/uploads/images/avatars/201809/27/2_1538034179_8GJML3sZh9.jpg', '2018-09-27 17:26:16', '2018-09-27 17:26:16');
INSERT INTO `users` VALUES ('11', 'Trisha Gutmann MD', 'ralph.klein@example.com', '$2y$10$GQlIR36vvF0YExYcZ1Ap8OTpPCDyquYUl3.JCOwxbO0pwPC8qD.xu', 'MdW44wbE3J', 'Ullam distinctio molestiae vitae rem.', 'http://mylaravel.com/uploads/images/avatars/201809/27/2_1538033657_LfGZw9aQpv.jpg', '2018-09-27 17:26:16', '2018-09-27 17:26:16');
INSERT INTO `users` VALUES ('12', 'Junior Windler', 'pollich.chasity@example.org', '$2y$10$GQlIR36vvF0YExYcZ1Ap8OTpPCDyquYUl3.JCOwxbO0pwPC8qD.xu', 'Eh79jP2zwP', 'Et id voluptas autem.', 'http://mylaravel.com/uploads/images/avatars/201809/27/2_1538034179_8GJML3sZh9.jpg', '2018-09-27 17:26:16', '2018-09-27 17:26:16');
