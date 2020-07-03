/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.0.10-root-root
 Source Server Type    : MySQL
 Source Server Version : 50640
 Source Host           : 192.168.0.10:3306
 Source Schema         : gowalker

 Target Server Type    : MySQL
 Target Server Version : 50640
 File Encoding         : 65001

 Date: 03/07/2020 12:20:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for js_file
-- ----------------------------
DROP TABLE IF EXISTS `js_file`;
CREATE TABLE `js_file`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pkg_id` bigint(20) NULL DEFAULT NULL,
  `etag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `num_extra_files` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UQE_js_file_pkg_id_etag`(`pkg_id`, `etag`) USING BTREE,
  INDEX `IDX_js_file_pkg_id`(`pkg_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of js_file
-- ----------------------------
INSERT INTO `js_file` VALUES (1, 2, 'dd150176c3cc49da68c8179f740eadc79404d351', 1, 0);

-- ----------------------------
-- Table structure for pkg_info
-- ----------------------------
DROP TABLE IF EXISTS `pkg_info`;
CREATE TABLE `pkg_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `import_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `etag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `project_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `view_dir_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `synopsis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_cmd` tinyint(1) NULL DEFAULT NULL,
  `is_cgo` tinyint(1) NULL DEFAULT NULL,
  `is_go_repo` tinyint(1) NULL DEFAULT NULL,
  `is_go_subrepo` tinyint(1) NULL DEFAULT NULL,
  `is_gae_repo` tinyint(1) NULL DEFAULT NULL,
  `pkg_ver` int(11) NULL DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `views` bigint(20) NULL DEFAULT NULL,
  `stars` bigint(20) NULL DEFAULT NULL,
  `import_num` bigint(20) NULL DEFAULT NULL,
  `import_ids` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `import_paths` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ref_num` bigint(20) NULL DEFAULT NULL,
  `ref_ids` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `subdirs` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `last_viewed` bigint(20) NOT NULL DEFAULT 0,
  `created` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UQE_pkg_info_import_path`(`import_path`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pkg_ref
-- ----------------------------
DROP TABLE IF EXISTS `pkg_ref`;
CREATE TABLE `pkg_ref`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `import_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ref_num` bigint(20) NULL DEFAULT NULL,
  `ref_ids` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UQE_pkg_ref_import_path`(`import_path`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
