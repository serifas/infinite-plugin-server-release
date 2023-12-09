-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.32 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for shine
CREATE DATABASE IF NOT EXISTS `shine` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shine`;

-- Dumping structure for table shine.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `banned` varchar(50) DEFAULT NULL,
  `banner` varchar(50) DEFAULT NULL,
  `verified` varchar(50) DEFAULT NULL,
  `permissions` int DEFAULT NULL,
  `strikes` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table shine.accounts: ~0 rows (approximately)
INSERT INTO `accounts` (`ID`, `username`, `password`, `email`, `banned`, `banner`, `verified`, `permissions`, `strikes`) VALUES
	(25, 'Omie', 'AQAAAAEAACcQAAAAEAxrAVieqciPus2oY02+zAM87Z96BHZ/4wMGz1RVzl8CepNWhTH2kI/vpTM7txvXJw==', NULL, '0', '0', '1', 0, 0);

-- Dumping structure for table shine.account_permissions
CREATE TABLE IF NOT EXISTS `account_permissions` (
  `accID` int DEFAULT NULL,
  `can_speak` int DEFAULT NULL,
  `can_emote` int DEFAULT NULL,
  `can_move` int DEFAULT NULL,
  `can_announce` int DEFAULT NULL,
  `can_mute` int DEFAULT NULL,
  `can_invite` int DEFAULT NULL,
  `can_kick` int DEFAULT NULL,
  `can_ban` int DEFAULT NULL,
  `can_use_assets` int DEFAULT NULL,
  `can_post_assets` int DEFAULT NULL,
  `can_log_in` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table shine.account_permissions: ~0 rows (approximately)
INSERT INTO `account_permissions` (`accID`, `can_speak`, `can_emote`, `can_move`, `can_announce`, `can_mute`, `can_invite`, `can_kick`, `can_ban`, `can_use_assets`, `can_post_assets`, `can_log_in`) VALUES
	(25, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- Dumping structure for table shine.account_verification_keys
CREATE TABLE IF NOT EXISTS `account_verification_keys` (
  `ID` int DEFAULT NULL,
  `verification_key` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table shine.account_verification_keys: ~0 rows (approximately)

-- Dumping structure for table shine.dice_systems
CREATE TABLE IF NOT EXISTS `dice_systems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `system_id` int DEFAULT NULL,
  `dice_sides` int DEFAULT NULL,
  `min_success` int DEFAULT NULL,
  `max_failure` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table shine.dice_systems: ~0 rows (approximately)

-- Dumping structure for table shine.profiles
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` int DEFAULT NULL,
  `player_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `player_world` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table shine.profiles: ~2 rows (approximately)
INSERT INTO `profiles` (`id`, `account_id`, `player_name`, `player_world`) VALUES
	(46, 25, 'Lynie Thea', 'Balmung'),
	(47, 25, 'Omie Caden', 'Balmung');

-- Dumping structure for table shine.profile_bios
CREATE TABLE IF NOT EXISTS `profile_bios` (
  `profile_id` int DEFAULT NULL,
  `avatar` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `race` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `height` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `at_first_glance` text,
  `lawful_good` int DEFAULT NULL,
  `neutral_good` int DEFAULT NULL,
  `chaotic_good` int DEFAULT NULL,
  `lawful_neutral` int DEFAULT NULL,
  `true_neutral` int DEFAULT NULL,
  `chaotic_neutral` int DEFAULT NULL,
  `lawful_evil` int DEFAULT NULL,
  `neutral_evil` int DEFAULT NULL,
  `chaotic_evil` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table shine.profile_bios: ~2 rows (approximately)
INSERT INTO `profile_bios` (`profile_id`, `avatar`, `name`, `race`, `gender`, `age`, `height`, `weight`, `at_first_glance`, `lawful_good`, `neutral_good`, `chaotic_good`, `lawful_neutral`, `true_neutral`, `chaotic_neutral`, `lawful_evil`, `neutral_evil`, `chaotic_evil`) VALUES
	(46, 'avatars/avatar_Lynie Thea_Balmung.png', 'Lynie Thea', 'Half-Nymian Fae', 'Female', 1372, '4\'\'8 Fulms', '68 Ponze', 'Smol', 4, 10, 6, 0, 0, 0, 0, 0, 0),
	(47, 'avatars/avatar_Omie Caden_Balmung.png', 'Omie', 'Hyur', 'Female', 19, '5\'\'6 Fulms', '102 Ponze', 'Smol', 1, 10, 5, 0, 0, 0, 0, 0, 0);

-- Dumping structure for table shine.profile_galleries
CREATE TABLE IF NOT EXISTS `profile_galleries` (
  `profile_id` int DEFAULT NULL,
  `galleryImagePath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `galleryThumbPath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gal_index` int DEFAULT NULL,
  `nsfw` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table shine.profile_galleries: ~0 rows (approximately)
INSERT INTO `profile_galleries` (`profile_id`, `galleryImagePath`, `galleryThumbPath`, `gal_index`, `nsfw`) VALUES
	(46, 'galleries/gallery_Lynie Thea_Balmung/gallery_Lynie Thea_Balmung_1.png', 'galleries/gallery_Lynie Thea_Balmung/gallery_Lynie Thea_Balmung_1_thumbnail.png', 1, -1),
	(46, 'galleries/gallery_Lynie Thea_Balmung/gallery_Lynie Thea_Balmung_2.png', 'galleries/gallery_Lynie Thea_Balmung/gallery_Lynie Thea_Balmung_2_thumbnail.png', 2, 1);

-- Dumping structure for table shine.profile_hooks
CREATE TABLE IF NOT EXISTS `profile_hooks` (
  `profile_id` int DEFAULT NULL,
  `hook_id` int DEFAULT NULL,
  `hook_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table shine.profile_hooks: ~4 rows (approximately)
INSERT INTO `profile_hooks` (`profile_id`, `hook_id`, `hook_content`) VALUES
	(47, 1, 'Some stupid hook'),
	(46, 1, 'st'),
	(46, 2, 'another'),
	(46, 3, 'NA');

-- Dumping structure for table shine.profile_stories
CREATE TABLE IF NOT EXISTS `profile_stories` (
  `profile_id` int DEFAULT NULL,
  `story_title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table shine.profile_stories: ~2 rows (approximately)
INSERT INTO `profile_stories` (`profile_id`, `story_title`) VALUES
	(46, 'A Faeries Tale'),
	(47, '');

-- Dumping structure for table shine.profile_story_chapters
CREATE TABLE IF NOT EXISTS `profile_story_chapters` (
  `chapter_id` int DEFAULT NULL,
  `profile_id` int DEFAULT NULL,
  `index` int DEFAULT NULL,
  `chapter_name` varchar(50) DEFAULT NULL,
  `chapter_content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table shine.profile_story_chapters: ~0 rows (approximately)
INSERT INTO `profile_story_chapters` (`chapter_id`, `profile_id`, `index`, `chapter_name`, `chapter_content`) VALUES
	(1, 46, 1, 'The Summoning', 'A hundred and twenty-eight years before the Sixth Umbral Calamity...---===---An avid Nymian Scholar by the name of Anoto studied deeply into the rituals of summoning faeries into the source, without the need to rely on the summoner to keep their presence. With no success well into his elder years, Anoto still determined to accomplish his work and cast a forbidden spell using his own aether as a sacrifice that would remain with its density in the form of a crystal, but killing him in the process. Summoning one last Fae with his last few breaths he informed her of the crystal. Telling her she would need to have it wherever she went in Eorzea.---===---The Fae married a local Nymian gem cutter, named Serifas Thea who had a love for all the beautiful geodes and crystals of the land he found.---===---But the Fae was the most beautiful thing he had ever seen. Not because of her attractive appearance but because her magnetic energetic nature pulled at his heart and would take him wherever she went.---===---Having lost her memory during the summon the gem cutter named her Phinie.---===---Phinie conceived a child that they named Japheth, who quickly died of sickness.---===---Phinie knew that she needed the crystal to survive and realised that her child had died because of not having one. Phinie fell into a deep depression.---===---As war came to Nym Serifas and Phinie tried to find refuge outside the city walls, where they lived in the hills of Outer La Noscea. Phinie was with child once more---===---and feared for the worst.---===---As the war had waged for almost a year before they returned to their home, many had been killed. The people cried as they entered the city. "Traitors! Cowards!"---===---Phinie, seeing a man rushing towards her love Serifas with a blade, quickly jumped in front of him the blade piercing her chest.---===---The man instantly arrested by Nymian guards spat on the ground as he was carried away.---===---Phinie held the dagger in as she looked to Serifas with desperation. "Do not let our child die my love." She said as she took the blade out of her chest handing it to him. Serifas held the blood-coated dagger, shaking, knowing what he had to do. He wept as he looked his love in the eyes and he cut open her belly bringing their child into the world, he held up to her mother and before she drew her last breath said: "Lynie, her name will be Lynie." She looked at her child, took the crystal and gave it to Serifas one last time speaking the words "Don\'t let it leave her side.", before she passed.');

-- Dumping structure for table shine.rulebook
CREATE TABLE IF NOT EXISTS `rulebook` (
  `pageid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pageid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table shine.rulebook: ~0 rows (approximately)

-- Dumping structure for table shine.rulebook_content
CREATE TABLE IF NOT EXISTS `rulebook_content` (
  `page_id` int NOT NULL,
  `category_title` text,
  `category_content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table shine.rulebook_content: ~0 rows (approximately)

-- Dumping structure for table shine.system_defines
CREATE TABLE IF NOT EXISTS `system_defines` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREATOR_ID` int NOT NULL DEFAULT '0',
  `NAME` varchar(50) DEFAULT NULL,
  `MAX_STATS` int DEFAULT NULL,
  `MAX_STAT_POINTS_PER_STAT` int DEFAULT NULL,
  `MAX_STAT_REDUCTION` int DEFAULT NULL,
  `MAX_REDUCTION_PER_STAT` int DEFAULT NULL,
  `DESCRIPTION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `DICE_SYSTEM` int DEFAULT NULL,
  `STAT_REDUCTION_ALLOWED` int DEFAULT NULL,
  `STAT_ALLOCATION_ALLOWED` int DEFAULT NULL,
  `SYSTEM_IMAGE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table shine.system_defines: ~0 rows (approximately)
INSERT INTO `system_defines` (`ID`, `CREATOR_ID`, `NAME`, `MAX_STATS`, `MAX_STAT_POINTS_PER_STAT`, `MAX_STAT_REDUCTION`, `MAX_REDUCTION_PER_STAT`, `DESCRIPTION`, `DICE_SYSTEM`, `STAT_REDUCTION_ALLOWED`, `STAT_ALLOCATION_ALLOWED`, `SYSTEM_IMAGE`) VALUES
	(83, 21, 'SHINE', 12, 4, 12, 2, 'A system that Shines', NULL, 1, 1, 'SHINE_21');

-- Dumping structure for table shine.system_permissions
CREATE TABLE IF NOT EXISTS `system_permissions` (
  `UserID` int DEFAULT NULL,
  `system_id` int DEFAULT NULL,
  `create_stats` int DEFAULT NULL,
  `modify_effects` int DEFAULT NULL,
  `modify_dice_rules` int DEFAULT NULL,
  `delete_profile` int DEFAULT NULL,
  `request_profile_revision` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table shine.system_permissions: ~0 rows (approximately)

-- Dumping structure for table shine.system_resources
CREATE TABLE IF NOT EXISTS `system_resources` (
  `system_id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `start_value` int DEFAULT NULL,
  `max_value` int DEFAULT NULL,
  `stat_modifier` int DEFAULT NULL,
  `stat_increment` int DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `colorR` float DEFAULT NULL,
  `colorG` float DEFAULT NULL,
  `colorB` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table shine.system_resources: ~0 rows (approximately)

-- Dumping structure for table shine.system_sheets
CREATE TABLE IF NOT EXISTS `system_sheets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `player_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `character_name` varchar(50) DEFAULT NULL,
  `avatar` varchar(50) DEFAULT NULL,
  `race` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `height` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `health` varchar(50) DEFAULT NULL,
  `senses` varchar(50) DEFAULT NULL,
  `strength` varchar(50) DEFAULT NULL,
  `hardiness` varchar(50) DEFAULT NULL,
  `intelligence` varchar(50) DEFAULT NULL,
  `nimbleness` varchar(50) DEFAULT NULL,
  `eminence` varchar(50) DEFAULT NULL,
  `ability_1` varchar(50) DEFAULT NULL,
  `ability_2` varchar(50) DEFAULT NULL,
  `ability_3` varchar(50) DEFAULT NULL,
  `ability_1_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ability_2_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ability_3_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `verification_status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Verified = 1\r\nPending Verification = 2\r\nRevision Requested = 3\r\nDeclined = 4';

-- Dumping data for table shine.system_sheets: ~0 rows (approximately)

-- Dumping structure for table shine.system_stat_types
CREATE TABLE IF NOT EXISTS `system_stat_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner_id` int NOT NULL DEFAULT '0',
  `system_id` int NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `stat_modifier` int DEFAULT NULL,
  `modifier_increment` int DEFAULT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `colorR` varchar(50) DEFAULT NULL,
  `colorG` varchar(50) DEFAULT NULL,
  `colorB` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table shine.system_stat_types: ~0 rows (approximately)
INSERT INTO `system_stat_types` (`id`, `owner_id`, `system_id`, `name`, `description`, `stat_modifier`, `modifier_increment`, `icon`, `colorR`, `colorG`, `colorB`) VALUES
	(30, 21, 83, 'Stamina', 'A stat for hp', NULL, NULL, 'iconholder', '0', '0.9820361', '1');

-- Dumping structure for table shine.user_bookmarks
CREATE TABLE IF NOT EXISTS `user_bookmarks` (
  `user_id` int DEFAULT NULL,
  `bookmarked_player_name` varchar(50) DEFAULT NULL,
  `bookmarked_player_world` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table shine.user_bookmarks: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
