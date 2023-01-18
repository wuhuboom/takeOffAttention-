/*
Navicat MySQL Data Transfer

Source Server         : ball_vm
Source Server Version : 50562
Source Host           : 192.168.101.33:3306
Source Database       : vx

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2022-08-28 20:42:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ball_admin
-- ----------------------------
DROP TABLE IF EXISTS `ball_admin`;
CREATE TABLE `ball_admin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_password` varchar(255) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `google_code` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `menu_group_id` bigint(20) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `menu_group_id` (`menu_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='后端管理账号';

-- ----------------------------
-- Records of ball_admin
-- ----------------------------
INSERT INTO `ball_admin` VALUES ('1', 'admin', 'b51c30722c0aaa05c7f12e16a82555ab', 'super_admin', '', 'FYIQBW6R7LD7Z2MNMSG7YMOKGPMUHU2A', '1', '1', '0', '1660768845499');

-- ----------------------------
-- Table structure for ball_announcement
-- ----------------------------
DROP TABLE IF EXISTS `ball_announcement`;
CREATE TABLE `ball_announcement` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '提现名称',
  `language` varchar(20) DEFAULT '0' COMMENT '语言编码',
  `status` tinyint(4) DEFAULT '1' COMMENT '1正常 2禁用',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='轮播公告';

-- ----------------------------
-- Records of ball_announcement
-- ----------------------------
INSERT INTO `ball_announcement` VALUES ('2', 'welcome,to,wofootball', 'en', '1', '0', '0');

-- ----------------------------
-- Table structure for ball_app
-- ----------------------------
DROP TABLE IF EXISTS `ball_app`;
CREATE TABLE `ball_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_type` tinyint(4) DEFAULT NULL COMMENT '会员等级',
  `app_url` varchar(255) DEFAULT NULL COMMENT '名称',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态0禁1启',
  `created_at` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `level_unique` (`app_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ball_app
-- ----------------------------
INSERT INTO `ball_app` VALUES ('1', '0', 'https://wofootball.app/wofootball1.17.apk', '1', null, null);
INSERT INTO `ball_app` VALUES ('3', '1', 'https://j3nk3.wqjhxh.com/7v9b1', '1', null, null);

-- ----------------------------
-- Table structure for ball_balance_change
-- ----------------------------
DROP TABLE IF EXISTS `ball_balance_change`;
CREATE TABLE `ball_balance_change` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '玩家id',
  `change_money` bigint(20) DEFAULT '0' COMMENT '变化金额',
  `init_money` bigint(20) DEFAULT '0' COMMENT '初始金额',
  `dned_money` bigint(20) DEFAULT NULL COMMENT '变化后的金额',
  `balance_change_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1充值 2提现 3投注 4赢 5佣金 6人工 ',
  `order_no` bigint(20) DEFAULT '0' COMMENT '订单号',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `qr` bigint(20) DEFAULT '0',
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `super_tree` text,
  `parent_id` bigint(20) DEFAULT NULL,
  `account_type` tinyint(4) DEFAULT NULL,
  `frozen_status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账变表';

-- ----------------------------
-- Records of ball_balance_change
-- ----------------------------

-- ----------------------------
-- Table structure for ball_bank
-- ----------------------------
DROP TABLE IF EXISTS `ball_bank`;
CREATE TABLE `ball_bank` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bank_cname` varchar(255) DEFAULT NULL,
  `bank_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ball_bank
-- ----------------------------
INSERT INTO `ball_bank` VALUES ('1', 'INDUSIND BANK', 'INDUSIND BANK');
INSERT INTO `ball_bank` VALUES ('2', 'CANARA BANK', 'CANARA BANK');
INSERT INTO `ball_bank` VALUES ('3', 'KOTAK MAHINDRA BANK LIMITED', 'KOTAK MAHINDRA BANK LIMITED');
INSERT INTO `ball_bank` VALUES ('4', 'UNION BANK OF INDIA', 'UNION BANK OF INDIA');
INSERT INTO `ball_bank` VALUES ('5', 'BANK OF BARODA', 'BANK OF BARODA');
INSERT INTO `ball_bank` VALUES ('6', 'BANK OF INDIA', 'BANK OF INDIA');
INSERT INTO `ball_bank` VALUES ('7', 'STATE BANK OF INDIA', 'STATE BANK OF INDIA');
INSERT INTO `ball_bank` VALUES ('8', 'INDIAN OVERSEAS BANK', 'INDIAN OVERSEAS BANK');
INSERT INTO `ball_bank` VALUES ('9', 'PUNJAB NATIONAL BANK', 'PUNJAB NATIONAL BANK');
INSERT INTO `ball_bank` VALUES ('10', 'ABHYUDAYA COOPERATIVE BANK LIMITED', 'ABHYUDAYA COOPERATIVE BANK LIMITED');
INSERT INTO `ball_bank` VALUES ('11', 'ANDHRA BANK', 'ANDHRA BANK');
INSERT INTO `ball_bank` VALUES ('12', 'CENTRAL BANK OF INDIA', 'CENTRAL BANK OF INDIA');
INSERT INTO `ball_bank` VALUES ('13', 'Ujjivan Small Finance Bank Limited', 'Ujjivan Small Finance Bank Limited');
INSERT INTO `ball_bank` VALUES ('14', 'HDFC BANK', 'HDFC BANK');
INSERT INTO `ball_bank` VALUES ('15', 'KARNATAKA BANK LIMITED', 'KARNATAKA BANK LIMITED');
INSERT INTO `ball_bank` VALUES ('16', 'BHARAT COOPERATIVE BANK MUMBAI LIMITED', 'BHARAT COOPERATIVE BANK MUMBAI LIMITED');
INSERT INTO `ball_bank` VALUES ('17', 'TAMILNAD MERCANTILE BANK LIMITED', 'TAMILNAD MERCANTILE BANK LIMITED');
INSERT INTO `ball_bank` VALUES ('18', 'UNITED BANK OF INDIA', 'UNITED BANK OF INDIA');
INSERT INTO `ball_bank` VALUES ('19', 'UCO BANK', 'UCO BANK');
INSERT INTO `ball_bank` VALUES ('20', 'AIRTEL PAYMENTS BANK LIMITED', 'AIRTEL PAYMENTS BANK LIMITED');
INSERT INTO `ball_bank` VALUES ('21', 'ICICI BANK LIMITED', 'ICICI BANK LIMITED');
INSERT INTO `ball_bank` VALUES ('22', 'AXIS BANK', 'AXIS BANK');
INSERT INTO `ball_bank` VALUES ('23', 'IDBI BANK', 'IDBI BANK');
INSERT INTO `ball_bank` VALUES ('24', 'INDIAN BANK', 'INDIAN BANK');
INSERT INTO `ball_bank` VALUES ('25', 'IDFC BANK LIMITED', 'IDFC BANK LIMITED');
INSERT INTO `ball_bank` VALUES ('26', 'KARUR VYSYA BANK', 'KARUR VYSYA BANK');
INSERT INTO `ball_bank` VALUES ('27', 'ALLAHABAD BANK', 'ALLAHABAD BANK');
INSERT INTO `ball_bank` VALUES ('28', 'BANK OF MAHARASHTRA', 'BANK OF MAHARASHTRA');
INSERT INTO `ball_bank` VALUES ('29', 'SARASWAT COOPERATIVE BANK LIMITED', 'SARASWAT COOPERATIVE BANK LIMITED');
INSERT INTO `ball_bank` VALUES ('30', 'KARNATAKA VIKAS GRAMEENA BANK', 'KARNATAKA VIKAS GRAMEENA BANK');
INSERT INTO `ball_bank` VALUES ('31', 'FEDERAL BANK', 'FEDERAL BANK');
INSERT INTO `ball_bank` VALUES ('32', 'CITY UNION BANK LIMITED', 'CITY UNION BANK LIMITED');
INSERT INTO `ball_bank` VALUES ('33', 'RAHISHAHMAD SHARFUDDIN BALEKUNDRI', 'RAHISHAHMAD SHARFUDDIN BALEKUNDRI');
INSERT INTO `ball_bank` VALUES ('34', 'YES BANK', 'YES BANK');
INSERT INTO `ball_bank` VALUES ('35', 'RBL Bank Limited', 'RBL Bank Limited');
INSERT INTO `ball_bank` VALUES ('36', 'PRADEEP KR PATI', 'PRADEEP KR PATI');
INSERT INTO `ball_bank` VALUES ('37', 'SARVESH SATYANARAYANA YADAV', 'SARVESH SATYANARAYANA YADAV');
INSERT INTO `ball_bank` VALUES ('38', 'TJSB SAHAKARI BANK LTD', 'TJSB SAHAKARI BANK LTD');
INSERT INTO `ball_bank` VALUES ('39', 'CANARA BANK', 'CANARA BANK');
INSERT INTO `ball_bank` VALUES ('40', 'KOTAK MAHINDRA BANK LIMITED', 'KOTAK MAHINDRA BANK LIMITED');
INSERT INTO `ball_bank` VALUES ('41', 'UNION BANK OF INDIA', 'UNION BANK OF INDIA');
INSERT INTO `ball_bank` VALUES ('42', 'BANK OF BARODA', 'BANK OF BARODA');
INSERT INTO `ball_bank` VALUES ('43', 'BANK OF INDIA', 'BANK OF INDIA');
INSERT INTO `ball_bank` VALUES ('44', 'STATE BANK OF INDIA', 'STATE BANK OF INDIA');
INSERT INTO `ball_bank` VALUES ('45', 'INDIAN OVERSEAS BANK', 'INDIAN OVERSEAS BANK');
INSERT INTO `ball_bank` VALUES ('46', 'PUNJAB NATIONAL BANK', 'PUNJAB NATIONAL BANK');
INSERT INTO `ball_bank` VALUES ('47', 'ABHYUDAYA COOPERATIVE BANK LIMITED', 'ABHYUDAYA COOPERATIVE BANK LIMITED');
INSERT INTO `ball_bank` VALUES ('48', 'HDFC BANK', 'HDFC BANK');
INSERT INTO `ball_bank` VALUES ('49', 'KARNATAKA BANK LIMITED', 'KARNATAKA BANK LIMITED');
INSERT INTO `ball_bank` VALUES ('50', 'UCO BANK', 'UCO BANK');
INSERT INTO `ball_bank` VALUES ('51', 'AIRTEL PAYMENTS BANK LIMITED', 'AIRTEL PAYMENTS BANK LIMITED');
INSERT INTO `ball_bank` VALUES ('52', 'ICICI BANK LIMITED', 'ICICI BANK LIMITED');
INSERT INTO `ball_bank` VALUES ('53', 'AXIS BANK', 'AXIS BANK');

-- ----------------------------
-- Table structure for ball_bank_card
-- ----------------------------
DROP TABLE IF EXISTS `ball_bank_card`;
CREATE TABLE `ball_bank_card` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(20) NOT NULL COMMENT '玩家ID',
  `username` varchar(50) DEFAULT NULL,
  `card_number` varchar(100) NOT NULL DEFAULT '' COMMENT '卡号',
  `bank_name` varchar(100) NOT NULL DEFAULT '' COMMENT '银行名字',
  `back_encoding` varchar(100) DEFAULT '' COMMENT '银行编码',
  `card_name` varchar(100) DEFAULT '' COMMENT '持卡人姓名',
  `country` varchar(100) DEFAULT '' COMMENT '国际',
  `province` varchar(100) DEFAULT '' COMMENT '省份',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '城市',
  `sub_branch` varchar(100) NOT NULL DEFAULT '' COMMENT '支行',
  `status` tinyint(20) DEFAULT '1' COMMENT '状态 1正常 2禁用',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '更新时间',
  `status_check` tinyint(4) DEFAULT NULL,
  `checker` varchar(30) DEFAULT NULL,
  `check_time` bigint(20) DEFAULT '0',
  `oper_user` varchar(30) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='银行卡';

-- ----------------------------
-- Records of ball_bank_card
-- ----------------------------

-- ----------------------------
-- Table structure for ball_bet
-- ----------------------------
DROP TABLE IF EXISTS `ball_bet`;
CREATE TABLE `ball_bet` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` bigint(20) DEFAULT '0' COMMENT '游戏id ',
  `player_id` bigint(20) DEFAULT '0' COMMENT '玩家id',
  `order_no` bigint(20) DEFAULT NULL,
  `game_loss_per_cent_id` bigint(20) DEFAULT '0' COMMENT '游戏赔率 id(索引)',
  `bet_money` bigint(20) DEFAULT '0' COMMENT '下住金额',
  `hand_money` bigint(20) DEFAULT '0' COMMENT '手续费',
  `winning_amount` bigint(20) DEFAULT '0' COMMENT '中奖金额',
  `status` tinyint(4) DEFAULT '1' COMMENT '1 未结算 2已结结算 3撤单  4回滚',
  `settlement_time` bigint(20) DEFAULT '0' COMMENT '结算时间',
  `bet_type` tinyint(4) DEFAULT '0',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '结算时间 默认为 0',
  `username` varchar(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT '0',
  `account_type` tinyint(255) DEFAULT '1',
  `game_info` varchar(255) DEFAULT '',
  `start_time` bigint(20) DEFAULT '0',
  `even` tinyint(4) DEFAULT '2',
  `status_settlement` tinyint(4) DEFAULT '0',
  `status_open` tinyint(4) DEFAULT '0',
  `superior_id` bigint(20) DEFAULT NULL,
  `super_tree` text,
  `bet_score` varchar(20) DEFAULT NULL,
  `bet_odds` varchar(20) DEFAULT NULL,
  `settlememnt_person` varchar(50) DEFAULT '',
  `game_type` tinyint(4) DEFAULT NULL,
  `top_username` varchar(30) DEFAULT '',
  `first_username` varchar(30) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `game_id` (`game_id`),
  KEY `p` (`player_id`),
  KEY `d` (`game_loss_per_cent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='下注';

-- ----------------------------
-- Records of ball_bet
-- ----------------------------

-- ----------------------------
-- Table structure for ball_bet_report
-- ----------------------------
DROP TABLE IF EXISTS `ball_bet_report`;
CREATE TABLE `ball_bet_report` (
  `id` bigint(20) NOT NULL,
  `ymd` char(10) DEFAULT NULL,
  `bet_count` int(11) DEFAULT '0',
  `bet_player` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ball_bet_report
-- ----------------------------

-- ----------------------------
-- Table structure for ball_bonus_config
-- ----------------------------
DROP TABLE IF EXISTS `ball_bonus_config`;
CREATE TABLE `ball_bonus_config` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '优惠名称',
  `type` tinyint(4) DEFAULT '0' COMMENT '0首充1邀请',
  `bonus_aim` int(8) DEFAULT '0' COMMENT '返佣层级',
  `activity_day` int(11) DEFAULT NULL,
  `bonus_money` int(11) DEFAULT NULL,
  `status` tinyint(20) DEFAULT '1' COMMENT '状态 1开启 2关闭',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '更新时间',
  `oper_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_all` (`type`,`bonus_aim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='反佣策略';

-- ----------------------------
-- Records of ball_bonus_config
-- ----------------------------

-- ----------------------------
-- Table structure for ball_channel_of_disbursement
-- ----------------------------
DROP TABLE IF EXISTS `ball_channel_of_disbursement`;
CREATE TABLE `ball_channel_of_disbursement` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '支付渠道名字',
  `disbursementzh_type` tinyint(4) DEFAULT '0' COMMENT '支付类型  自行填写',
  `channel_type` tinyint(4) DEFAULT '0' COMMENT '通道类型 1 线上支付 2线下支付 ',
  `kinds` tinyint(4) DEFAULT '0' COMMENT '1 支付渠道 2提现渠道',
  `status` tinyint(20) DEFAULT '1' COMMENT '状态 1开启 2关闭',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付/提现渠道';

-- ----------------------------
-- Records of ball_channel_of_disbursement
-- ----------------------------

-- ----------------------------
-- Table structure for ball_commission_strategy
-- ----------------------------
DROP TABLE IF EXISTS `ball_commission_strategy`;
CREATE TABLE `ball_commission_strategy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '优惠名称',
  `commission_strategy_type` tinyint(4) DEFAULT '0' COMMENT '1 下注返佣 2盈利返佣 3充值返佣',
  `commission_level` tinyint(4) DEFAULT '0' COMMENT '返佣层级',
  `automatic_distribution` tinyint(4) DEFAULT '0' COMMENT '自动发放 1 自动 2不自动',
  `status` tinyint(20) DEFAULT '1' COMMENT '状态 1开启 2关闭',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '更新时间',
  `oper_user` varchar(30) DEFAULT NULL,
  `min_able` bigint(20) DEFAULT NULL,
  `rules` text,
  `pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_all` (`commission_strategy_type`,`commission_level`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='反佣策略';

-- ----------------------------
-- Records of ball_commission_strategy
-- ----------------------------
INSERT INTO `ball_commission_strategy` VALUES ('1', '六级返佣', '2', '7', '1', '1', '1660506526980', '1660506665823', 'admin', null, '[{\"levelStr\":\"自身\",\"level\":0,\"commission\":0},{\"levelStr\":\"上1级\",\"level\":1,\"commission\":\"12\"},{\"levelStr\":\"上2级\",\"level\":2,\"commission\":\"8\"},{\"levelStr\":\"上3级\",\"level\":3,\"commission\":\"4\"},{\"levelStr\":\"上4级\",\"level\":4,\"commission\":\"1\"},{\"levelStr\":\"上5级\",\"level\":5,\"commission\":\"1\"},{\"levelStr\":\"上6级\",\"level\":6,\"commission\":\"1\"}]', null);

-- ----------------------------
-- Table structure for ball_config_wfail
-- ----------------------------
DROP TABLE IF EXISTS `ball_config_wfail`;
CREATE TABLE `ball_config_wfail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `content` varchar(255) DEFAULT '',
  `status` tinyint(4) DEFAULT '1',
  `created_at` bigint(20) DEFAULT '0',
  `updated_at` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ball_config_wfail
-- ----------------------------
INSERT INTO `ball_config_wfail` VALUES ('1', 'IFSC错误', 'IFSC Error', '1', '0', '0');
INSERT INTO `ball_config_wfail` VALUES ('2', '银行卡信息错误', 'Incorrect bank card information', '1', '0', '0');
INSERT INTO `ball_config_wfail` VALUES ('3', 'USDT地址错误', 'USDT Address Error', '1', '0', '0');
INSERT INTO `ball_config_wfail` VALUES ('4', '请重新提交提款申请', 'Please resubmit a withdrawal', '1', '0', '0');

-- ----------------------------
-- Table structure for ball_deposit_policy
-- ----------------------------
DROP TABLE IF EXISTS `ball_deposit_policy`;
CREATE TABLE `ball_deposit_policy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '优惠名称',
  `deposit_policy_type` tinyint(4) DEFAULT '0' COMMENT '优惠类型 1首冲 2每次',
  `start_time` bigint(20) DEFAULT '0' COMMENT '开始时间',
  `end_time` bigint(20) DEFAULT '0' COMMENT '结束时间',
  `preferential_standard` varchar(255) DEFAULT '' COMMENT '优惠标准',
  `preferential_per` int(4) NOT NULL DEFAULT '0' COMMENT '优惠百分比',
  `preferential_top` int(4) NOT NULL DEFAULT '0' COMMENT '优惠上限',
  `status` tinyint(20) DEFAULT '1' COMMENT '状态 1开启 2关闭',
  `remark` varchar(255) DEFAULT '' COMMENT '协议',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存款策略';

-- ----------------------------
-- Records of ball_deposit_policy
-- ----------------------------

-- ----------------------------
-- Table structure for ball_game
-- ----------------------------
DROP TABLE IF EXISTS `ball_game`;
CREATE TABLE `ball_game` (
  `id` bigint(20) unsigned NOT NULL,
  `game_logo` varchar(255) DEFAULT NULL,
  `alliance_logo` varchar(255) DEFAULT '' COMMENT '联盟logo',
  `alliance_name` varchar(255) DEFAULT '' COMMENT '联盟名字',
  `main_logo` varchar(255) DEFAULT '' COMMENT '主队logo',
  `main_name` varchar(255) DEFAULT '' COMMENT '主队名字',
  `guest_logo` varchar(255) DEFAULT '' COMMENT '客队logo',
  `guest_name` varchar(255) DEFAULT '' COMMENT '客队名字',
  `start_time` bigint(20) DEFAULT '0' COMMENT '开赛时间',
  `score` varchar(255) DEFAULT '' COMMENT '比分 0:0/(0-0)  括号库里面是上半场',
  `home_half` int(11) DEFAULT NULL COMMENT '主半场',
  `guest_half` int(11) DEFAULT NULL COMMENT '客半场',
  `home_full` int(11) DEFAULT NULL COMMENT '主全场',
  `guest_full` int(11) DEFAULT NULL COMMENT '客全场',
  `home_overtime` int(11) DEFAULT NULL COMMENT '主加时',
  `home_penalty` int(11) DEFAULT NULL COMMENT '主点球',
  `guest_penalty` int(11) DEFAULT NULL COMMENT '客点球',
  `guest_overtime` int(11) DEFAULT NULL COMMENT '客加时',
  `game_status` tinyint(4) DEFAULT '1' COMMENT '比赛状态 1 没有开始 2正常进行  3结束',
  `top` tinyint(4) DEFAULT '2' COMMENT '置顶  1置顶 2 不指定',
  `hot` tinyint(4) DEFAULT '2' COMMENT '是否热门 1 热门 2非热门',
  `even` tinyint(4) DEFAULT '2' COMMENT '是否保本 1保本 2不保本(默认为2)',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态 1开启  2关闭',
  `settlement_type` tinyint(4) DEFAULT '0' COMMENT '结算类型',
  `settlement_remark` varchar(255) DEFAULT '' COMMENT '结算说明',
  `created_at` bigint(20) DEFAULT '0' COMMENT '入库时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '更新时间',
  `ymd` char(10) DEFAULT NULL,
  `from_to` tinyint(4) DEFAULT '0',
  `min_bet` int(8) DEFAULT '0',
  `max_bet` int(8) DEFAULT '0',
  `total_bet` int(8) DEFAULT '0',
  `settlement_time` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏赛事';

-- ----------------------------
-- Records of ball_game
-- ----------------------------

-- ----------------------------
-- Table structure for ball_game_loss_per_cent
-- ----------------------------
DROP TABLE IF EXISTS `ball_game_loss_per_cent`;
CREATE TABLE `ball_game_loss_per_cent` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` bigint(20) DEFAULT NULL COMMENT '游戏id ',
  `score_home` varchar(255) DEFAULT '' COMMENT '比分',
  `score_away` varchar(255) DEFAULT NULL,
  `game_type` tinyint(4) DEFAULT '0' COMMENT '比赛类型 1全场 2上半场',
  `loss_per_cent` varchar(50) DEFAULT '0' COMMENT '赔率',
  `anti_per_cent` varchar(50) DEFAULT NULL,
  `even` tinyint(4) DEFAULT '2' COMMENT '是否保本 1保本 2不保本(默认为2)',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态 1开启  2关闭',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '同步时间',
  `min_bet` int(8) DEFAULT '0',
  `max_bet` int(8) DEFAULT '0',
  `total_bet` int(8) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `game_unique` (`game_id`,`score_home`,`score_away`,`game_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏赔率';

-- ----------------------------
-- Records of ball_game_loss_per_cent
-- ----------------------------

-- ----------------------------
-- Table structure for ball_game_report
-- ----------------------------
DROP TABLE IF EXISTS `ball_game_report`;
CREATE TABLE `ball_game_report` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ymd` char(10) DEFAULT NULL,
  `ymd_stamp` bigint(20) DEFAULT NULL,
  `game_count` int(11) DEFAULT '0',
  `bet_game_count` int(11) DEFAULT '0',
  `not_start` int(11) DEFAULT '0',
  `bet_player_count` int(11) DEFAULT '0',
  `bet_counts` int(11) DEFAULT '0',
  `bet_balance` bigint(20) DEFAULT '0',
  `bet_bingo_count` bigint(20) DEFAULT '0',
  `bet_bingo_balance` bigint(20) DEFAULT '0',
  `bet_not_bingo_balance` bigint(20) DEFAULT '0',
  `bet_hand_money` bigint(20) DEFAULT '0',
  `bet_win_lose` bigint(20) DEFAULT '0',
  `bet_win_lose_per_player` varchar(10) DEFAULT '0',
  `bet_win_lose_per` varchar(10) DEFAULT '0',
  `bbet_player_count` int(11) DEFAULT '0',
  `bbet_counts` int(11) DEFAULT '0',
  `bbet_balance` bigint(20) DEFAULT '0',
  `bbet_bingo_count` bigint(20) DEFAULT '0',
  `bbet_bingo_balance` bigint(20) DEFAULT '0',
  `bbet_not_bingo_balance` bigint(20) DEFAULT '0',
  `bbet_hand_money` bigint(20) DEFAULT '0',
  `bbet_win_lose` bigint(20) DEFAULT '0',
  `bbet_win_lose_per_player` varchar(10) DEFAULT '0',
  `bbet_win_lose_per` varchar(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ball_game_report
-- ----------------------------

-- ----------------------------
-- Table structure for ball_group
-- ----------------------------
DROP TABLE IF EXISTS `ball_group`;
CREATE TABLE `ball_group` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT '1正常2废除',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of ball_group
-- ----------------------------
INSERT INTO `ball_group` VALUES ('1', '超级管理员', '1', '0', '0');
INSERT INTO `ball_group` VALUES ('2', '客服', '1', '1660768991493', '0');
INSERT INTO `ball_group` VALUES ('3', '风控', '1', '1660769179000', '0');
INSERT INTO `ball_group` VALUES ('4', '入款', '1', '1660769427738', '0');
INSERT INTO `ball_group` VALUES ('5', '团队运维', '1', '1660769749902', '0');
INSERT INTO `ball_group` VALUES ('6', '主管', '1', '1660769891492', '0');
INSERT INTO `ball_group` VALUES ('9', '管理员', '1', '1660808216911', '0');

-- ----------------------------
-- Table structure for ball_group_menu
-- ----------------------------
DROP TABLE IF EXISTS `ball_group_menu`;
CREATE TABLE `ball_group_menu` (
  `role_id` bigint(20) NOT NULL,
  `auth_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限中间表';

-- ----------------------------
-- Records of ball_group_menu
-- ----------------------------
INSERT INTO `ball_group_menu` VALUES ('1', '1');
INSERT INTO `ball_group_menu` VALUES ('1', '2');
INSERT INTO `ball_group_menu` VALUES ('1', '3');
INSERT INTO `ball_group_menu` VALUES ('1', '4');
INSERT INTO `ball_group_menu` VALUES ('1', '5');
INSERT INTO `ball_group_menu` VALUES ('1', '6');
INSERT INTO `ball_group_menu` VALUES ('1', '7');
INSERT INTO `ball_group_menu` VALUES ('1', '8');
INSERT INTO `ball_group_menu` VALUES ('1', '9');
INSERT INTO `ball_group_menu` VALUES ('1', '10');
INSERT INTO `ball_group_menu` VALUES ('1', '11');
INSERT INTO `ball_group_menu` VALUES ('1', '12');
INSERT INTO `ball_group_menu` VALUES ('1', '13');
INSERT INTO `ball_group_menu` VALUES ('1', '14');
INSERT INTO `ball_group_menu` VALUES ('1', '15');
INSERT INTO `ball_group_menu` VALUES ('1', '16');
INSERT INTO `ball_group_menu` VALUES ('1', '17');
INSERT INTO `ball_group_menu` VALUES ('1', '18');
INSERT INTO `ball_group_menu` VALUES ('1', '19');
INSERT INTO `ball_group_menu` VALUES ('1', '20');
INSERT INTO `ball_group_menu` VALUES ('1', '21');
INSERT INTO `ball_group_menu` VALUES ('1', '22');
INSERT INTO `ball_group_menu` VALUES ('1', '23');
INSERT INTO `ball_group_menu` VALUES ('1', '24');
INSERT INTO `ball_group_menu` VALUES ('1', '25');
INSERT INTO `ball_group_menu` VALUES ('1', '26');
INSERT INTO `ball_group_menu` VALUES ('1', '27');
INSERT INTO `ball_group_menu` VALUES ('1', '28');
INSERT INTO `ball_group_menu` VALUES ('1', '29');
INSERT INTO `ball_group_menu` VALUES ('1', '30');
INSERT INTO `ball_group_menu` VALUES ('1', '31');
INSERT INTO `ball_group_menu` VALUES ('1', '32');
INSERT INTO `ball_group_menu` VALUES ('1', '33');
INSERT INTO `ball_group_menu` VALUES ('1', '34');
INSERT INTO `ball_group_menu` VALUES ('1', '35');
INSERT INTO `ball_group_menu` VALUES ('1', '36');
INSERT INTO `ball_group_menu` VALUES ('1', '37');
INSERT INTO `ball_group_menu` VALUES ('1', '38');
INSERT INTO `ball_group_menu` VALUES ('1', '39');
INSERT INTO `ball_group_menu` VALUES ('1', '40');
INSERT INTO `ball_group_menu` VALUES ('1', '41');
INSERT INTO `ball_group_menu` VALUES ('1', '42');
INSERT INTO `ball_group_menu` VALUES ('1', '43');
INSERT INTO `ball_group_menu` VALUES ('1', '44');
INSERT INTO `ball_group_menu` VALUES ('1', '45');
INSERT INTO `ball_group_menu` VALUES ('1', '46');
INSERT INTO `ball_group_menu` VALUES ('1', '47');
INSERT INTO `ball_group_menu` VALUES ('1', '48');
INSERT INTO `ball_group_menu` VALUES ('1', '49');
INSERT INTO `ball_group_menu` VALUES ('1', '50');
INSERT INTO `ball_group_menu` VALUES ('1', '51');
INSERT INTO `ball_group_menu` VALUES ('1', '52');
INSERT INTO `ball_group_menu` VALUES ('1', '53');
INSERT INTO `ball_group_menu` VALUES ('1', '54');
INSERT INTO `ball_group_menu` VALUES ('1', '55');
INSERT INTO `ball_group_menu` VALUES ('1', '56');
INSERT INTO `ball_group_menu` VALUES ('1', '57');
INSERT INTO `ball_group_menu` VALUES ('1', '58');
INSERT INTO `ball_group_menu` VALUES ('1', '59');
INSERT INTO `ball_group_menu` VALUES ('1', '60');
INSERT INTO `ball_group_menu` VALUES ('1', '61');
INSERT INTO `ball_group_menu` VALUES ('1', '62');
INSERT INTO `ball_group_menu` VALUES ('1', '63');
INSERT INTO `ball_group_menu` VALUES ('1', '64');
INSERT INTO `ball_group_menu` VALUES ('1', '65');
INSERT INTO `ball_group_menu` VALUES ('1', '66');
INSERT INTO `ball_group_menu` VALUES ('1', '67');
INSERT INTO `ball_group_menu` VALUES ('1', '68');
INSERT INTO `ball_group_menu` VALUES ('1', '69');
INSERT INTO `ball_group_menu` VALUES ('1', '70');
INSERT INTO `ball_group_menu` VALUES ('1', '71');
INSERT INTO `ball_group_menu` VALUES ('1', '72');
INSERT INTO `ball_group_menu` VALUES ('1', '73');
INSERT INTO `ball_group_menu` VALUES ('1', '74');
INSERT INTO `ball_group_menu` VALUES ('1', '75');
INSERT INTO `ball_group_menu` VALUES ('1', '76');
INSERT INTO `ball_group_menu` VALUES ('1', '77');
INSERT INTO `ball_group_menu` VALUES ('1', '78');
INSERT INTO `ball_group_menu` VALUES ('1', '79');
INSERT INTO `ball_group_menu` VALUES ('1', '80');
INSERT INTO `ball_group_menu` VALUES ('1', '81');
INSERT INTO `ball_group_menu` VALUES ('1', '82');
INSERT INTO `ball_group_menu` VALUES ('1', '83');
INSERT INTO `ball_group_menu` VALUES ('1', '84');
INSERT INTO `ball_group_menu` VALUES ('1', '85');
INSERT INTO `ball_group_menu` VALUES ('1', '86');
INSERT INTO `ball_group_menu` VALUES ('1', '87');
INSERT INTO `ball_group_menu` VALUES ('1', '88');
INSERT INTO `ball_group_menu` VALUES ('1', '89');
INSERT INTO `ball_group_menu` VALUES ('1', '90');
INSERT INTO `ball_group_menu` VALUES ('1', '91');
INSERT INTO `ball_group_menu` VALUES ('1', '92');
INSERT INTO `ball_group_menu` VALUES ('1', '93');
INSERT INTO `ball_group_menu` VALUES ('1', '94');
INSERT INTO `ball_group_menu` VALUES ('1', '95');
INSERT INTO `ball_group_menu` VALUES ('1', '96');
INSERT INTO `ball_group_menu` VALUES ('1', '97');
INSERT INTO `ball_group_menu` VALUES ('1', '98');
INSERT INTO `ball_group_menu` VALUES ('1', '99');
INSERT INTO `ball_group_menu` VALUES ('1', '100');
INSERT INTO `ball_group_menu` VALUES ('1', '101');
INSERT INTO `ball_group_menu` VALUES ('1', '102');
INSERT INTO `ball_group_menu` VALUES ('1', '103');
INSERT INTO `ball_group_menu` VALUES ('1', '104');
INSERT INTO `ball_group_menu` VALUES ('1', '105');
INSERT INTO `ball_group_menu` VALUES ('1', '106');
INSERT INTO `ball_group_menu` VALUES ('1', '107');
INSERT INTO `ball_group_menu` VALUES ('1', '108');
INSERT INTO `ball_group_menu` VALUES ('1', '109');
INSERT INTO `ball_group_menu` VALUES ('1', '110');
INSERT INTO `ball_group_menu` VALUES ('1', '111');
INSERT INTO `ball_group_menu` VALUES ('1', '112');
INSERT INTO `ball_group_menu` VALUES ('1', '113');
INSERT INTO `ball_group_menu` VALUES ('1', '114');
INSERT INTO `ball_group_menu` VALUES ('1', '115');
INSERT INTO `ball_group_menu` VALUES ('1', '116');
INSERT INTO `ball_group_menu` VALUES ('1', '117');
INSERT INTO `ball_group_menu` VALUES ('1', '118');
INSERT INTO `ball_group_menu` VALUES ('1', '119');
INSERT INTO `ball_group_menu` VALUES ('1', '120');
INSERT INTO `ball_group_menu` VALUES ('1', '121');
INSERT INTO `ball_group_menu` VALUES ('1', '122');
INSERT INTO `ball_group_menu` VALUES ('1', '123');
INSERT INTO `ball_group_menu` VALUES ('1', '124');
INSERT INTO `ball_group_menu` VALUES ('1', '125');
INSERT INTO `ball_group_menu` VALUES ('1', '126');
INSERT INTO `ball_group_menu` VALUES ('1', '127');
INSERT INTO `ball_group_menu` VALUES ('1', '128');
INSERT INTO `ball_group_menu` VALUES ('1', '129');
INSERT INTO `ball_group_menu` VALUES ('1', '130');
INSERT INTO `ball_group_menu` VALUES ('1', '131');
INSERT INTO `ball_group_menu` VALUES ('1', '132');
INSERT INTO `ball_group_menu` VALUES ('1', '133');
INSERT INTO `ball_group_menu` VALUES ('1', '134');
INSERT INTO `ball_group_menu` VALUES ('1', '135');
INSERT INTO `ball_group_menu` VALUES ('1', '136');
INSERT INTO `ball_group_menu` VALUES ('1', '137');
INSERT INTO `ball_group_menu` VALUES ('1', '138');
INSERT INTO `ball_group_menu` VALUES ('1', '139');
INSERT INTO `ball_group_menu` VALUES ('1', '140');
INSERT INTO `ball_group_menu` VALUES ('1', '141');
INSERT INTO `ball_group_menu` VALUES ('1', '142');
INSERT INTO `ball_group_menu` VALUES ('1', '143');
INSERT INTO `ball_group_menu` VALUES ('1', '144');
INSERT INTO `ball_group_menu` VALUES ('1', '145');
INSERT INTO `ball_group_menu` VALUES ('1', '146');
INSERT INTO `ball_group_menu` VALUES ('1', '147');
INSERT INTO `ball_group_menu` VALUES ('1', '148');
INSERT INTO `ball_group_menu` VALUES ('1', '149');
INSERT INTO `ball_group_menu` VALUES ('1', '150');
INSERT INTO `ball_group_menu` VALUES ('1', '151');
INSERT INTO `ball_group_menu` VALUES ('1', '152');
INSERT INTO `ball_group_menu` VALUES ('1', '153');
INSERT INTO `ball_group_menu` VALUES ('1', '154');
INSERT INTO `ball_group_menu` VALUES ('1', '155');
INSERT INTO `ball_group_menu` VALUES ('1', '156');
INSERT INTO `ball_group_menu` VALUES ('1', '157');
INSERT INTO `ball_group_menu` VALUES ('1', '158');
INSERT INTO `ball_group_menu` VALUES ('1', '159');
INSERT INTO `ball_group_menu` VALUES ('1', '160');
INSERT INTO `ball_group_menu` VALUES ('1', '161');
INSERT INTO `ball_group_menu` VALUES ('1', '162');
INSERT INTO `ball_group_menu` VALUES ('1', '163');
INSERT INTO `ball_group_menu` VALUES ('1', '164');
INSERT INTO `ball_group_menu` VALUES ('1', '165');
INSERT INTO `ball_group_menu` VALUES ('1', '166');
INSERT INTO `ball_group_menu` VALUES ('1', '167');
INSERT INTO `ball_group_menu` VALUES ('1', '168');
INSERT INTO `ball_group_menu` VALUES ('1', '169');
INSERT INTO `ball_group_menu` VALUES ('1', '170');
INSERT INTO `ball_group_menu` VALUES ('1', '171');
INSERT INTO `ball_group_menu` VALUES ('1', '172');
INSERT INTO `ball_group_menu` VALUES ('1', '173');
INSERT INTO `ball_group_menu` VALUES ('1', '174');
INSERT INTO `ball_group_menu` VALUES ('1', '175');
INSERT INTO `ball_group_menu` VALUES ('1', '176');
INSERT INTO `ball_group_menu` VALUES ('1', '177');
INSERT INTO `ball_group_menu` VALUES ('1', '178');
INSERT INTO `ball_group_menu` VALUES ('1', '179');
INSERT INTO `ball_group_menu` VALUES ('1', '180');
INSERT INTO `ball_group_menu` VALUES ('1', '181');
INSERT INTO `ball_group_menu` VALUES ('1', '182');
INSERT INTO `ball_group_menu` VALUES ('1', '183');
INSERT INTO `ball_group_menu` VALUES ('1', '184');
INSERT INTO `ball_group_menu` VALUES ('1', '185');
INSERT INTO `ball_group_menu` VALUES ('7', '11');
INSERT INTO `ball_group_menu` VALUES ('7', '13');
INSERT INTO `ball_group_menu` VALUES ('7', '14');
INSERT INTO `ball_group_menu` VALUES ('7', '15');
INSERT INTO `ball_group_menu` VALUES ('7', '16');
INSERT INTO `ball_group_menu` VALUES ('7', '17');
INSERT INTO `ball_group_menu` VALUES ('7', '18');
INSERT INTO `ball_group_menu` VALUES ('7', '19');
INSERT INTO `ball_group_menu` VALUES ('7', '20');
INSERT INTO `ball_group_menu` VALUES ('7', '21');
INSERT INTO `ball_group_menu` VALUES ('7', '149');
INSERT INTO `ball_group_menu` VALUES ('7', '177');
INSERT INTO `ball_group_menu` VALUES ('7', '173');
INSERT INTO `ball_group_menu` VALUES ('7', '174');
INSERT INTO `ball_group_menu` VALUES ('7', '175');
INSERT INTO `ball_group_menu` VALUES ('7', '176');
INSERT INTO `ball_group_menu` VALUES ('7', '22');
INSERT INTO `ball_group_menu` VALUES ('7', '23');
INSERT INTO `ball_group_menu` VALUES ('7', '24');
INSERT INTO `ball_group_menu` VALUES ('7', '25');
INSERT INTO `ball_group_menu` VALUES ('7', '26');
INSERT INTO `ball_group_menu` VALUES ('7', '27');
INSERT INTO `ball_group_menu` VALUES ('7', '28');
INSERT INTO `ball_group_menu` VALUES ('7', '29');
INSERT INTO `ball_group_menu` VALUES ('7', '155');
INSERT INTO `ball_group_menu` VALUES ('7', '161');
INSERT INTO `ball_group_menu` VALUES ('7', '162');
INSERT INTO `ball_group_menu` VALUES ('7', '179');
INSERT INTO `ball_group_menu` VALUES ('7', '30');
INSERT INTO `ball_group_menu` VALUES ('7', '31');
INSERT INTO `ball_group_menu` VALUES ('7', '32');
INSERT INTO `ball_group_menu` VALUES ('7', '33');
INSERT INTO `ball_group_menu` VALUES ('7', '34');
INSERT INTO `ball_group_menu` VALUES ('7', '35');
INSERT INTO `ball_group_menu` VALUES ('7', '36');
INSERT INTO `ball_group_menu` VALUES ('7', '37');
INSERT INTO `ball_group_menu` VALUES ('7', '38');
INSERT INTO `ball_group_menu` VALUES ('7', '47');
INSERT INTO `ball_group_menu` VALUES ('7', '48');
INSERT INTO `ball_group_menu` VALUES ('7', '53');
INSERT INTO `ball_group_menu` VALUES ('7', '54');
INSERT INTO `ball_group_menu` VALUES ('7', '55');
INSERT INTO `ball_group_menu` VALUES ('7', '56');
INSERT INTO `ball_group_menu` VALUES ('7', '57');
INSERT INTO `ball_group_menu` VALUES ('7', '58');
INSERT INTO `ball_group_menu` VALUES ('7', '59');
INSERT INTO `ball_group_menu` VALUES ('7', '60');
INSERT INTO `ball_group_menu` VALUES ('7', '61');
INSERT INTO `ball_group_menu` VALUES ('7', '62');
INSERT INTO `ball_group_menu` VALUES ('7', '63');
INSERT INTO `ball_group_menu` VALUES ('7', '64');
INSERT INTO `ball_group_menu` VALUES ('7', '65');
INSERT INTO `ball_group_menu` VALUES ('7', '66');
INSERT INTO `ball_group_menu` VALUES ('7', '168');
INSERT INTO `ball_group_menu` VALUES ('7', '169');
INSERT INTO `ball_group_menu` VALUES ('7', '170');
INSERT INTO `ball_group_menu` VALUES ('7', '171');
INSERT INTO `ball_group_menu` VALUES ('7', '172');
INSERT INTO `ball_group_menu` VALUES ('7', '67');
INSERT INTO `ball_group_menu` VALUES ('7', '68');
INSERT INTO `ball_group_menu` VALUES ('7', '69');
INSERT INTO `ball_group_menu` VALUES ('7', '70');
INSERT INTO `ball_group_menu` VALUES ('7', '71');
INSERT INTO `ball_group_menu` VALUES ('7', '72');
INSERT INTO `ball_group_menu` VALUES ('7', '73');
INSERT INTO `ball_group_menu` VALUES ('7', '74');
INSERT INTO `ball_group_menu` VALUES ('7', '75');
INSERT INTO `ball_group_menu` VALUES ('7', '76');
INSERT INTO `ball_group_menu` VALUES ('7', '77');
INSERT INTO `ball_group_menu` VALUES ('7', '78');
INSERT INTO `ball_group_menu` VALUES ('7', '79');
INSERT INTO `ball_group_menu` VALUES ('7', '80');
INSERT INTO `ball_group_menu` VALUES ('7', '81');
INSERT INTO `ball_group_menu` VALUES ('7', '82');
INSERT INTO `ball_group_menu` VALUES ('7', '83');
INSERT INTO `ball_group_menu` VALUES ('7', '84');
INSERT INTO `ball_group_menu` VALUES ('7', '85');
INSERT INTO `ball_group_menu` VALUES ('7', '86');
INSERT INTO `ball_group_menu` VALUES ('7', '87');
INSERT INTO `ball_group_menu` VALUES ('7', '88');
INSERT INTO `ball_group_menu` VALUES ('7', '89');
INSERT INTO `ball_group_menu` VALUES ('7', '90');
INSERT INTO `ball_group_menu` VALUES ('7', '91');
INSERT INTO `ball_group_menu` VALUES ('7', '92');
INSERT INTO `ball_group_menu` VALUES ('7', '93');
INSERT INTO `ball_group_menu` VALUES ('7', '94');
INSERT INTO `ball_group_menu` VALUES ('7', '95');
INSERT INTO `ball_group_menu` VALUES ('7', '96');
INSERT INTO `ball_group_menu` VALUES ('7', '97');
INSERT INTO `ball_group_menu` VALUES ('7', '150');
INSERT INTO `ball_group_menu` VALUES ('7', '151');
INSERT INTO `ball_group_menu` VALUES ('7', '152');
INSERT INTO `ball_group_menu` VALUES ('7', '153');
INSERT INTO `ball_group_menu` VALUES ('7', '154');
INSERT INTO `ball_group_menu` VALUES ('7', '98');
INSERT INTO `ball_group_menu` VALUES ('7', '99');
INSERT INTO `ball_group_menu` VALUES ('7', '100');
INSERT INTO `ball_group_menu` VALUES ('7', '101');
INSERT INTO `ball_group_menu` VALUES ('7', '102');
INSERT INTO `ball_group_menu` VALUES ('7', '103');
INSERT INTO `ball_group_menu` VALUES ('7', '104');
INSERT INTO `ball_group_menu` VALUES ('7', '105');
INSERT INTO `ball_group_menu` VALUES ('7', '106');
INSERT INTO `ball_group_menu` VALUES ('7', '107');
INSERT INTO `ball_group_menu` VALUES ('7', '108');
INSERT INTO `ball_group_menu` VALUES ('7', '109');
INSERT INTO `ball_group_menu` VALUES ('7', '110');
INSERT INTO `ball_group_menu` VALUES ('7', '111');
INSERT INTO `ball_group_menu` VALUES ('7', '112');
INSERT INTO `ball_group_menu` VALUES ('7', '113');
INSERT INTO `ball_group_menu` VALUES ('7', '114');
INSERT INTO `ball_group_menu` VALUES ('7', '115');
INSERT INTO `ball_group_menu` VALUES ('7', '116');
INSERT INTO `ball_group_menu` VALUES ('7', '137');
INSERT INTO `ball_group_menu` VALUES ('7', '138');
INSERT INTO `ball_group_menu` VALUES ('7', '139');
INSERT INTO `ball_group_menu` VALUES ('7', '140');
INSERT INTO `ball_group_menu` VALUES ('7', '141');
INSERT INTO `ball_group_menu` VALUES ('7', '142');
INSERT INTO `ball_group_menu` VALUES ('7', '163');
INSERT INTO `ball_group_menu` VALUES ('7', '164');
INSERT INTO `ball_group_menu` VALUES ('7', '165');
INSERT INTO `ball_group_menu` VALUES ('7', '166');
INSERT INTO `ball_group_menu` VALUES ('7', '167');
INSERT INTO `ball_group_menu` VALUES ('7', '144');
INSERT INTO `ball_group_menu` VALUES ('7', '145');
INSERT INTO `ball_group_menu` VALUES ('7', '146');
INSERT INTO `ball_group_menu` VALUES ('7', '9');
INSERT INTO `ball_group_menu` VALUES ('7', '1');
INSERT INTO `ball_group_menu` VALUES ('7', '2');
INSERT INTO `ball_group_menu` VALUES ('7', '3');
INSERT INTO `ball_group_menu` VALUES ('7', '4');
INSERT INTO `ball_group_menu` VALUES ('7', '5');
INSERT INTO `ball_group_menu` VALUES ('7', '6');
INSERT INTO `ball_group_menu` VALUES ('7', '7');
INSERT INTO `ball_group_menu` VALUES ('7', '8');
INSERT INTO `ball_group_menu` VALUES ('7', '10');
INSERT INTO `ball_group_menu` VALUES ('7', '39');
INSERT INTO `ball_group_menu` VALUES ('7', '117');
INSERT INTO `ball_group_menu` VALUES ('7', '143');
INSERT INTO `ball_group_menu` VALUES ('8', '11');
INSERT INTO `ball_group_menu` VALUES ('8', '13');
INSERT INTO `ball_group_menu` VALUES ('8', '14');
INSERT INTO `ball_group_menu` VALUES ('8', '15');
INSERT INTO `ball_group_menu` VALUES ('8', '16');
INSERT INTO `ball_group_menu` VALUES ('8', '17');
INSERT INTO `ball_group_menu` VALUES ('8', '18');
INSERT INTO `ball_group_menu` VALUES ('8', '19');
INSERT INTO `ball_group_menu` VALUES ('8', '20');
INSERT INTO `ball_group_menu` VALUES ('8', '21');
INSERT INTO `ball_group_menu` VALUES ('8', '149');
INSERT INTO `ball_group_menu` VALUES ('8', '177');
INSERT INTO `ball_group_menu` VALUES ('8', '173');
INSERT INTO `ball_group_menu` VALUES ('8', '174');
INSERT INTO `ball_group_menu` VALUES ('8', '175');
INSERT INTO `ball_group_menu` VALUES ('8', '176');
INSERT INTO `ball_group_menu` VALUES ('8', '22');
INSERT INTO `ball_group_menu` VALUES ('8', '23');
INSERT INTO `ball_group_menu` VALUES ('8', '24');
INSERT INTO `ball_group_menu` VALUES ('8', '25');
INSERT INTO `ball_group_menu` VALUES ('8', '26');
INSERT INTO `ball_group_menu` VALUES ('8', '27');
INSERT INTO `ball_group_menu` VALUES ('8', '28');
INSERT INTO `ball_group_menu` VALUES ('8', '29');
INSERT INTO `ball_group_menu` VALUES ('8', '155');
INSERT INTO `ball_group_menu` VALUES ('8', '161');
INSERT INTO `ball_group_menu` VALUES ('8', '162');
INSERT INTO `ball_group_menu` VALUES ('8', '179');
INSERT INTO `ball_group_menu` VALUES ('8', '30');
INSERT INTO `ball_group_menu` VALUES ('8', '31');
INSERT INTO `ball_group_menu` VALUES ('8', '32');
INSERT INTO `ball_group_menu` VALUES ('8', '33');
INSERT INTO `ball_group_menu` VALUES ('8', '34');
INSERT INTO `ball_group_menu` VALUES ('8', '35');
INSERT INTO `ball_group_menu` VALUES ('8', '36');
INSERT INTO `ball_group_menu` VALUES ('8', '37');
INSERT INTO `ball_group_menu` VALUES ('8', '38');
INSERT INTO `ball_group_menu` VALUES ('8', '47');
INSERT INTO `ball_group_menu` VALUES ('8', '48');
INSERT INTO `ball_group_menu` VALUES ('8', '53');
INSERT INTO `ball_group_menu` VALUES ('8', '54');
INSERT INTO `ball_group_menu` VALUES ('8', '55');
INSERT INTO `ball_group_menu` VALUES ('8', '56');
INSERT INTO `ball_group_menu` VALUES ('8', '57');
INSERT INTO `ball_group_menu` VALUES ('8', '58');
INSERT INTO `ball_group_menu` VALUES ('8', '59');
INSERT INTO `ball_group_menu` VALUES ('8', '60');
INSERT INTO `ball_group_menu` VALUES ('8', '61');
INSERT INTO `ball_group_menu` VALUES ('8', '62');
INSERT INTO `ball_group_menu` VALUES ('8', '63');
INSERT INTO `ball_group_menu` VALUES ('8', '64');
INSERT INTO `ball_group_menu` VALUES ('8', '65');
INSERT INTO `ball_group_menu` VALUES ('8', '66');
INSERT INTO `ball_group_menu` VALUES ('8', '168');
INSERT INTO `ball_group_menu` VALUES ('8', '169');
INSERT INTO `ball_group_menu` VALUES ('8', '170');
INSERT INTO `ball_group_menu` VALUES ('8', '171');
INSERT INTO `ball_group_menu` VALUES ('8', '172');
INSERT INTO `ball_group_menu` VALUES ('8', '67');
INSERT INTO `ball_group_menu` VALUES ('8', '68');
INSERT INTO `ball_group_menu` VALUES ('8', '69');
INSERT INTO `ball_group_menu` VALUES ('8', '70');
INSERT INTO `ball_group_menu` VALUES ('8', '71');
INSERT INTO `ball_group_menu` VALUES ('8', '72');
INSERT INTO `ball_group_menu` VALUES ('8', '73');
INSERT INTO `ball_group_menu` VALUES ('8', '74');
INSERT INTO `ball_group_menu` VALUES ('8', '75');
INSERT INTO `ball_group_menu` VALUES ('8', '76');
INSERT INTO `ball_group_menu` VALUES ('8', '77');
INSERT INTO `ball_group_menu` VALUES ('8', '78');
INSERT INTO `ball_group_menu` VALUES ('8', '79');
INSERT INTO `ball_group_menu` VALUES ('8', '80');
INSERT INTO `ball_group_menu` VALUES ('8', '81');
INSERT INTO `ball_group_menu` VALUES ('8', '82');
INSERT INTO `ball_group_menu` VALUES ('8', '83');
INSERT INTO `ball_group_menu` VALUES ('8', '84');
INSERT INTO `ball_group_menu` VALUES ('8', '85');
INSERT INTO `ball_group_menu` VALUES ('8', '86');
INSERT INTO `ball_group_menu` VALUES ('8', '87');
INSERT INTO `ball_group_menu` VALUES ('8', '88');
INSERT INTO `ball_group_menu` VALUES ('8', '89');
INSERT INTO `ball_group_menu` VALUES ('8', '90');
INSERT INTO `ball_group_menu` VALUES ('8', '91');
INSERT INTO `ball_group_menu` VALUES ('8', '92');
INSERT INTO `ball_group_menu` VALUES ('8', '93');
INSERT INTO `ball_group_menu` VALUES ('8', '94');
INSERT INTO `ball_group_menu` VALUES ('8', '95');
INSERT INTO `ball_group_menu` VALUES ('8', '96');
INSERT INTO `ball_group_menu` VALUES ('8', '97');
INSERT INTO `ball_group_menu` VALUES ('8', '150');
INSERT INTO `ball_group_menu` VALUES ('8', '151');
INSERT INTO `ball_group_menu` VALUES ('8', '152');
INSERT INTO `ball_group_menu` VALUES ('8', '153');
INSERT INTO `ball_group_menu` VALUES ('8', '154');
INSERT INTO `ball_group_menu` VALUES ('8', '98');
INSERT INTO `ball_group_menu` VALUES ('8', '99');
INSERT INTO `ball_group_menu` VALUES ('8', '100');
INSERT INTO `ball_group_menu` VALUES ('8', '101');
INSERT INTO `ball_group_menu` VALUES ('8', '102');
INSERT INTO `ball_group_menu` VALUES ('8', '103');
INSERT INTO `ball_group_menu` VALUES ('8', '104');
INSERT INTO `ball_group_menu` VALUES ('8', '105');
INSERT INTO `ball_group_menu` VALUES ('8', '106');
INSERT INTO `ball_group_menu` VALUES ('8', '107');
INSERT INTO `ball_group_menu` VALUES ('8', '108');
INSERT INTO `ball_group_menu` VALUES ('8', '109');
INSERT INTO `ball_group_menu` VALUES ('8', '110');
INSERT INTO `ball_group_menu` VALUES ('8', '111');
INSERT INTO `ball_group_menu` VALUES ('8', '112');
INSERT INTO `ball_group_menu` VALUES ('8', '113');
INSERT INTO `ball_group_menu` VALUES ('8', '114');
INSERT INTO `ball_group_menu` VALUES ('8', '115');
INSERT INTO `ball_group_menu` VALUES ('8', '116');
INSERT INTO `ball_group_menu` VALUES ('8', '137');
INSERT INTO `ball_group_menu` VALUES ('8', '138');
INSERT INTO `ball_group_menu` VALUES ('8', '139');
INSERT INTO `ball_group_menu` VALUES ('8', '140');
INSERT INTO `ball_group_menu` VALUES ('8', '141');
INSERT INTO `ball_group_menu` VALUES ('8', '142');
INSERT INTO `ball_group_menu` VALUES ('8', '163');
INSERT INTO `ball_group_menu` VALUES ('8', '164');
INSERT INTO `ball_group_menu` VALUES ('8', '165');
INSERT INTO `ball_group_menu` VALUES ('8', '166');
INSERT INTO `ball_group_menu` VALUES ('8', '167');
INSERT INTO `ball_group_menu` VALUES ('8', '144');
INSERT INTO `ball_group_menu` VALUES ('8', '145');
INSERT INTO `ball_group_menu` VALUES ('8', '146');
INSERT INTO `ball_group_menu` VALUES ('8', '9');
INSERT INTO `ball_group_menu` VALUES ('8', '1');
INSERT INTO `ball_group_menu` VALUES ('8', '2');
INSERT INTO `ball_group_menu` VALUES ('8', '3');
INSERT INTO `ball_group_menu` VALUES ('8', '4');
INSERT INTO `ball_group_menu` VALUES ('8', '5');
INSERT INTO `ball_group_menu` VALUES ('8', '6');
INSERT INTO `ball_group_menu` VALUES ('8', '7');
INSERT INTO `ball_group_menu` VALUES ('8', '8');
INSERT INTO `ball_group_menu` VALUES ('8', '10');
INSERT INTO `ball_group_menu` VALUES ('8', '39');
INSERT INTO `ball_group_menu` VALUES ('8', '117');
INSERT INTO `ball_group_menu` VALUES ('8', '143');
INSERT INTO `ball_group_menu` VALUES ('9', '11');
INSERT INTO `ball_group_menu` VALUES ('9', '13');
INSERT INTO `ball_group_menu` VALUES ('9', '14');
INSERT INTO `ball_group_menu` VALUES ('9', '15');
INSERT INTO `ball_group_menu` VALUES ('9', '16');
INSERT INTO `ball_group_menu` VALUES ('9', '17');
INSERT INTO `ball_group_menu` VALUES ('9', '18');
INSERT INTO `ball_group_menu` VALUES ('9', '19');
INSERT INTO `ball_group_menu` VALUES ('9', '20');
INSERT INTO `ball_group_menu` VALUES ('9', '21');
INSERT INTO `ball_group_menu` VALUES ('9', '149');
INSERT INTO `ball_group_menu` VALUES ('9', '177');
INSERT INTO `ball_group_menu` VALUES ('9', '173');
INSERT INTO `ball_group_menu` VALUES ('9', '174');
INSERT INTO `ball_group_menu` VALUES ('9', '175');
INSERT INTO `ball_group_menu` VALUES ('9', '176');
INSERT INTO `ball_group_menu` VALUES ('9', '22');
INSERT INTO `ball_group_menu` VALUES ('9', '23');
INSERT INTO `ball_group_menu` VALUES ('9', '24');
INSERT INTO `ball_group_menu` VALUES ('9', '25');
INSERT INTO `ball_group_menu` VALUES ('9', '26');
INSERT INTO `ball_group_menu` VALUES ('9', '27');
INSERT INTO `ball_group_menu` VALUES ('9', '28');
INSERT INTO `ball_group_menu` VALUES ('9', '29');
INSERT INTO `ball_group_menu` VALUES ('9', '155');
INSERT INTO `ball_group_menu` VALUES ('9', '161');
INSERT INTO `ball_group_menu` VALUES ('9', '162');
INSERT INTO `ball_group_menu` VALUES ('9', '179');
INSERT INTO `ball_group_menu` VALUES ('9', '30');
INSERT INTO `ball_group_menu` VALUES ('9', '31');
INSERT INTO `ball_group_menu` VALUES ('9', '32');
INSERT INTO `ball_group_menu` VALUES ('9', '33');
INSERT INTO `ball_group_menu` VALUES ('9', '34');
INSERT INTO `ball_group_menu` VALUES ('9', '35');
INSERT INTO `ball_group_menu` VALUES ('9', '36');
INSERT INTO `ball_group_menu` VALUES ('9', '37');
INSERT INTO `ball_group_menu` VALUES ('9', '38');
INSERT INTO `ball_group_menu` VALUES ('9', '47');
INSERT INTO `ball_group_menu` VALUES ('9', '48');
INSERT INTO `ball_group_menu` VALUES ('9', '53');
INSERT INTO `ball_group_menu` VALUES ('9', '54');
INSERT INTO `ball_group_menu` VALUES ('9', '55');
INSERT INTO `ball_group_menu` VALUES ('9', '56');
INSERT INTO `ball_group_menu` VALUES ('9', '57');
INSERT INTO `ball_group_menu` VALUES ('9', '58');
INSERT INTO `ball_group_menu` VALUES ('9', '59');
INSERT INTO `ball_group_menu` VALUES ('9', '60');
INSERT INTO `ball_group_menu` VALUES ('9', '61');
INSERT INTO `ball_group_menu` VALUES ('9', '62');
INSERT INTO `ball_group_menu` VALUES ('9', '63');
INSERT INTO `ball_group_menu` VALUES ('9', '64');
INSERT INTO `ball_group_menu` VALUES ('9', '65');
INSERT INTO `ball_group_menu` VALUES ('9', '66');
INSERT INTO `ball_group_menu` VALUES ('9', '168');
INSERT INTO `ball_group_menu` VALUES ('9', '169');
INSERT INTO `ball_group_menu` VALUES ('9', '170');
INSERT INTO `ball_group_menu` VALUES ('9', '171');
INSERT INTO `ball_group_menu` VALUES ('9', '172');
INSERT INTO `ball_group_menu` VALUES ('9', '67');
INSERT INTO `ball_group_menu` VALUES ('9', '68');
INSERT INTO `ball_group_menu` VALUES ('9', '69');
INSERT INTO `ball_group_menu` VALUES ('9', '70');
INSERT INTO `ball_group_menu` VALUES ('9', '71');
INSERT INTO `ball_group_menu` VALUES ('9', '72');
INSERT INTO `ball_group_menu` VALUES ('9', '73');
INSERT INTO `ball_group_menu` VALUES ('9', '74');
INSERT INTO `ball_group_menu` VALUES ('9', '75');
INSERT INTO `ball_group_menu` VALUES ('9', '76');
INSERT INTO `ball_group_menu` VALUES ('9', '77');
INSERT INTO `ball_group_menu` VALUES ('9', '78');
INSERT INTO `ball_group_menu` VALUES ('9', '79');
INSERT INTO `ball_group_menu` VALUES ('9', '80');
INSERT INTO `ball_group_menu` VALUES ('9', '81');
INSERT INTO `ball_group_menu` VALUES ('9', '82');
INSERT INTO `ball_group_menu` VALUES ('9', '83');
INSERT INTO `ball_group_menu` VALUES ('9', '84');
INSERT INTO `ball_group_menu` VALUES ('9', '85');
INSERT INTO `ball_group_menu` VALUES ('9', '86');
INSERT INTO `ball_group_menu` VALUES ('9', '87');
INSERT INTO `ball_group_menu` VALUES ('9', '88');
INSERT INTO `ball_group_menu` VALUES ('9', '89');
INSERT INTO `ball_group_menu` VALUES ('9', '90');
INSERT INTO `ball_group_menu` VALUES ('9', '91');
INSERT INTO `ball_group_menu` VALUES ('9', '92');
INSERT INTO `ball_group_menu` VALUES ('9', '93');
INSERT INTO `ball_group_menu` VALUES ('9', '94');
INSERT INTO `ball_group_menu` VALUES ('9', '95');
INSERT INTO `ball_group_menu` VALUES ('9', '96');
INSERT INTO `ball_group_menu` VALUES ('9', '97');
INSERT INTO `ball_group_menu` VALUES ('9', '150');
INSERT INTO `ball_group_menu` VALUES ('9', '151');
INSERT INTO `ball_group_menu` VALUES ('9', '152');
INSERT INTO `ball_group_menu` VALUES ('9', '153');
INSERT INTO `ball_group_menu` VALUES ('9', '154');
INSERT INTO `ball_group_menu` VALUES ('9', '98');
INSERT INTO `ball_group_menu` VALUES ('9', '99');
INSERT INTO `ball_group_menu` VALUES ('9', '100');
INSERT INTO `ball_group_menu` VALUES ('9', '101');
INSERT INTO `ball_group_menu` VALUES ('9', '102');
INSERT INTO `ball_group_menu` VALUES ('9', '103');
INSERT INTO `ball_group_menu` VALUES ('9', '104');
INSERT INTO `ball_group_menu` VALUES ('9', '105');
INSERT INTO `ball_group_menu` VALUES ('9', '106');
INSERT INTO `ball_group_menu` VALUES ('9', '107');
INSERT INTO `ball_group_menu` VALUES ('9', '108');
INSERT INTO `ball_group_menu` VALUES ('9', '109');
INSERT INTO `ball_group_menu` VALUES ('9', '110');
INSERT INTO `ball_group_menu` VALUES ('9', '111');
INSERT INTO `ball_group_menu` VALUES ('9', '112');
INSERT INTO `ball_group_menu` VALUES ('9', '113');
INSERT INTO `ball_group_menu` VALUES ('9', '114');
INSERT INTO `ball_group_menu` VALUES ('9', '115');
INSERT INTO `ball_group_menu` VALUES ('9', '116');
INSERT INTO `ball_group_menu` VALUES ('9', '137');
INSERT INTO `ball_group_menu` VALUES ('9', '138');
INSERT INTO `ball_group_menu` VALUES ('9', '139');
INSERT INTO `ball_group_menu` VALUES ('9', '140');
INSERT INTO `ball_group_menu` VALUES ('9', '141');
INSERT INTO `ball_group_menu` VALUES ('9', '142');
INSERT INTO `ball_group_menu` VALUES ('9', '163');
INSERT INTO `ball_group_menu` VALUES ('9', '164');
INSERT INTO `ball_group_menu` VALUES ('9', '165');
INSERT INTO `ball_group_menu` VALUES ('9', '166');
INSERT INTO `ball_group_menu` VALUES ('9', '167');
INSERT INTO `ball_group_menu` VALUES ('9', '144');
INSERT INTO `ball_group_menu` VALUES ('9', '145');
INSERT INTO `ball_group_menu` VALUES ('9', '146');
INSERT INTO `ball_group_menu` VALUES ('9', '9');
INSERT INTO `ball_group_menu` VALUES ('9', '1');
INSERT INTO `ball_group_menu` VALUES ('9', '2');
INSERT INTO `ball_group_menu` VALUES ('9', '3');
INSERT INTO `ball_group_menu` VALUES ('9', '4');
INSERT INTO `ball_group_menu` VALUES ('9', '5');
INSERT INTO `ball_group_menu` VALUES ('9', '6');
INSERT INTO `ball_group_menu` VALUES ('9', '7');
INSERT INTO `ball_group_menu` VALUES ('9', '8');
INSERT INTO `ball_group_menu` VALUES ('9', '10');
INSERT INTO `ball_group_menu` VALUES ('9', '39');
INSERT INTO `ball_group_menu` VALUES ('9', '117');
INSERT INTO `ball_group_menu` VALUES ('9', '143');
INSERT INTO `ball_group_menu` VALUES ('1', '187');
INSERT INTO `ball_group_menu` VALUES ('6', '10');
INSERT INTO `ball_group_menu` VALUES ('6', '11');
INSERT INTO `ball_group_menu` VALUES ('6', '13');
INSERT INTO `ball_group_menu` VALUES ('6', '14');
INSERT INTO `ball_group_menu` VALUES ('6', '15');
INSERT INTO `ball_group_menu` VALUES ('6', '16');
INSERT INTO `ball_group_menu` VALUES ('6', '17');
INSERT INTO `ball_group_menu` VALUES ('6', '18');
INSERT INTO `ball_group_menu` VALUES ('6', '19');
INSERT INTO `ball_group_menu` VALUES ('6', '20');
INSERT INTO `ball_group_menu` VALUES ('6', '21');
INSERT INTO `ball_group_menu` VALUES ('6', '149');
INSERT INTO `ball_group_menu` VALUES ('6', '177');
INSERT INTO `ball_group_menu` VALUES ('6', '12');
INSERT INTO `ball_group_menu` VALUES ('6', '173');
INSERT INTO `ball_group_menu` VALUES ('6', '174');
INSERT INTO `ball_group_menu` VALUES ('6', '175');
INSERT INTO `ball_group_menu` VALUES ('6', '176');
INSERT INTO `ball_group_menu` VALUES ('6', '22');
INSERT INTO `ball_group_menu` VALUES ('6', '23');
INSERT INTO `ball_group_menu` VALUES ('6', '24');
INSERT INTO `ball_group_menu` VALUES ('6', '25');
INSERT INTO `ball_group_menu` VALUES ('6', '26');
INSERT INTO `ball_group_menu` VALUES ('6', '27');
INSERT INTO `ball_group_menu` VALUES ('6', '28');
INSERT INTO `ball_group_menu` VALUES ('6', '29');
INSERT INTO `ball_group_menu` VALUES ('6', '155');
INSERT INTO `ball_group_menu` VALUES ('6', '161');
INSERT INTO `ball_group_menu` VALUES ('6', '162');
INSERT INTO `ball_group_menu` VALUES ('6', '179');
INSERT INTO `ball_group_menu` VALUES ('6', '30');
INSERT INTO `ball_group_menu` VALUES ('6', '31');
INSERT INTO `ball_group_menu` VALUES ('6', '32');
INSERT INTO `ball_group_menu` VALUES ('6', '33');
INSERT INTO `ball_group_menu` VALUES ('6', '34');
INSERT INTO `ball_group_menu` VALUES ('6', '35');
INSERT INTO `ball_group_menu` VALUES ('6', '36');
INSERT INTO `ball_group_menu` VALUES ('6', '37');
INSERT INTO `ball_group_menu` VALUES ('6', '38');
INSERT INTO `ball_group_menu` VALUES ('6', '39');
INSERT INTO `ball_group_menu` VALUES ('6', '40');
INSERT INTO `ball_group_menu` VALUES ('6', '41');
INSERT INTO `ball_group_menu` VALUES ('6', '42');
INSERT INTO `ball_group_menu` VALUES ('6', '43');
INSERT INTO `ball_group_menu` VALUES ('6', '44');
INSERT INTO `ball_group_menu` VALUES ('6', '45');
INSERT INTO `ball_group_menu` VALUES ('6', '46');
INSERT INTO `ball_group_menu` VALUES ('6', '47');
INSERT INTO `ball_group_menu` VALUES ('6', '48');
INSERT INTO `ball_group_menu` VALUES ('6', '49');
INSERT INTO `ball_group_menu` VALUES ('6', '50');
INSERT INTO `ball_group_menu` VALUES ('6', '51');
INSERT INTO `ball_group_menu` VALUES ('6', '52');
INSERT INTO `ball_group_menu` VALUES ('6', '178');
INSERT INTO `ball_group_menu` VALUES ('6', '53');
INSERT INTO `ball_group_menu` VALUES ('6', '54');
INSERT INTO `ball_group_menu` VALUES ('6', '55');
INSERT INTO `ball_group_menu` VALUES ('6', '56');
INSERT INTO `ball_group_menu` VALUES ('6', '57');
INSERT INTO `ball_group_menu` VALUES ('6', '58');
INSERT INTO `ball_group_menu` VALUES ('6', '59');
INSERT INTO `ball_group_menu` VALUES ('6', '60');
INSERT INTO `ball_group_menu` VALUES ('6', '61');
INSERT INTO `ball_group_menu` VALUES ('6', '62');
INSERT INTO `ball_group_menu` VALUES ('6', '63');
INSERT INTO `ball_group_menu` VALUES ('6', '64');
INSERT INTO `ball_group_menu` VALUES ('6', '65');
INSERT INTO `ball_group_menu` VALUES ('6', '66');
INSERT INTO `ball_group_menu` VALUES ('6', '168');
INSERT INTO `ball_group_menu` VALUES ('6', '169');
INSERT INTO `ball_group_menu` VALUES ('6', '170');
INSERT INTO `ball_group_menu` VALUES ('6', '171');
INSERT INTO `ball_group_menu` VALUES ('6', '172');
INSERT INTO `ball_group_menu` VALUES ('6', '67');
INSERT INTO `ball_group_menu` VALUES ('6', '68');
INSERT INTO `ball_group_menu` VALUES ('6', '69');
INSERT INTO `ball_group_menu` VALUES ('6', '70');
INSERT INTO `ball_group_menu` VALUES ('6', '71');
INSERT INTO `ball_group_menu` VALUES ('6', '72');
INSERT INTO `ball_group_menu` VALUES ('6', '73');
INSERT INTO `ball_group_menu` VALUES ('6', '74');
INSERT INTO `ball_group_menu` VALUES ('6', '75');
INSERT INTO `ball_group_menu` VALUES ('6', '76');
INSERT INTO `ball_group_menu` VALUES ('6', '77');
INSERT INTO `ball_group_menu` VALUES ('6', '78');
INSERT INTO `ball_group_menu` VALUES ('6', '79');
INSERT INTO `ball_group_menu` VALUES ('6', '80');
INSERT INTO `ball_group_menu` VALUES ('6', '81');
INSERT INTO `ball_group_menu` VALUES ('6', '82');
INSERT INTO `ball_group_menu` VALUES ('6', '83');
INSERT INTO `ball_group_menu` VALUES ('6', '84');
INSERT INTO `ball_group_menu` VALUES ('6', '85');
INSERT INTO `ball_group_menu` VALUES ('6', '86');
INSERT INTO `ball_group_menu` VALUES ('6', '87');
INSERT INTO `ball_group_menu` VALUES ('6', '88');
INSERT INTO `ball_group_menu` VALUES ('6', '89');
INSERT INTO `ball_group_menu` VALUES ('6', '90');
INSERT INTO `ball_group_menu` VALUES ('6', '91');
INSERT INTO `ball_group_menu` VALUES ('6', '92');
INSERT INTO `ball_group_menu` VALUES ('6', '93');
INSERT INTO `ball_group_menu` VALUES ('6', '94');
INSERT INTO `ball_group_menu` VALUES ('6', '95');
INSERT INTO `ball_group_menu` VALUES ('6', '96');
INSERT INTO `ball_group_menu` VALUES ('6', '97');
INSERT INTO `ball_group_menu` VALUES ('6', '150');
INSERT INTO `ball_group_menu` VALUES ('6', '151');
INSERT INTO `ball_group_menu` VALUES ('6', '152');
INSERT INTO `ball_group_menu` VALUES ('6', '153');
INSERT INTO `ball_group_menu` VALUES ('6', '154');
INSERT INTO `ball_group_menu` VALUES ('6', '98');
INSERT INTO `ball_group_menu` VALUES ('6', '99');
INSERT INTO `ball_group_menu` VALUES ('6', '100');
INSERT INTO `ball_group_menu` VALUES ('6', '101');
INSERT INTO `ball_group_menu` VALUES ('6', '102');
INSERT INTO `ball_group_menu` VALUES ('6', '103');
INSERT INTO `ball_group_menu` VALUES ('6', '104');
INSERT INTO `ball_group_menu` VALUES ('6', '105');
INSERT INTO `ball_group_menu` VALUES ('6', '106');
INSERT INTO `ball_group_menu` VALUES ('6', '107');
INSERT INTO `ball_group_menu` VALUES ('6', '108');
INSERT INTO `ball_group_menu` VALUES ('6', '109');
INSERT INTO `ball_group_menu` VALUES ('6', '110');
INSERT INTO `ball_group_menu` VALUES ('6', '111');
INSERT INTO `ball_group_menu` VALUES ('6', '112');
INSERT INTO `ball_group_menu` VALUES ('6', '113');
INSERT INTO `ball_group_menu` VALUES ('6', '114');
INSERT INTO `ball_group_menu` VALUES ('6', '115');
INSERT INTO `ball_group_menu` VALUES ('6', '116');
INSERT INTO `ball_group_menu` VALUES ('6', '144');
INSERT INTO `ball_group_menu` VALUES ('6', '145');
INSERT INTO `ball_group_menu` VALUES ('6', '146');
INSERT INTO `ball_group_menu` VALUES ('6', '1');
INSERT INTO `ball_group_menu` VALUES ('6', '2');
INSERT INTO `ball_group_menu` VALUES ('6', '3');
INSERT INTO `ball_group_menu` VALUES ('6', '4');
INSERT INTO `ball_group_menu` VALUES ('6', '143');
INSERT INTO `ball_group_menu` VALUES ('6', '9');
INSERT INTO `ball_group_menu` VALUES ('3', '11');
INSERT INTO `ball_group_menu` VALUES ('3', '13');
INSERT INTO `ball_group_menu` VALUES ('3', '14');
INSERT INTO `ball_group_menu` VALUES ('3', '15');
INSERT INTO `ball_group_menu` VALUES ('3', '16');
INSERT INTO `ball_group_menu` VALUES ('3', '17');
INSERT INTO `ball_group_menu` VALUES ('3', '18');
INSERT INTO `ball_group_menu` VALUES ('3', '19');
INSERT INTO `ball_group_menu` VALUES ('3', '20');
INSERT INTO `ball_group_menu` VALUES ('3', '21');
INSERT INTO `ball_group_menu` VALUES ('3', '149');
INSERT INTO `ball_group_menu` VALUES ('3', '177');
INSERT INTO `ball_group_menu` VALUES ('3', '173');
INSERT INTO `ball_group_menu` VALUES ('3', '174');
INSERT INTO `ball_group_menu` VALUES ('3', '175');
INSERT INTO `ball_group_menu` VALUES ('3', '176');
INSERT INTO `ball_group_menu` VALUES ('3', '22');
INSERT INTO `ball_group_menu` VALUES ('3', '23');
INSERT INTO `ball_group_menu` VALUES ('3', '24');
INSERT INTO `ball_group_menu` VALUES ('3', '25');
INSERT INTO `ball_group_menu` VALUES ('3', '26');
INSERT INTO `ball_group_menu` VALUES ('3', '27');
INSERT INTO `ball_group_menu` VALUES ('3', '28');
INSERT INTO `ball_group_menu` VALUES ('3', '29');
INSERT INTO `ball_group_menu` VALUES ('3', '155');
INSERT INTO `ball_group_menu` VALUES ('3', '161');
INSERT INTO `ball_group_menu` VALUES ('3', '162');
INSERT INTO `ball_group_menu` VALUES ('3', '179');
INSERT INTO `ball_group_menu` VALUES ('3', '30');
INSERT INTO `ball_group_menu` VALUES ('3', '31');
INSERT INTO `ball_group_menu` VALUES ('3', '32');
INSERT INTO `ball_group_menu` VALUES ('3', '33');
INSERT INTO `ball_group_menu` VALUES ('3', '34');
INSERT INTO `ball_group_menu` VALUES ('3', '35');
INSERT INTO `ball_group_menu` VALUES ('3', '36');
INSERT INTO `ball_group_menu` VALUES ('3', '37');
INSERT INTO `ball_group_menu` VALUES ('3', '38');
INSERT INTO `ball_group_menu` VALUES ('3', '47');
INSERT INTO `ball_group_menu` VALUES ('3', '48');
INSERT INTO `ball_group_menu` VALUES ('3', '49');
INSERT INTO `ball_group_menu` VALUES ('3', '50');
INSERT INTO `ball_group_menu` VALUES ('3', '53');
INSERT INTO `ball_group_menu` VALUES ('3', '54');
INSERT INTO `ball_group_menu` VALUES ('3', '55');
INSERT INTO `ball_group_menu` VALUES ('3', '56');
INSERT INTO `ball_group_menu` VALUES ('3', '57');
INSERT INTO `ball_group_menu` VALUES ('3', '58');
INSERT INTO `ball_group_menu` VALUES ('3', '59');
INSERT INTO `ball_group_menu` VALUES ('3', '60');
INSERT INTO `ball_group_menu` VALUES ('3', '61');
INSERT INTO `ball_group_menu` VALUES ('3', '62');
INSERT INTO `ball_group_menu` VALUES ('3', '63');
INSERT INTO `ball_group_menu` VALUES ('3', '64');
INSERT INTO `ball_group_menu` VALUES ('3', '65');
INSERT INTO `ball_group_menu` VALUES ('3', '66');
INSERT INTO `ball_group_menu` VALUES ('3', '168');
INSERT INTO `ball_group_menu` VALUES ('3', '169');
INSERT INTO `ball_group_menu` VALUES ('3', '170');
INSERT INTO `ball_group_menu` VALUES ('3', '171');
INSERT INTO `ball_group_menu` VALUES ('3', '172');
INSERT INTO `ball_group_menu` VALUES ('3', '67');
INSERT INTO `ball_group_menu` VALUES ('3', '68');
INSERT INTO `ball_group_menu` VALUES ('3', '69');
INSERT INTO `ball_group_menu` VALUES ('3', '70');
INSERT INTO `ball_group_menu` VALUES ('3', '71');
INSERT INTO `ball_group_menu` VALUES ('3', '72');
INSERT INTO `ball_group_menu` VALUES ('3', '73');
INSERT INTO `ball_group_menu` VALUES ('3', '74');
INSERT INTO `ball_group_menu` VALUES ('3', '75');
INSERT INTO `ball_group_menu` VALUES ('3', '76');
INSERT INTO `ball_group_menu` VALUES ('3', '77');
INSERT INTO `ball_group_menu` VALUES ('3', '78');
INSERT INTO `ball_group_menu` VALUES ('3', '79');
INSERT INTO `ball_group_menu` VALUES ('3', '80');
INSERT INTO `ball_group_menu` VALUES ('3', '81');
INSERT INTO `ball_group_menu` VALUES ('3', '82');
INSERT INTO `ball_group_menu` VALUES ('3', '83');
INSERT INTO `ball_group_menu` VALUES ('3', '84');
INSERT INTO `ball_group_menu` VALUES ('3', '85');
INSERT INTO `ball_group_menu` VALUES ('3', '86');
INSERT INTO `ball_group_menu` VALUES ('3', '87');
INSERT INTO `ball_group_menu` VALUES ('3', '88');
INSERT INTO `ball_group_menu` VALUES ('3', '89');
INSERT INTO `ball_group_menu` VALUES ('3', '90');
INSERT INTO `ball_group_menu` VALUES ('3', '91');
INSERT INTO `ball_group_menu` VALUES ('3', '92');
INSERT INTO `ball_group_menu` VALUES ('3', '93');
INSERT INTO `ball_group_menu` VALUES ('3', '94');
INSERT INTO `ball_group_menu` VALUES ('3', '95');
INSERT INTO `ball_group_menu` VALUES ('3', '187');
INSERT INTO `ball_group_menu` VALUES ('3', '96');
INSERT INTO `ball_group_menu` VALUES ('3', '97');
INSERT INTO `ball_group_menu` VALUES ('3', '150');
INSERT INTO `ball_group_menu` VALUES ('3', '151');
INSERT INTO `ball_group_menu` VALUES ('3', '152');
INSERT INTO `ball_group_menu` VALUES ('3', '153');
INSERT INTO `ball_group_menu` VALUES ('3', '154');
INSERT INTO `ball_group_menu` VALUES ('3', '180');
INSERT INTO `ball_group_menu` VALUES ('3', '181');
INSERT INTO `ball_group_menu` VALUES ('3', '182');
INSERT INTO `ball_group_menu` VALUES ('3', '183');
INSERT INTO `ball_group_menu` VALUES ('3', '184');
INSERT INTO `ball_group_menu` VALUES ('3', '185');
INSERT INTO `ball_group_menu` VALUES ('3', '98');
INSERT INTO `ball_group_menu` VALUES ('3', '99');
INSERT INTO `ball_group_menu` VALUES ('3', '100');
INSERT INTO `ball_group_menu` VALUES ('3', '101');
INSERT INTO `ball_group_menu` VALUES ('3', '102');
INSERT INTO `ball_group_menu` VALUES ('3', '103');
INSERT INTO `ball_group_menu` VALUES ('3', '104');
INSERT INTO `ball_group_menu` VALUES ('3', '105');
INSERT INTO `ball_group_menu` VALUES ('3', '106');
INSERT INTO `ball_group_menu` VALUES ('3', '107');
INSERT INTO `ball_group_menu` VALUES ('3', '108');
INSERT INTO `ball_group_menu` VALUES ('3', '109');
INSERT INTO `ball_group_menu` VALUES ('3', '110');
INSERT INTO `ball_group_menu` VALUES ('3', '111');
INSERT INTO `ball_group_menu` VALUES ('3', '112');
INSERT INTO `ball_group_menu` VALUES ('3', '113');
INSERT INTO `ball_group_menu` VALUES ('3', '114');
INSERT INTO `ball_group_menu` VALUES ('3', '115');
INSERT INTO `ball_group_menu` VALUES ('3', '116');
INSERT INTO `ball_group_menu` VALUES ('3', '137');
INSERT INTO `ball_group_menu` VALUES ('3', '138');
INSERT INTO `ball_group_menu` VALUES ('3', '139');
INSERT INTO `ball_group_menu` VALUES ('3', '140');
INSERT INTO `ball_group_menu` VALUES ('3', '141');
INSERT INTO `ball_group_menu` VALUES ('3', '142');
INSERT INTO `ball_group_menu` VALUES ('3', '163');
INSERT INTO `ball_group_menu` VALUES ('3', '164');
INSERT INTO `ball_group_menu` VALUES ('3', '165');
INSERT INTO `ball_group_menu` VALUES ('3', '166');
INSERT INTO `ball_group_menu` VALUES ('3', '167');
INSERT INTO `ball_group_menu` VALUES ('3', '144');
INSERT INTO `ball_group_menu` VALUES ('3', '145');
INSERT INTO `ball_group_menu` VALUES ('3', '146');
INSERT INTO `ball_group_menu` VALUES ('3', '10');
INSERT INTO `ball_group_menu` VALUES ('3', '39');
INSERT INTO `ball_group_menu` VALUES ('3', '117');
INSERT INTO `ball_group_menu` VALUES ('3', '143');
INSERT INTO `ball_group_menu` VALUES ('2', '15');
INSERT INTO `ball_group_menu` VALUES ('2', '174');
INSERT INTO `ball_group_menu` VALUES ('2', '176');
INSERT INTO `ball_group_menu` VALUES ('2', '23');
INSERT INTO `ball_group_menu` VALUES ('2', '24');
INSERT INTO `ball_group_menu` VALUES ('2', '25');
INSERT INTO `ball_group_menu` VALUES ('2', '26');
INSERT INTO `ball_group_menu` VALUES ('2', '27');
INSERT INTO `ball_group_menu` VALUES ('2', '28');
INSERT INTO `ball_group_menu` VALUES ('2', '29');
INSERT INTO `ball_group_menu` VALUES ('2', '155');
INSERT INTO `ball_group_menu` VALUES ('2', '161');
INSERT INTO `ball_group_menu` VALUES ('2', '162');
INSERT INTO `ball_group_menu` VALUES ('2', '179');
INSERT INTO `ball_group_menu` VALUES ('2', '30');
INSERT INTO `ball_group_menu` VALUES ('2', '31');
INSERT INTO `ball_group_menu` VALUES ('2', '32');
INSERT INTO `ball_group_menu` VALUES ('2', '33');
INSERT INTO `ball_group_menu` VALUES ('2', '34');
INSERT INTO `ball_group_menu` VALUES ('2', '38');
INSERT INTO `ball_group_menu` VALUES ('2', '47');
INSERT INTO `ball_group_menu` VALUES ('2', '48');
INSERT INTO `ball_group_menu` VALUES ('2', '49');
INSERT INTO `ball_group_menu` VALUES ('2', '50');
INSERT INTO `ball_group_menu` VALUES ('2', '55');
INSERT INTO `ball_group_menu` VALUES ('2', '78');
INSERT INTO `ball_group_menu` VALUES ('2', '81');
INSERT INTO `ball_group_menu` VALUES ('2', '86');
INSERT INTO `ball_group_menu` VALUES ('2', '89');
INSERT INTO `ball_group_menu` VALUES ('2', '90');
INSERT INTO `ball_group_menu` VALUES ('2', '93');
INSERT INTO `ball_group_menu` VALUES ('2', '96');
INSERT INTO `ball_group_menu` VALUES ('2', '97');
INSERT INTO `ball_group_menu` VALUES ('2', '151');
INSERT INTO `ball_group_menu` VALUES ('2', '184');
INSERT INTO `ball_group_menu` VALUES ('2', '144');
INSERT INTO `ball_group_menu` VALUES ('2', '145');
INSERT INTO `ball_group_menu` VALUES ('2', '146');
INSERT INTO `ball_group_menu` VALUES ('2', '10');
INSERT INTO `ball_group_menu` VALUES ('2', '11');
INSERT INTO `ball_group_menu` VALUES ('2', '173');
INSERT INTO `ball_group_menu` VALUES ('2', '22');
INSERT INTO `ball_group_menu` VALUES ('2', '35');
INSERT INTO `ball_group_menu` VALUES ('2', '39');
INSERT INTO `ball_group_menu` VALUES ('2', '53');
INSERT INTO `ball_group_menu` VALUES ('2', '54');
INSERT INTO `ball_group_menu` VALUES ('2', '67');
INSERT INTO `ball_group_menu` VALUES ('2', '74');
INSERT INTO `ball_group_menu` VALUES ('2', '80');
INSERT INTO `ball_group_menu` VALUES ('2', '85');
INSERT INTO `ball_group_menu` VALUES ('2', '88');
INSERT INTO `ball_group_menu` VALUES ('2', '92');
INSERT INTO `ball_group_menu` VALUES ('2', '150');
INSERT INTO `ball_group_menu` VALUES ('2', '180');
INSERT INTO `ball_group_menu` VALUES ('2', '143');
INSERT INTO `ball_group_menu` VALUES ('5', '15');
INSERT INTO `ball_group_menu` VALUES ('5', '16');
INSERT INTO `ball_group_menu` VALUES ('5', '173');
INSERT INTO `ball_group_menu` VALUES ('5', '174');
INSERT INTO `ball_group_menu` VALUES ('5', '175');
INSERT INTO `ball_group_menu` VALUES ('5', '176');
INSERT INTO `ball_group_menu` VALUES ('5', '29');
INSERT INTO `ball_group_menu` VALUES ('5', '31');
INSERT INTO `ball_group_menu` VALUES ('5', '38');
INSERT INTO `ball_group_menu` VALUES ('5', '42');
INSERT INTO `ball_group_menu` VALUES ('5', '43');
INSERT INTO `ball_group_menu` VALUES ('5', '44');
INSERT INTO `ball_group_menu` VALUES ('5', '45');
INSERT INTO `ball_group_menu` VALUES ('5', '46');
INSERT INTO `ball_group_menu` VALUES ('5', '47');
INSERT INTO `ball_group_menu` VALUES ('5', '48');
INSERT INTO `ball_group_menu` VALUES ('5', '49');
INSERT INTO `ball_group_menu` VALUES ('5', '50');
INSERT INTO `ball_group_menu` VALUES ('5', '53');
INSERT INTO `ball_group_menu` VALUES ('5', '54');
INSERT INTO `ball_group_menu` VALUES ('5', '55');
INSERT INTO `ball_group_menu` VALUES ('5', '56');
INSERT INTO `ball_group_menu` VALUES ('5', '57');
INSERT INTO `ball_group_menu` VALUES ('5', '80');
INSERT INTO `ball_group_menu` VALUES ('5', '81');
INSERT INTO `ball_group_menu` VALUES ('5', '82');
INSERT INTO `ball_group_menu` VALUES ('5', '83');
INSERT INTO `ball_group_menu` VALUES ('5', '84');
INSERT INTO `ball_group_menu` VALUES ('5', '85');
INSERT INTO `ball_group_menu` VALUES ('5', '86');
INSERT INTO `ball_group_menu` VALUES ('5', '87');
INSERT INTO `ball_group_menu` VALUES ('5', '89');
INSERT INTO `ball_group_menu` VALUES ('5', '91');
INSERT INTO `ball_group_menu` VALUES ('5', '93');
INSERT INTO `ball_group_menu` VALUES ('5', '94');
INSERT INTO `ball_group_menu` VALUES ('5', '95');
INSERT INTO `ball_group_menu` VALUES ('5', '96');
INSERT INTO `ball_group_menu` VALUES ('5', '97');
INSERT INTO `ball_group_menu` VALUES ('5', '150');
INSERT INTO `ball_group_menu` VALUES ('5', '151');
INSERT INTO `ball_group_menu` VALUES ('5', '152');
INSERT INTO `ball_group_menu` VALUES ('5', '153');
INSERT INTO `ball_group_menu` VALUES ('5', '154');
INSERT INTO `ball_group_menu` VALUES ('5', '98');
INSERT INTO `ball_group_menu` VALUES ('5', '99');
INSERT INTO `ball_group_menu` VALUES ('5', '100');
INSERT INTO `ball_group_menu` VALUES ('5', '101');
INSERT INTO `ball_group_menu` VALUES ('5', '102');
INSERT INTO `ball_group_menu` VALUES ('5', '103');
INSERT INTO `ball_group_menu` VALUES ('5', '104');
INSERT INTO `ball_group_menu` VALUES ('5', '105');
INSERT INTO `ball_group_menu` VALUES ('5', '106');
INSERT INTO `ball_group_menu` VALUES ('5', '107');
INSERT INTO `ball_group_menu` VALUES ('5', '108');
INSERT INTO `ball_group_menu` VALUES ('5', '109');
INSERT INTO `ball_group_menu` VALUES ('5', '110');
INSERT INTO `ball_group_menu` VALUES ('5', '111');
INSERT INTO `ball_group_menu` VALUES ('5', '112');
INSERT INTO `ball_group_menu` VALUES ('5', '113');
INSERT INTO `ball_group_menu` VALUES ('5', '114');
INSERT INTO `ball_group_menu` VALUES ('5', '115');
INSERT INTO `ball_group_menu` VALUES ('5', '116');
INSERT INTO `ball_group_menu` VALUES ('5', '137');
INSERT INTO `ball_group_menu` VALUES ('5', '138');
INSERT INTO `ball_group_menu` VALUES ('5', '139');
INSERT INTO `ball_group_menu` VALUES ('5', '140');
INSERT INTO `ball_group_menu` VALUES ('5', '141');
INSERT INTO `ball_group_menu` VALUES ('5', '142');
INSERT INTO `ball_group_menu` VALUES ('5', '163');
INSERT INTO `ball_group_menu` VALUES ('5', '164');
INSERT INTO `ball_group_menu` VALUES ('5', '165');
INSERT INTO `ball_group_menu` VALUES ('5', '166');
INSERT INTO `ball_group_menu` VALUES ('5', '167');
INSERT INTO `ball_group_menu` VALUES ('5', '144');
INSERT INTO `ball_group_menu` VALUES ('5', '145');
INSERT INTO `ball_group_menu` VALUES ('5', '146');
INSERT INTO `ball_group_menu` VALUES ('5', '10');
INSERT INTO `ball_group_menu` VALUES ('5', '11');
INSERT INTO `ball_group_menu` VALUES ('5', '22');
INSERT INTO `ball_group_menu` VALUES ('5', '23');
INSERT INTO `ball_group_menu` VALUES ('5', '30');
INSERT INTO `ball_group_menu` VALUES ('5', '35');
INSERT INTO `ball_group_menu` VALUES ('5', '39');
INSERT INTO `ball_group_menu` VALUES ('5', '67');
INSERT INTO `ball_group_menu` VALUES ('5', '88');
INSERT INTO `ball_group_menu` VALUES ('5', '92');
INSERT INTO `ball_group_menu` VALUES ('5', '117');
INSERT INTO `ball_group_menu` VALUES ('5', '143');
INSERT INTO `ball_group_menu` VALUES ('4', '10');
INSERT INTO `ball_group_menu` VALUES ('4', '11');
INSERT INTO `ball_group_menu` VALUES ('4', '13');
INSERT INTO `ball_group_menu` VALUES ('4', '14');
INSERT INTO `ball_group_menu` VALUES ('4', '15');
INSERT INTO `ball_group_menu` VALUES ('4', '16');
INSERT INTO `ball_group_menu` VALUES ('4', '17');
INSERT INTO `ball_group_menu` VALUES ('4', '18');
INSERT INTO `ball_group_menu` VALUES ('4', '19');
INSERT INTO `ball_group_menu` VALUES ('4', '20');
INSERT INTO `ball_group_menu` VALUES ('4', '21');
INSERT INTO `ball_group_menu` VALUES ('4', '149');
INSERT INTO `ball_group_menu` VALUES ('4', '177');
INSERT INTO `ball_group_menu` VALUES ('4', '12');
INSERT INTO `ball_group_menu` VALUES ('4', '173');
INSERT INTO `ball_group_menu` VALUES ('4', '174');
INSERT INTO `ball_group_menu` VALUES ('4', '175');
INSERT INTO `ball_group_menu` VALUES ('4', '176');
INSERT INTO `ball_group_menu` VALUES ('4', '22');
INSERT INTO `ball_group_menu` VALUES ('4', '23');
INSERT INTO `ball_group_menu` VALUES ('4', '24');
INSERT INTO `ball_group_menu` VALUES ('4', '25');
INSERT INTO `ball_group_menu` VALUES ('4', '26');
INSERT INTO `ball_group_menu` VALUES ('4', '27');
INSERT INTO `ball_group_menu` VALUES ('4', '28');
INSERT INTO `ball_group_menu` VALUES ('4', '29');
INSERT INTO `ball_group_menu` VALUES ('4', '155');
INSERT INTO `ball_group_menu` VALUES ('4', '161');
INSERT INTO `ball_group_menu` VALUES ('4', '162');
INSERT INTO `ball_group_menu` VALUES ('4', '179');
INSERT INTO `ball_group_menu` VALUES ('4', '30');
INSERT INTO `ball_group_menu` VALUES ('4', '31');
INSERT INTO `ball_group_menu` VALUES ('4', '32');
INSERT INTO `ball_group_menu` VALUES ('4', '33');
INSERT INTO `ball_group_menu` VALUES ('4', '34');
INSERT INTO `ball_group_menu` VALUES ('4', '35');
INSERT INTO `ball_group_menu` VALUES ('4', '36');
INSERT INTO `ball_group_menu` VALUES ('4', '37');
INSERT INTO `ball_group_menu` VALUES ('4', '38');
INSERT INTO `ball_group_menu` VALUES ('4', '39');
INSERT INTO `ball_group_menu` VALUES ('4', '40');
INSERT INTO `ball_group_menu` VALUES ('4', '41');
INSERT INTO `ball_group_menu` VALUES ('4', '42');
INSERT INTO `ball_group_menu` VALUES ('4', '43');
INSERT INTO `ball_group_menu` VALUES ('4', '44');
INSERT INTO `ball_group_menu` VALUES ('4', '45');
INSERT INTO `ball_group_menu` VALUES ('4', '46');
INSERT INTO `ball_group_menu` VALUES ('4', '47');
INSERT INTO `ball_group_menu` VALUES ('4', '48');
INSERT INTO `ball_group_menu` VALUES ('4', '49');
INSERT INTO `ball_group_menu` VALUES ('4', '50');
INSERT INTO `ball_group_menu` VALUES ('4', '51');
INSERT INTO `ball_group_menu` VALUES ('4', '52');
INSERT INTO `ball_group_menu` VALUES ('4', '178');
INSERT INTO `ball_group_menu` VALUES ('4', '53');
INSERT INTO `ball_group_menu` VALUES ('4', '54');
INSERT INTO `ball_group_menu` VALUES ('4', '55');
INSERT INTO `ball_group_menu` VALUES ('4', '56');
INSERT INTO `ball_group_menu` VALUES ('4', '57');
INSERT INTO `ball_group_menu` VALUES ('4', '58');
INSERT INTO `ball_group_menu` VALUES ('4', '59');
INSERT INTO `ball_group_menu` VALUES ('4', '60');
INSERT INTO `ball_group_menu` VALUES ('4', '61');
INSERT INTO `ball_group_menu` VALUES ('4', '62');
INSERT INTO `ball_group_menu` VALUES ('4', '63');
INSERT INTO `ball_group_menu` VALUES ('4', '64');
INSERT INTO `ball_group_menu` VALUES ('4', '65');
INSERT INTO `ball_group_menu` VALUES ('4', '66');
INSERT INTO `ball_group_menu` VALUES ('4', '168');
INSERT INTO `ball_group_menu` VALUES ('4', '169');
INSERT INTO `ball_group_menu` VALUES ('4', '170');
INSERT INTO `ball_group_menu` VALUES ('4', '171');
INSERT INTO `ball_group_menu` VALUES ('4', '172');
INSERT INTO `ball_group_menu` VALUES ('4', '68');
INSERT INTO `ball_group_menu` VALUES ('4', '69');
INSERT INTO `ball_group_menu` VALUES ('4', '70');
INSERT INTO `ball_group_menu` VALUES ('4', '71');
INSERT INTO `ball_group_menu` VALUES ('4', '72');
INSERT INTO `ball_group_menu` VALUES ('4', '73');
INSERT INTO `ball_group_menu` VALUES ('4', '74');
INSERT INTO `ball_group_menu` VALUES ('4', '75');
INSERT INTO `ball_group_menu` VALUES ('4', '76');
INSERT INTO `ball_group_menu` VALUES ('4', '77');
INSERT INTO `ball_group_menu` VALUES ('4', '78');
INSERT INTO `ball_group_menu` VALUES ('4', '79');
INSERT INTO `ball_group_menu` VALUES ('4', '80');
INSERT INTO `ball_group_menu` VALUES ('4', '81');
INSERT INTO `ball_group_menu` VALUES ('4', '82');
INSERT INTO `ball_group_menu` VALUES ('4', '83');
INSERT INTO `ball_group_menu` VALUES ('4', '84');
INSERT INTO `ball_group_menu` VALUES ('4', '85');
INSERT INTO `ball_group_menu` VALUES ('4', '86');
INSERT INTO `ball_group_menu` VALUES ('4', '87');
INSERT INTO `ball_group_menu` VALUES ('4', '88');
INSERT INTO `ball_group_menu` VALUES ('4', '89');
INSERT INTO `ball_group_menu` VALUES ('4', '90');
INSERT INTO `ball_group_menu` VALUES ('4', '91');
INSERT INTO `ball_group_menu` VALUES ('4', '92');
INSERT INTO `ball_group_menu` VALUES ('4', '93');
INSERT INTO `ball_group_menu` VALUES ('4', '94');
INSERT INTO `ball_group_menu` VALUES ('4', '95');
INSERT INTO `ball_group_menu` VALUES ('4', '187');
INSERT INTO `ball_group_menu` VALUES ('4', '96');
INSERT INTO `ball_group_menu` VALUES ('4', '97');
INSERT INTO `ball_group_menu` VALUES ('4', '150');
INSERT INTO `ball_group_menu` VALUES ('4', '151');
INSERT INTO `ball_group_menu` VALUES ('4', '152');
INSERT INTO `ball_group_menu` VALUES ('4', '153');
INSERT INTO `ball_group_menu` VALUES ('4', '154');
INSERT INTO `ball_group_menu` VALUES ('4', '184');
INSERT INTO `ball_group_menu` VALUES ('4', '98');
INSERT INTO `ball_group_menu` VALUES ('4', '99');
INSERT INTO `ball_group_menu` VALUES ('4', '100');
INSERT INTO `ball_group_menu` VALUES ('4', '101');
INSERT INTO `ball_group_menu` VALUES ('4', '102');
INSERT INTO `ball_group_menu` VALUES ('4', '103');
INSERT INTO `ball_group_menu` VALUES ('4', '104');
INSERT INTO `ball_group_menu` VALUES ('4', '105');
INSERT INTO `ball_group_menu` VALUES ('4', '106');
INSERT INTO `ball_group_menu` VALUES ('4', '107');
INSERT INTO `ball_group_menu` VALUES ('4', '108');
INSERT INTO `ball_group_menu` VALUES ('4', '109');
INSERT INTO `ball_group_menu` VALUES ('4', '110');
INSERT INTO `ball_group_menu` VALUES ('4', '111');
INSERT INTO `ball_group_menu` VALUES ('4', '112');
INSERT INTO `ball_group_menu` VALUES ('4', '113');
INSERT INTO `ball_group_menu` VALUES ('4', '114');
INSERT INTO `ball_group_menu` VALUES ('4', '115');
INSERT INTO `ball_group_menu` VALUES ('4', '116');
INSERT INTO `ball_group_menu` VALUES ('4', '137');
INSERT INTO `ball_group_menu` VALUES ('4', '138');
INSERT INTO `ball_group_menu` VALUES ('4', '139');
INSERT INTO `ball_group_menu` VALUES ('4', '140');
INSERT INTO `ball_group_menu` VALUES ('4', '141');
INSERT INTO `ball_group_menu` VALUES ('4', '142');
INSERT INTO `ball_group_menu` VALUES ('4', '163');
INSERT INTO `ball_group_menu` VALUES ('4', '164');
INSERT INTO `ball_group_menu` VALUES ('4', '165');
INSERT INTO `ball_group_menu` VALUES ('4', '166');
INSERT INTO `ball_group_menu` VALUES ('4', '167');
INSERT INTO `ball_group_menu` VALUES ('4', '144');
INSERT INTO `ball_group_menu` VALUES ('4', '145');
INSERT INTO `ball_group_menu` VALUES ('4', '146');
INSERT INTO `ball_group_menu` VALUES ('4', '67');
INSERT INTO `ball_group_menu` VALUES ('4', '180');
INSERT INTO `ball_group_menu` VALUES ('4', '117');
INSERT INTO `ball_group_menu` VALUES ('4', '143');
INSERT INTO `ball_group_menu` VALUES ('1', '188');
INSERT INTO `ball_group_menu` VALUES ('1', '189');
INSERT INTO `ball_group_menu` VALUES ('1', '190');
INSERT INTO `ball_group_menu` VALUES ('1', '191');
INSERT INTO `ball_group_menu` VALUES ('1', '192');

-- ----------------------------
-- Table structure for ball_ip_country
-- ----------------------------
DROP TABLE IF EXISTS `ball_ip_country`;
CREATE TABLE `ball_ip_country` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(100) DEFAULT '' COMMENT '国家',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `status` tinyint(4) DEFAULT '1' COMMENT '1正常 2禁用',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_unique` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COMMENT='系统公告';

-- ----------------------------
-- Records of ball_ip_country
-- ----------------------------
INSERT INTO `ball_ip_country` VALUES ('1', '柬埔寨', '', '1', '1660495983912', '0');
INSERT INTO `ball_ip_country` VALUES ('2', '台湾', '', '1', '1660496184369', '0');
INSERT INTO `ball_ip_country` VALUES ('3', '新加坡', '', '1', '1660496886730', '0');
INSERT INTO `ball_ip_country` VALUES ('4', '中国', '', '1', '1660500423219', '0');
INSERT INTO `ball_ip_country` VALUES ('5', '香港', '', '1', '1660548429043', '0');
INSERT INTO `ball_ip_country` VALUES ('6', '美国', '', '1', '1660727529648', '0');
INSERT INTO `ball_ip_country` VALUES ('7', '印度', '', '1', '1660818483862', '0');
INSERT INTO `ball_ip_country` VALUES ('9', '荷兰', '', '1', '1660832370069', '0');
INSERT INTO `ball_ip_country` VALUES ('10', '埃塞俄比亚', '', '1', '1660846895385', '0');
INSERT INTO `ball_ip_country` VALUES ('13', '英国', '', '1', '1660848578699', '0');
INSERT INTO `ball_ip_country` VALUES ('14', '俄罗斯联邦', '', '1', '1660848604334', '0');
INSERT INTO `ball_ip_country` VALUES ('15', '法国', '', '1', '1660852414549', '0');
INSERT INTO `ball_ip_country` VALUES ('16', '加拿大', '', '1', '1660876660064', '0');
INSERT INTO `ball_ip_country` VALUES ('17', '菲律宾', '', '1', '1660894178409', '0');
INSERT INTO `ball_ip_country` VALUES ('19', '坦桑尼亚', '', '1', '1660895162887', '0');
INSERT INTO `ball_ip_country` VALUES ('20', '以色列', '', '1', '1660895778519', '0');
INSERT INTO `ball_ip_country` VALUES ('22', '白俄罗斯', '', '1', '1660900240034', '0');
INSERT INTO `ball_ip_country` VALUES ('23', '泰国', '', '1', '1660915832399', '0');
INSERT INTO `ball_ip_country` VALUES ('26', '德国', '', '1', '1660929248617', '0');
INSERT INTO `ball_ip_country` VALUES ('27', '厄立特里亚', '', '1', '1660995346960', '0');
INSERT INTO `ball_ip_country` VALUES ('29', '日本', '', '1', '1660998454463', '0');
INSERT INTO `ball_ip_country` VALUES ('30', '土耳其', '', '1', '1661002661281', '0');
INSERT INTO `ball_ip_country` VALUES ('31', '北马里亚纳', '', '1', '1661004266860', '0');
INSERT INTO `ball_ip_country` VALUES ('32', '墨西哥', '', '1', '1661010260003', '0');
INSERT INTO `ball_ip_country` VALUES ('33', '印度尼西亚', '', '1', '1661010661712', '0');
INSERT INTO `ball_ip_country` VALUES ('36', '委内瑞拉', '', '1', '1661011116437', '0');
INSERT INTO `ball_ip_country` VALUES ('37', '阿曼', '', '1', '1661052106013', '0');
INSERT INTO `ball_ip_country` VALUES ('38', '乌干达', '', '1', '1661063461093', '0');
INSERT INTO `ball_ip_country` VALUES ('39', '澳大利亚', '', '1', '1661066463994', '0');
INSERT INTO `ball_ip_country` VALUES ('42', '马来西亚', '', '1', '1661067796569', '0');
INSERT INTO `ball_ip_country` VALUES ('46', '越南', '', '1', '1661068008837', '0');
INSERT INTO `ball_ip_country` VALUES ('48', '阿联酋', '', '1', '1661069195470', '0');
INSERT INTO `ball_ip_country` VALUES ('49', '加纳', '', '1', '1661078880459', '0');
INSERT INTO `ball_ip_country` VALUES ('50', '马耳他', '', '1', '1661079566092', '0');
INSERT INTO `ball_ip_country` VALUES ('52', '孟加拉国', '', '1', '1661079782265', '0');
INSERT INTO `ball_ip_country` VALUES ('54', '沙特阿拉伯', '', '1', '1661082361222', '0');
INSERT INTO `ball_ip_country` VALUES ('56', '科威特', '', '1', '1661099184807', '0');
INSERT INTO `ball_ip_country` VALUES ('61', '罗马尼亚', '', '1', '1661121025702', '0');
INSERT INTO `ball_ip_country` VALUES ('62', '瑞士', '', '1', '1661145138625', '0');
INSERT INTO `ball_ip_country` VALUES ('65', '马里', '', '1', '1661150900241', '0');
INSERT INTO `ball_ip_country` VALUES ('67', '波兰', '', '1', '1661168213640', '0');
INSERT INTO `ball_ip_country` VALUES ('68', '秘鲁', '', '1', '1661177686653', '0');
INSERT INTO `ball_ip_country` VALUES ('72', '意大利', '', '1', '1661185381130', '0');
INSERT INTO `ball_ip_country` VALUES ('73', '斯洛伐克', '', '1', '1661191367774', '0');
INSERT INTO `ball_ip_country` VALUES ('75', '南非', '', '1', '1661236255873', '0');
INSERT INTO `ball_ip_country` VALUES ('76', '阿塞拜疆', '', '1', '1661239175118', '0');
INSERT INTO `ball_ip_country` VALUES ('78', '哈萨克斯坦', '', '1', '1661241465764', '0');
INSERT INTO `ball_ip_country` VALUES ('79', '埃及', '', '1', '1661244026284', '0');
INSERT INTO `ball_ip_country` VALUES ('81', '乌克兰', '', '1', '1661254190525', '0');
INSERT INTO `ball_ip_country` VALUES ('83', '阿根廷', '', '1', '1661265840594', '0');
INSERT INTO `ball_ip_country` VALUES ('86', '突尼斯', '', '1', '1661266752003', '0');
INSERT INTO `ball_ip_country` VALUES ('90', '哥伦比亚', '', '1', '1661299191231', '0');
INSERT INTO `ball_ip_country` VALUES ('92', '西班牙', '', '1', '1661319457557', '0');
INSERT INTO `ball_ip_country` VALUES ('94', '奥地利', '', '1', '1661333056444', '0');
INSERT INTO `ball_ip_country` VALUES ('95', '保加利亚', '', '1', '1661334671390', '0');
INSERT INTO `ball_ip_country` VALUES ('96', '巴基斯坦', '', '1', '1661354693333', '0');
INSERT INTO `ball_ip_country` VALUES ('97', '比利时', '', '1', '1661410628507', '0');
INSERT INTO `ball_ip_country` VALUES ('98', '摩洛哥', '', '1', '1661428993266', '0');
INSERT INTO `ball_ip_country` VALUES ('100', '尼日利亚', '', '1', '1661429061327', '0');
INSERT INTO `ball_ip_country` VALUES ('103', '古巴', '', '1', '1661431970120', '0');
INSERT INTO `ball_ip_country` VALUES ('107', '爱尔兰', '', '1', '1661435635225', '0');
INSERT INTO `ball_ip_country` VALUES ('110', '黎巴嫩', '', '1', '1661442065056', '0');
INSERT INTO `ball_ip_country` VALUES ('111', '巴西', '', '1', '1661443082117', '0');
INSERT INTO `ball_ip_country` VALUES ('113', '也门', '', '1', '1661445687973', '0');
INSERT INTO `ball_ip_country` VALUES ('116', '叙利亚', '', '1', '1661456515352', '0');
INSERT INTO `ball_ip_country` VALUES ('117', '巴林', '', '1', '1661500234735', '0');
INSERT INTO `ball_ip_country` VALUES ('121', '丹麦', '', '1', '1661513338784', '0');
INSERT INTO `ball_ip_country` VALUES ('122', '肯尼亚', '', '1', '1661528608747', '0');
INSERT INTO `ball_ip_country` VALUES ('124', '前南马其顿', '', '1', '1661543176100', '0');
INSERT INTO `ball_ip_country` VALUES ('127', '布基纳法索', '', '1', '1661584135972', '0');
INSERT INTO `ball_ip_country` VALUES ('131', '瑞典', '', '1', '1661603206263', '0');

-- ----------------------------
-- Table structure for ball_ip_white
-- ----------------------------
DROP TABLE IF EXISTS `ball_ip_white`;
CREATE TABLE `ball_ip_white` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT '' COMMENT '标题',
  `remark` varchar(255) DEFAULT NULL COMMENT '内容',
  `status` tinyint(4) DEFAULT '1' COMMENT '1正常 2禁用',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统公告';

-- ----------------------------
-- Records of ball_ip_white
-- ----------------------------
INSERT INTO `ball_ip_white` VALUES ('1', '192.53.173.95', '新加坡', '1', '1660768665160', '0');
INSERT INTO `ball_ip_white` VALUES ('2', '192.53.173.122', 'mao', '1', '1660768695462', '0');

-- ----------------------------
-- Table structure for ball_logger
-- ----------------------------
DROP TABLE IF EXISTS `ball_logger`;
CREATE TABLE `ball_logger` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `logger_kinkds` tinyint(4) DEFAULT '0' COMMENT '日志种类 1下注日志(玩家) 2登录日志 3操作日志',
  `admin_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '管理员id  默认为0',
  `player_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '玩家日志 默认为 0',
  `content` text COMMENT '日志 内容 ',
  `ip` varchar(255) DEFAULT '' COMMENT '操作的ip',
  `order_number` varchar(255) DEFAULT '' COMMENT '订单号',
  `unit_type` varchar(255) DEFAULT '' COMMENT '设备型号',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  KEY `p` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of ball_logger
-- ----------------------------

-- ----------------------------
-- Table structure for ball_logger_back
-- ----------------------------
DROP TABLE IF EXISTS `ball_logger_back`;
CREATE TABLE `ball_logger_back` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(255) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `money` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `account_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ball_logger_back
-- ----------------------------

-- ----------------------------
-- Table structure for ball_logger_behalf
-- ----------------------------
DROP TABLE IF EXISTS `ball_logger_behalf`;
CREATE TABLE `ball_logger_behalf` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(20) DEFAULT '0' COMMENT '玩家ID',
  `player_name` varchar(100) DEFAULT NULL COMMENT '账号名',
  `behalf_id` bigint(20) DEFAULT NULL COMMENT '代付ID',
  `wid` bigint(20) DEFAULT NULL COMMENT '提现ID',
  `order_no` varchar(20) DEFAULT '' COMMENT '系统订单号',
  `trade_no` varchar(50) NOT NULL DEFAULT '' COMMENT '平台订单号',
  `order_amount` bigint(255) NOT NULL DEFAULT '0' COMMENT '订单金额',
  `pay_amount` bigint(32) DEFAULT '0' COMMENT '实际支付金额',
  `pay_status` tinyint(11) DEFAULT '0' COMMENT '支付状态',
  `oper` varchar(50) DEFAULT NULL COMMENT '操作人',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '处理时间',
  `remark` varchar(255) DEFAULT NULL,
  `super_tree` text,
  PRIMARY KEY (`id`),
  KEY `player_name` (`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='下注日志表';

-- ----------------------------
-- Records of ball_logger_behalf
-- ----------------------------

-- ----------------------------
-- Table structure for ball_logger_bet
-- ----------------------------
DROP TABLE IF EXISTS `ball_logger_bet`;
CREATE TABLE `ball_logger_bet` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(20) DEFAULT NULL,
  `player_name` varchar(50) DEFAULT '' COMMENT '会员账号',
  `super_player_name` varchar(50) NOT NULL DEFAULT '0' COMMENT '上级会员',
  `bet_content` varchar(255) NOT NULL DEFAULT '',
  `bet_ip` varchar(255) DEFAULT '' COMMENT '操作的ip',
  `bet_order_no` bigint(20) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `account_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `player_name` (`player_name`),
  KEY `bet_order_no` (`bet_order_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of ball_logger_bet
-- ----------------------------

-- ----------------------------
-- Table structure for ball_logger_handsup
-- ----------------------------
DROP TABLE IF EXISTS `ball_logger_handsup`;
CREATE TABLE `ball_logger_handsup` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(20) DEFAULT '0',
  `username` varchar(50) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `type` tinyint(50) DEFAULT '0' COMMENT '1.线下,2.线上"',
  `money` bigint(255) NOT NULL DEFAULT '0' COMMENT '充值金额',
  `oper_user` varchar(32) DEFAULT '' COMMENT '订单号',
  `qrmult` tinyint(4) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `super_tree` text,
  `account_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `player_name` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='下注日志表';

-- ----------------------------
-- Records of ball_logger_handsup
-- ----------------------------

-- ----------------------------
-- Table structure for ball_logger_login
-- ----------------------------
DROP TABLE IF EXISTS `ball_logger_login`;
CREATE TABLE `ball_logger_login` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_name` varchar(50) DEFAULT '0' COMMENT '日志种类 1下注日志(玩家) 2登录日志 3操作日志',
  `super_player_name` varchar(50) NOT NULL DEFAULT '0' COMMENT '管理员id  默认为0',
  `devices` varchar(255) NOT NULL DEFAULT '0' COMMENT '玩家日志 默认为 0',
  `ip` varchar(255) DEFAULT '' COMMENT '操作的ip',
  `ip_addr` varchar(255) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `player_name` (`player_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of ball_logger_login
-- ----------------------------

-- ----------------------------
-- Table structure for ball_logger_oper
-- ----------------------------
DROP TABLE IF EXISTS `ball_logger_oper`;
CREATE TABLE `ball_logger_oper` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `main_func` varchar(50) DEFAULT '' COMMENT '管理模块',
  `sub_func` varchar(50) NOT NULL DEFAULT '' COMMENT '操作方法',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ip` varchar(255) DEFAULT '' COMMENT '操作的ip',
  `username` varchar(50) DEFAULT '' COMMENT '操作账号',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of ball_logger_oper
-- ----------------------------

-- ----------------------------
-- Table structure for ball_logger_recharge
-- ----------------------------
DROP TABLE IF EXISTS `ball_logger_recharge`;
CREATE TABLE `ball_logger_recharge` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(20) DEFAULT '0',
  `type` tinyint(50) DEFAULT '0' COMMENT '1.线下,2.线上"',
  `status` tinyint(50) NOT NULL DEFAULT '0' COMMENT '状态1待付款/2已付款/3已取消/',
  `money` bigint(255) NOT NULL DEFAULT '0' COMMENT '充值金额',
  `money_real` bigint(20) DEFAULT '0',
  `money_sys` bigint(20) DEFAULT '0',
  `money_discount` bigint(20) DEFAULT '0',
  `order_no` varchar(32) DEFAULT '' COMMENT '订单号',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `super_tree` text,
  `updated_at` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `oper_user` varchar(50) DEFAULT NULL,
  `pay_name` varchar(50) DEFAULT NULL,
  `pay_id` bigint(255) DEFAULT NULL,
  `account_type` tinyint(4) DEFAULT '0',
  `top_username` varchar(30) DEFAULT '',
  `first_username` varchar(30) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `player_name` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='下注日志表';

-- ----------------------------
-- Records of ball_logger_recharge
-- ----------------------------

-- ----------------------------
-- Table structure for ball_logger_withdrawal
-- ----------------------------
DROP TABLE IF EXISTS `ball_logger_withdrawal`;
CREATE TABLE `ball_logger_withdrawal` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(20) DEFAULT '0',
  `player_name` varchar(100) DEFAULT NULL,
  `player_type` tinyint(4) DEFAULT NULL,
  `usdt_id` bigint(20) DEFAULT NULL,
  `type` tinyint(50) DEFAULT '0' COMMENT '1.线下,2.线上"',
  `status` tinyint(50) NOT NULL DEFAULT '0' COMMENT '状态1待付款/2已付款/3已取消/',
  `money` bigint(255) NOT NULL DEFAULT '0' COMMENT '充值金额',
  `order_no` varchar(32) DEFAULT '' COMMENT '订单号',
  `rate` int(11) DEFAULT NULL,
  `commission` bigint(20) DEFAULT NULL,
  `checker` varchar(50) DEFAULT NULL,
  `oker` varchar(50) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '处理时间',
  `remark` varchar(255) DEFAULT NULL,
  `super_tree` text,
  `account_type` tinyint(4) DEFAULT NULL,
  `behalf_status` tinyint(4) DEFAULT '3',
  `behalf_no` varchar(30) DEFAULT NULL,
  `usdt_rate` int(11) DEFAULT '0',
  `usdt_money` bigint(20) DEFAULT '0',
  `top_username` varchar(30) DEFAULT '',
  `first_username` varchar(30) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `player_name` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='下注日志表';

-- ----------------------------
-- Records of ball_logger_withdrawal
-- ----------------------------

-- ----------------------------
-- Table structure for ball_menu
-- ----------------------------
DROP TABLE IF EXISTS `ball_menu`;
CREATE TABLE `ball_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT '' COMMENT '请求路径',
  `is_menu` tinyint(4) DEFAULT '0' COMMENT '0否1是',
  `status` tinyint(4) DEFAULT '1' COMMENT '1正常2废除',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of ball_menu
-- ----------------------------
INSERT INTO `ball_menu` VALUES ('1', '9', '用户管理', '/ball/admin', '1', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('2', '1', '增加', '/ball/admin/add', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('3', '1', '修改', '/ball/admin/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('4', '1', '删除', '/ball/admin/del', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('5', '9', '角色管理', '/ball/group', '1', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('6', '5', '增加', '/ball/group/add', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('7', '5', '修改', '/ball/group/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('8', '5', '删除', '/ball/group/del', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('9', '0', '系统管理', '/ball/sysconfig_root', '99', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('10', '0', '会员管理', '/ball/player/main', '1', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('11', '10', '会员管理', '/ball/player', '1', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('12', '10', '会员账务汇总', '/ball/player/finance', '1', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('13', '11', '增加', '/ball/player/add', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('14', '11', '修改', '/ball/player/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('15', '11', '查看', '/ball/player/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('16', '11', '账变记录', '/ball/player/log', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('17', '11', '更改密码', '/ball/player/edit_pwd', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('18', '11', '更改支付密码', '/ball/player/edit_pay_pwd', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('19', '11', '禁/启用', '/ball/player/status', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('20', '11', '上分', '/ball/player/add_balance', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('21', '11', '修改出款打码量', '/ball/player/captcha_pass', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('22', '0', '赛事管理', '/ball/game/main', '2', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('23', '22', '赛事管理', '/ball/game', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('24', '23', '修改', '/ball/game/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('25', '23', '禁/启用', '/ball/game/status', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('26', '23', '置顶', '/ball/game/top', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('27', '23', '热门', '/ball/game/hot', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('28', '23', '保本', '/ball/game/even', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('29', '23', '查看', '/ball/game/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('30', '22', '赔率管理', '/ball/odds', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('31', '30', '查看', '/ball/odds/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('32', '30', '修改', '/ball/odds/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('33', '30', '禁/启用', '/ball/odds/status', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('34', '30', '弃保', '/ball/odds/down', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('35', '22', '赛事结算管理', '/ball/game/finish', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('36', '35', '重算', '/ball/game/finish/recount', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('37', '35', '回滚', '/ball/game/finish/rollback', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('38', '35', '查看', '/ball/game/finish/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('39', '0', '报表管理', '/ball/report/main', '3', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('40', '39', '数据总览', '/ball/report/data', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('41', '39', '运营报表', '/ball/report/operate', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('42', '39', '代理报表', '/ball/report/proxy', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('43', '42', '查首充', '/ball/report/proxy/first', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('44', '42', '查取款用户', '/ball/report/proxy/inout', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('45', '42', '查注册用户', '/ball/report/proxy/regist', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('46', '42', '查投注报表', '/ball/report/proxy/bet', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('47', '39', '账变报表', '/ball/report/balance_change', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('48', '39', '会员日报表', '/ball/report/player_day', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('49', '39', '下注报表', '/ball/report/bet', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('50', '39', '充提报表', '/ball/report/recharge', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('51', '39', '充值渠道', '/ball/report/recharge_way', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('52', '39', '赛事报表', '/ball/report/game', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('53', '0', '订单管理', '/ball/bets/main', '4', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('54', '53', '足球订单', '/ball/bets', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('55', '54', '查看', '/ball/bets/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('56', '54', '撤单', '/ball/bets/undo', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('57', '54', '导出', '/ball/bets/export', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('58', '0', '策略配置', '/ball/tactics/main', '5', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('59', '58', '存款优惠', '/ball/tactics/inout', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('60', '59', '增加', '/ball/tactics/inout/add', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('61', '59', '修改', '/ball/tactics/inout/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('62', '59', '删除', '/ball/tactics/inout/del', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('63', '58', '返佣策略', '/ball/tactics/back', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('64', '63', '增加', '/ball/tactics/back/add', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('65', '63', '修改', '/ball/tactics/back/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('66', '63', '删除', '/ball/tactics/back/del', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('67', '0', '账务管理', '/ball/finance/main', '6', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('68', '67', '支付管理', '/ball/finance/pay', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('69', '68', '增加', '/ball/finance/pay/add', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('70', '68', '修改', '/ball/finance/pay/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('71', '68', '禁/启用', '/ball/finance/pay/status', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('72', '68', '查看', '/ball/finance/pay/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('73', '68', '删除', '/ball/finance/pay/del', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('74', '67', '提现方式管理', '/ball/finance/withdraw', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('75', '74', '增加', '/ball/finance/withdraw/add', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('76', '74', '修改', '/ball/finance/withdraw/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('77', '74', '禁/启用', '/ball/finance/withdraw/status', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('78', '74', '查看', '/ball/finance/withdraw/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('79', '74', '删除', '/ball/finance/withdraw/del', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('80', '67', '绑卡审核', '/ball/finance/bind', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('81', '80', '查看', '/ball/finance/bind/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('82', '80', '修改', '/ball/finance/bind/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('83', '80', '禁/启用', '/ball/finance/bind/status', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('84', '80', '导出', '/ball/finance/bind/export', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('85', '67', '线下充值', '/ball/finance/offline', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('86', '85', '查看', '/ball/finance/offline/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('87', '85', '导出', '/ball/finance/offline/export', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('88', '67', '线上充值', '/ball/finance/online', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('89', '88', '查看', '/ball/finance/online/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('90', '88', '上分', '/ball/finance/online/up', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('91', '88', '导出', '/ball/finance/online/export', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('92', '67', '提现管理', '/ball/finance/out', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('93', '92', '查看', '/ball/finance/out/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('94', '92', '审核', '/ball/finance/out/check', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('95', '92', '导出', '/ball/finance/out/export', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('96', '67', '上分记录', '/ball/finance/inlog', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('97', '96', '导出', '/ball/finance/export', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('98', '0', '运营管理', '/ball/operation/main', '7', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('99', '98', 'Banner管理', '/ball/operation/banner', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('100', '99', '增加', '/ball/operation/banner/add', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('101', '99', '修改', '/ball/operation/banner/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('102', '99', '禁/启用', '/ball/operation/banner/status', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('103', '99', '查看', '/ball/operation/banner/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('104', '99', '删除', '/ball/operation/banner/del', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('105', '98', '轮播公告', '/ball/operation/swiper', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('106', '105', '增加', '/ball/operation/swiper/add', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('107', '105', '修改', '/ball/operation/swiper/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('108', '105', '禁/启用', '/ball/operation/swiper/status', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('109', '105', '查看', '/ball/operation/swiper/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('110', '105', '删除', '/ball/operation/swiper/del', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('111', '98', '系统公告', '/ball/operation/notice', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('112', '111', '增加', '/ball/operation/notice/add', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('113', '111', '修改', '/ball/operation/notice/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('114', '111', '禁/启用', '/ball/operation/notice/status', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('115', '111', '查看', '/ball/operation/notice/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('116', '111', '删除', '/ball/operation/notice/del', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('117', '0', '商户配置', '/ball/merchant/main', '8', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('118', '117', '参数配置', '/ball/merchant/param', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('119', '118', '系统配置', '/ball/merchant/param/sys', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('120', '118', '注册/登录', '/ball/merchant/param/loreg', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('121', '118', '客服配置', '/ball/merchant/param/servicer', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('122', '118', '财务配置', '/ball/merchant/param/finance', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('123', '118', '风控配置', '/ball/merchant/param/risk', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('124', '118', '运营配置', '/ball/merchant/param/operate', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('125', '118', '推广配置', '/ball/merchant/param/share', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('126', '117', 'VIP配置', '/ball/merchant/vip', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('127', '126', '增加', '/ball/merchant/vip/add', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('128', '126', '修改', '/ball/merchant/vip/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('129', '126', '查看', '/ball/merchant/vip/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('130', '126', '删除', '/ball/merchant/vip/del', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('131', '117', '后台白名单', '/ball/merchant/white', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('132', '131', '增加', '/ball/merchant/white/add', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('133', '131', '修改', '/ball/merchant/white/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('134', '131', '禁/启用', '/ball/merchant/white/status', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('135', '131', '查看', '/ball/merchant/white/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('136', '131', '删除', '/ball/merchant/white/del', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('137', '117', '前端黑名单', '/ball/merchant/black', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('138', '137', '增加', '/ball/merchant/black/add', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('139', '137', '修改', '/ball/merchant/black/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('140', '137', '禁/启用', '/ball/merchant/black/status', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('141', '137', '查看', '/ball/merchant/black/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('142', '137', '删除', '/ball/merchant/black/del', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('143', '0', '日志管理', '/ball/log/main', '9', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('144', '143', '下注日志', '/ball/log/bet', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('145', '143', '登录日志', '/ball/log/login', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('146', '143', '操作日志', '/ball/log/operate', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('147', '143', '代理迁移', '/ball/log/proxy_change', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('148', '126', '状态', '/ball/merchant/vip/status', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('149', '11', '设置会员等级', '/ball/player/edit_level', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('150', '67', '会员USDT', '/ball/finance/usdt', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('151', '150', '查看', '/ball/finance/usdt/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('152', '150', '修改', '/ball/finance/usdt/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('153', '150', '禁/启用', '/ball/finance/usdt/status', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('154', '150', '审核', '/ball/finance/usdt/check', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('155', '23', '结算', '/ball/game/hand_open', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('156', '117', 'App管理', '/ball/merchant/app', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('157', '156', '增加', '/ball/merchant/app/add', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('158', '156', '修改', '/ball/merchant/app/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('159', '156', '禁/启用', '/ball/merchant/app/status', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('160', '156', '删除', '/ball/merchant/app/del', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('161', '23', '添加', '/ball/game/add', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('162', '23', '添加-上传', '/ball/game/add/upload', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('163', '117', 'IP访问限制', '/ball/merchant/ip_country', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('164', '163', '增加', '/ball/merchant/ip_country/add', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('165', '163', '修改', '/ball/merchant/ip_country/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('166', '163', '删除', '/ball/merchant/ip_country/del', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('167', '163', '禁/启用', '/ball/merchant/ip_country/status', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('168', '58', '奖金策略', '/ball/tactics/bonus', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('169', '168', '增加', '/ball/tactics/bonus/add', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('170', '168', '修改', '/ball/tactics/bonus/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('171', '168', '删除', '/ball/tactics/bonus/del', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('172', '168', '禁用/启用', '/ball/tactics/bonus/status', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('173', '0', '待办事项', '/ball/todo_list', '1', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('174', '173', '处理', '/ball/todo_list/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('175', '173', '删除', '/ball/todo_list/del', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('176', '173', '查看', '/ball/todo_list/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('177', '11', '查看IP', '/ball/player/query_ip', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('178', '39', '下注日报表', '/ball/report/bet_day', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('179', '23', '撤消', '/ball/game/cancel', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('180', '67', '代付管理', '/ball/finance/behalf', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('181', '180', '增加', '/ball/finance/behalf/add', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('182', '180', '修改', '/ball/finance/behalf/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('183', '180', '禁/启用', '/ball/finance/behalf/status', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('184', '180', '查看', '/ball/finance/behalf/info', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('185', '180', '代付款', '/ball/finance/behalf/pay', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('187', '92', '代付', '/ball/finance/out/behalf', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('188', '117', '提现失败配置', '/ball/merchant/wfail', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('189', '188', '增加', '/ball/merchant/wfail/add', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('190', '188', '修改', '/ball/merchant/wfail/edit', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('191', '188', '禁/启用', '/ball/merchant/wfail/status', '0', '1', '0', '0');
INSERT INTO `ball_menu` VALUES ('192', '188', '删除', '/ball/merchant/wfail/del', '0', '1', '0', '0');

-- ----------------------------
-- Table structure for ball_pay_behalf
-- ----------------------------
DROP TABLE IF EXISTS `ball_pay_behalf`;
CREATE TABLE `ball_pay_behalf` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '渠道',
  `pay_type` tinyint(255) NOT NULL COMMENT '支付类型1usdt2其它',
  `server_url` varchar(255) DEFAULT NULL COMMENT '请求接口地址',
  `local_callback` varchar(255) DEFAULT '' COMMENT '回调地址',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `created_at` bigint(11) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(11) DEFAULT '0' COMMENT '更新时间',
  `callback_path` varchar(255) DEFAULT NULL,
  `merchant_no` varchar(20) DEFAULT NULL,
  `query_url` varchar(255) DEFAULT NULL,
  `payment_key` varchar(50) DEFAULT NULL,
  `bank_ifsc` varchar(255) DEFAULT NULL,
  `bank_sub` varchar(255) DEFAULT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `account_attach` varchar(255) DEFAULT NULL,
  `document_type` varchar(255) DEFAULT NULL,
  `document_no` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='支付管理';

-- ----------------------------
-- Records of ball_pay_behalf
-- ----------------------------
INSERT INTO `ball_pay_behalf` VALUES ('1', 'kbpay', '1', 'https://api.kbpay.cc/repay/submit', 'http://45.76.146.183:10100/player/pay/callback/3', '', '1660933253233', '0', '/pay/callback/3', '6058673', null, 'J09v9YDjyLYleKgBbB7i0bz1z7rKuvAN', null, null, null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for ball_payment_management
-- ----------------------------
DROP TABLE IF EXISTS `ball_payment_management`;
CREATE TABLE `ball_payment_management` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '渠道',
  `pay_type` tinyint(255) NOT NULL COMMENT '支付类型1usdt2其它',
  `pay_type_onff` tinyint(255) NOT NULL COMMENT '支付类型1线上2线下',
  `ustd_server` varchar(255) DEFAULT NULL COMMENT '请求接口地址',
  `ustd_callback` varchar(255) DEFAULT '' COMMENT '回调地址',
  `front_display` tinyint(255) DEFAULT '1' COMMENT '是否显示1是2否',
  `public_key` text COMMENT '加密密钥',
  `private_key` text COMMENT '解密密钥',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `created_at` bigint(11) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(11) DEFAULT '0' COMMENT '更新时间',
  `img` varchar(255) DEFAULT NULL COMMENT '显示图片',
  `fast_money` varchar(255) DEFAULT NULL COMMENT '快捷金额',
  `min_max` varchar(255) DEFAULT NULL COMMENT '充值区间',
  `rate` varchar(20) DEFAULT NULL,
  `ustd_callback_path` varchar(255) DEFAULT NULL,
  `area_code` varchar(500) DEFAULT '',
  `merchant_no` varchar(20) DEFAULT NULL,
  `payment_code` varchar(20) DEFAULT NULL,
  `return_url` varchar(255) DEFAULT NULL,
  `query_url` varchar(255) DEFAULT NULL,
  `payment_key` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='支付管理';

-- ----------------------------
-- Records of ball_payment_management
-- ----------------------------
INSERT INTO `ball_payment_management` VALUES ('1', 'pay', '2', '1', 'https://api.kbpay.cc/pay/submit', 'http://45.76.146.183:10100/player/pay/callback/2', '1', 'null', 'null', '', '1660500828262', '1661519155127', 'payImg/a794ea124ded425481c4456fc00c7dd4.jpeg', '1000-2000-5000-10000-20000-50000-100000', '1000-9999999', 'null', '/pay/callback/2', '', '6058673', '1007', '', '', 'TNO6tjwMlEjiiXw7KTz6hOLCJ3tEh7gm');
INSERT INTO `ball_payment_management` VALUES ('3', 'USDT', '1', '2', 'https://pay.wofootball.com/v2/createPrepaidPhoneOrders', 'http://45.76.146.183:10100/player/pay/callback/1', '1', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoEixcgAPmLpHLEDh3P8eGpxolNbGJoxbrNQU1kaRCTMiu5qTaLJsTb6SVh7J4yztLOSdvIwbC2YeyVW8fatx3eQ4RX6/txdtm07ov1bmC9n6/caOeRz2Pq2ZOse3uFuSjpQbF/2oAv3E6zWq5tdHwG89ZNj+igs5lme4S6Uy2OE2MsqV/kwGMdBcdTOld8ki3MTsoEeBg9+IoqRD6gqil9sZdoHf0ItVE85Rw2Gp1rMfeTUMW7W3SvKItB33978/PgVmUvKLwY9+xsvWmILBZgkIMjUZ9/98LsyhdOvElcWFkYX2f84PSIJ8roAJhUpGJnw05i1jykDM6wa3sZ051wIDAQAB', 'MIIEpAIBAAKCAQEAy3My0diBGfkjFzq5UVl0SeOLSg/Lcmvhl9hEuRr6B7O7KV7ghYCQR2tJcfrZQ1ehqPVS1jskNkoXKXfcAzeEgQrcFLYMVwuHVh2mu8imUoKY7fkearU6MtJHi2bpxownZLJzurbzbeeWiZWj05HzCZVPjfAhxkTdC+kuZBJfF0Fc6xrlXgbDslsEyEyKIGku7G47ZRmtJjDiUk+Bec7f9uhTbSWWu4ZO57S4fuA5K1qXf0Tmw6fEiM5DRkfYGsmO+2x6AmHGwVhFw37k/UEpur3bkajK9fk3s6xtJjmLet3y+g6jcdpPMr+sZdMFxfGhIqu0xPy2mNNZmANJni3/PQIDAQABAoIBAA8LL6DQr4sqHuwizX00biLgjnYlgNevHnlJ5psBYaecJKTEfTmh7gk5565j7BjMrAmASmXI7b6N7/SDBmO+gS/Bi9CEPZlaIuG9Q4zzI0lKmuBN4W/mgq0rW1r1eyfRSUBq6Z/O02U3EKyPwhNs4Vm+DqniLb0pbmbpESMZMKrZaqXSRMQHfwp7wx8W+3dPEQAs3pO1SwEpfL8Sbx/gBaRUi5iVIjG52G7daoCCGAPzyzhGtKNkc/Yff9dnI7hGwS2/zysrOychDSKJ+/XGlQb9Zwp8F7bz84wm3BACTCCjzvGd5NxIZqXoeR8VZ9LWpJSlRIMIskExhlp/hFfZtckCgYEA8Vc/m8frL879ioxSkbcaFYDuvS0FFbAZWh9z2XTJGgSWQlQ0Ms5kU/668c7VXOlLrbUQrvH+aAp4uok+o+hlZNTbFJhRXs2igfIKpC4Ak8tYkbrsxmpJgP9/LScLlgTmrrFSo6ADJU0oPSpC95HwvwyIao9fpauhFYZtBf5s7o8CgYEA187DYOuRbmHKbYLCXe37grEGerOz4WUpSWkaFmlwZ14T8i/U0ps/qRiiOOdfrEnjAT3LJkZ1GL0fBLqN2KAkD7XjcOECcVYQMN/5qwEys9udmbgj+I0u5RSeE8mYB0RP06/qCg8NocxH7Z5STjd3JA1gZwl974uwcN1mkdduW3MCgYEAyUOXmlRowCAAtRA8s6RdLl2tuznWKbYIDm54cHrCUt5MaNhMB6qzZJDkWk/BA5DTOfPsC9ln7l/9OqLGCG8AT8xrP4ufIE6hHXk6gpySgq5sGGwolXeCAQARkRgkw2Em97yNTENfHDZyPkAGROwCN3E+Oo+ClmjBF3BZb0w0j+UCgYA5Y46pc3uVMwQ14xP1DphXxOPINYmcYt572ytI0nlFw8riGL4r04U2XoqlP0I9+tgXOGuRniL9lS1ugH3AIbX1R5VYKz4PDaf4l1c5lnP5SGm8uy81pbXWzYjMEkwPgqcH0DwYuLATWtO16OhSTIWuXLBKNkf7L9aX7QiduABs6QKBgQCU6GhHoaIPAvVaMCm+sdT8MwH6ThH3a+kWqFj3AgkUBSv9UUhYQ+A6Qey+AcRpKVP91z82noHucakJ/7EMTOnsnLK8mjrFak+L2GZWrPhk2bMZnF7vxGHuFcVT4XWqDGY3GwdDTfX0WcJGtjyLJkD05ldO74jNYXVvIZvyN0abLw==', '', '1660575807874', '1660928838941', 'payImg/4eae8534fb474aabb8a5cd4d2bee6252.png', 'null', '10-999999', 'null', '/pay/callback/1', '', 'null', 'null', '', '', 'null');

-- ----------------------------
-- Table structure for ball_player
-- ----------------------------
DROP TABLE IF EXISTS `ball_player`;
CREATE TABLE `ball_player` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` bigint(20) DEFAULT '1',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `pay_password` varchar(32) DEFAULT NULL,
  `password_test` varchar(20) DEFAULT NULL,
  `invitation_code` varchar(20) NOT NULL COMMENT '邀请码(每个账户生成的时候就会生成唯一性)',
  `superior_id` bigint(20) DEFAULT '0' COMMENT '直属上级(添加索引)',
  `superior_name` varchar(50) DEFAULT '',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态1正常 2封禁',
  `account_type` int(1) DEFAULT NULL COMMENT '账号类型 1测试号 2正常号 3代理账号',
  `balance` bigint(20) DEFAULT '0' COMMENT '钱包余额(2位小数/100)',
  `the_new_ip` varchar(30) DEFAULT NULL COMMENT '最新的一次登录ip',
  `the_new_login_time` bigint(20) DEFAULT '0' COMMENT '最新登录时间',
  `cumulative_reflect` bigint(20) DEFAULT '0' COMMENT '累计提现',
  `the_last_ip` varchar(30) DEFAULT NULL COMMENT '上一次登录的ip',
  `vip_level` tinyint(11) DEFAULT NULL COMMENT '会员的级别  比如他的上一级是 3  他就是4',
  `cumulative_top_up` bigint(20) DEFAULT '0' COMMENT '累计充值',
  `cumulative_discount` bigint(20) DEFAULT '0' COMMENT '累计优惠',
  `cumulative_activity` bigint(20) DEFAULT '0' COMMENT '累计活动',
  `cumulative_winning` bigint(20) DEFAULT '0' COMMENT '累计中奖',
  `promote_income` bigint(20) DEFAULT '0' COMMENT '推广收入',
  `email` varchar(100) DEFAULT NULL COMMENT '电子邮箱',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `group_size` int(11) DEFAULT '0' COMMENT '团队人数',
  `max_reflect` bigint(20) DEFAULT '0' COMMENT '最大提现金额',
  `max_top_up` bigint(20) DEFAULT '0' COMMENT '最大的充值金额',
  `first_reflect` bigint(20) DEFAULT '0' COMMENT '首次提现金额',
  `top_up_times` int(11) DEFAULT '0' COMMENT '充值次数',
  `first_top_up` bigint(20) DEFAULT '0' COMMENT '首次充值金额',
  `first_top_up_time` bigint(20) DEFAULT '0' COMMENT '首次充值金额时间',
  `cumulative_Qr` bigint(20) DEFAULT '0' COMMENT '累计打码量',
  `need_Qr` bigint(20) DEFAULT '0' COMMENT '离下次提现所需要的打码量',
  `accumulative_bet` bigint(20) DEFAULT '0' COMMENT '累计投注金额',
  `on_line_top_up` bigint(20) DEFAULT '0' COMMENT '线上充值金额',
  `offline_top_up` bigint(20) DEFAULT '0' COMMENT '线下充值金额',
  `artificial_add` bigint(20) DEFAULT '0' COMMENT '人工加款',
  `artificial_subtract` bigint(20) DEFAULT '0' COMMENT '人工减款',
  `cumulative_back_water` bigint(20) DEFAULT '0' COMMENT '累计反水',
  `directly_subordinate_num` int(11) DEFAULT '0' COMMENT '直属下级个数',
  `reflect_times` int(11) DEFAULT '0' COMMENT '提现次数',
  `created_at` bigint(11) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(11) DEFAULT '0' COMMENT '更新时间',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `super_tree` text,
  `user_id` bigint(20) DEFAULT NULL,
  `status_online` tinyint(4) DEFAULT '0',
  `vip_rank` int(11) DEFAULT NULL,
  `area_code` char(10) DEFAULT NULL,
  `actived` tinyint(4) DEFAULT '0',
  `invitation_count` int(11) DEFAULT '0',
  `login_ips` text,
  `login_contry` text,
  `frozen_bet` bigint(20) DEFAULT '0',
  `frozen_withdrawal` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_unique` (`username`) USING BTREE,
  UNIQUE KEY `user_id_unique` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='玩家账号';

-- ----------------------------
-- Records of ball_player
-- ----------------------------

-- ----------------------------
-- Table structure for ball_proxy_logger
-- ----------------------------
DROP TABLE IF EXISTS `ball_proxy_logger`;
CREATE TABLE `ball_proxy_logger` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(20) DEFAULT '0',
  `player_name` varchar(100) DEFAULT NULL,
  `player_type` tinyint(4) DEFAULT NULL,
  `ymd` char(10) DEFAULT NULL,
  `ymd_stamp` bigint(20) DEFAULT NULL,
  `level` tinyint(4) DEFAULT NULL,
  `sub_count` int(11) DEFAULT NULL,
  `sub_all_count` int(11) DEFAULT NULL,
  `regist_count` int(11) DEFAULT NULL,
  `rebate_count` bigint(20) DEFAULT NULL,
  `pay_count` bigint(20) DEFAULT NULL,
  `first_pay_count` int(11) DEFAULT NULL,
  `withdrawal_count` int(11) DEFAULT NULL,
  `pay_count_online` bigint(20) DEFAULT NULL,
  `pay_count_offline` bigint(20) DEFAULT NULL,
  `pay_count_hands` bigint(20) DEFAULT NULL,
  `withdrawal_count_online` bigint(20) DEFAULT NULL,
  `withdrawal_count_offline` bigint(20) DEFAULT NULL,
  `withdrawal_count_hands` bigint(20) DEFAULT NULL,
  `bet_count_player` int(11) DEFAULT NULL,
  `bet_count` int(11) DEFAULT NULL,
  `in_out` bigint(20) DEFAULT NULL,
  `in_out_all` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `player_id_date` (`player_id`,`ymd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代理统计日志表';

-- ----------------------------
-- Records of ball_proxy_logger
-- ----------------------------

-- ----------------------------
-- Table structure for ball_record
-- ----------------------------
DROP TABLE IF EXISTS `ball_record`;
CREATE TABLE `ball_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(20) DEFAULT '0' COMMENT '玩家id',
  `money` bigint(20) DEFAULT '0' COMMENT '金额',
  `record_type` tinyint(4) DEFAULT '0' COMMENT '账单类型 1线下充值 2线上充值 3提现 4佣金  5奖励的金额 6人工加款 ',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态 1正常(审核通过) 2待审核 3审核不通过',
  `remark` varchar(255) DEFAULT '' COMMENT '备注(比如审核不通过的原因)',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='财务账单';

-- ----------------------------
-- Records of ball_record
-- ----------------------------

-- ----------------------------
-- Table structure for ball_slideshow
-- ----------------------------
DROP TABLE IF EXISTS `ball_slideshow`;
CREATE TABLE `ball_slideshow` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '0' COMMENT '游戏id ',
  `policy_type` tinyint(4) DEFAULT '0' COMMENT '策略类型 1存款策略 2返佣策略',
  `deposit_policy_id` bigint(20) DEFAULT '0' COMMENT '存款策略id',
  `commission_strategy_id` bigint(20) DEFAULT '0' COMMENT '返佣策略id',
  `language` varchar(20) DEFAULT '0' COMMENT '语言编码',
  `image_url` varchar(255) DEFAULT '' COMMENT '图片地址',
  `status` tinyint(4) DEFAULT '1' COMMENT '1显示 2不显示(前提是 返佣和 存款策略id 为0)',
  `local_path` varchar(255) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='轮播图';

-- ----------------------------
-- Records of ball_slideshow
-- ----------------------------
INSERT INTO `ball_slideshow` VALUES ('1', '0', '0', '0', '0', 'en', '', '1', 'activity/edd8e319427f487580ce62b40d4bb373.jpg', '0', '0');
INSERT INTO `ball_slideshow` VALUES ('2', '0', '0', '0', '0', 'en', '', '1', 'activity/6c682526452b4ac6806c7dac3c1a253b.jpg', '0', '0');
INSERT INTO `ball_slideshow` VALUES ('6', '0', '0', '0', '0', 'en', '', '1', 'activity/37f9d220f14e47c483426e47161e0790.jpg', '0', '0');
INSERT INTO `ball_slideshow` VALUES ('7', '0', '0', '0', '0', 'en', '', '1', 'activity/d2f4027ee6ca497d95f677cb7f01f0ba.jpg', '0', '0');

-- ----------------------------
-- Table structure for ball_system_config
-- ----------------------------
DROP TABLE IF EXISTS `ball_system_config`;
CREATE TABLE `ball_system_config` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `register_if_need_verification_code` tinyint(4) DEFAULT '0' COMMENT '注册是否需要验证码 1需要 2不需要',
  `verification_code_layout` tinyint(4) DEFAULT '0' COMMENT '验证码 格式 1 纯数字 2串字母 3字母数字',
  `password_max_error_times` tinyint(4) DEFAULT '0' COMMENT '密码连续错误的次数',
  `password_error_lock_time` int(11) DEFAULT '0' COMMENT '密码连续错误锁屏时间(秒)',
  `server_url` varchar(255) DEFAULT '' COMMENT '客服连接',
  `server_url_tmp` varchar(255) DEFAULT NULL,
  `card_can_need_nums` int(11) DEFAULT '0' COMMENT '会员最多绑卡数量',
  `recharge_code_conversion_rate` bigint(20) DEFAULT '0' COMMENT '充值打码量转换比例',
  `captcha_threshold` bigint(20) DEFAULT '0' COMMENT '用户打码设量设置阀值',
  `bet_hand_money_rate` int(8) DEFAULT '0' COMMENT '投注手续费率',
  `fast_money` varchar(255) DEFAULT '0' COMMENT '快捷金额',
  `even_need_hand_money` bigint(20) NOT NULL DEFAULT '0' COMMENT '保本扣除手续费',
  `max_usdt_account_nums` int(11) NOT NULL DEFAULT '0' COMMENT '最多可绑定usdt账号数量',
  `max_pix_account_nums` int(11) NOT NULL DEFAULT '0' COMMENT '最多可绑定pix账号数量',
  `withdraw_password_can_update` tinyint(4) NOT NULL DEFAULT '0' COMMENT '提现密码是否可以修改 1 可以 2不可以',
  `can_withdraw_continuity` tinyint(4) DEFAULT '0' COMMENT '是否可以连续提现',
  `withdraw_password_show_need` tinyint(4) NOT NULL DEFAULT '0' COMMENT '控制首页提现密码是否可以关闭',
  `everyday_withdraw_times` int(11) NOT NULL DEFAULT '0' COMMENT '每日的提现上线次数',
  `everyday_withdraw_free` int(11) DEFAULT '0' COMMENT '免手续费次数',
  `withdrawal_rate` int(8) DEFAULT '0' COMMENT '银行提现手续费',
  `withdraw_max` int(8) DEFAULT '10000000',
  `withdraw_min` int(11) DEFAULT '500',
  `withdrawal_rate_max` int(11) DEFAULT '10000000',
  `withdrawal_rate_min` int(11) DEFAULT '50',
  `usdt_withdraw_per` int(20) DEFAULT '0' COMMENT 'usdt 提现提现汇率',
  `withdraw_usdt_automatic_per` int(20) DEFAULT '0' COMMENT '提现usdt自动汇率 1yes 2no',
  `usdt_withdrawal_rate` int(8) DEFAULT '0' COMMENT 'USDT提现手续费',
  `usdt_withdraw_max` int(8) DEFAULT '10000000' COMMENT 'USDT最大提现',
  `usdt_withdraw_min` int(11) DEFAULT '500' COMMENT 'USDT最小提现',
  `usdt_withdrawal_rate_max` int(11) DEFAULT '10000000' COMMENT 'USDT最大提现手续费',
  `usdt_withdrawal_rate_min` int(11) DEFAULT '50' COMMENT 'USDT最小提现手续费',
  `phone_area_code` text,
  `pay_pwd_npc` tinyint(4) DEFAULT '0' COMMENT '1需要手机验证2不需要',
  `default_proxy` varchar(20) DEFAULT NULL,
  `recharge_area_swtich` tinyint(4) DEFAULT NULL,
  `recharge_max` int(11) DEFAULT NULL,
  `player_bet_max` int(11) DEFAULT '0',
  `open_google` tinyint(4) DEFAULT '0' COMMENT '0关1开',
  `open_white` tinyint(4) DEFAULT '0' COMMENT '0关1开',
  `version` bigint(20) DEFAULT '0',
  `new_devices` tinyint(4) DEFAULT '0' COMMENT '0关1开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置';

-- ----------------------------
-- Records of ball_system_config
-- ----------------------------
INSERT INTO `ball_system_config` VALUES ('1', '1', '1', '2', '60', 'https://chat.wofootball.com/chatIndex?kefu_id=wofootball&ent_id=2&lang=en&visitor_id={0}&visitor_name={1}', 'https://chat.wofootball.com/chatIndex?kefu_id=wofootball&ent_id=2&lang=en', '1', '100', '100', '0', '100', '0', '2', '0', '1', '0', '1', '1', '0', '1000', '10000000', '680', '10000000', '0', '8500', '0', '500', '10000000', '420', '10000000', '0', '91,90,234,255,251,260,256,234,254,237,63,880,855,', '1', null, '2', null, '10000000', '0', '0', '29', '0');

-- ----------------------------
-- Table structure for ball_system_notice
-- ----------------------------
DROP TABLE IF EXISTS `ball_system_notice`;
CREATE TABLE `ball_system_notice` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '' COMMENT '标题',
  `content` text COMMENT '内容',
  `language` varchar(20) DEFAULT '0' COMMENT '语言编码',
  `status` tinyint(4) DEFAULT '1' COMMENT '1正常 2禁用',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统公告';

-- ----------------------------
-- Records of ball_system_notice
-- ----------------------------
INSERT INTO `ball_system_notice` VALUES ('1', '1', 'welcome to wofootball！！', 'en', '1', '1660571226505', '0');

-- ----------------------------
-- Table structure for ball_todo
-- ----------------------------
DROP TABLE IF EXISTS `ball_todo`;
CREATE TABLE `ball_todo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '优惠名称',
  `player_name` varchar(30) DEFAULT '0' COMMENT '0首充1邀请',
  `player_id` bigint(8) DEFAULT '0' COMMENT '返佣层级',
  `from_name` varchar(30) DEFAULT NULL,
  `from_id` bigint(20) DEFAULT '1' COMMENT '状态 1开启 2关闭',
  `bonus_id` bigint(20) DEFAULT NULL,
  `bonus_money` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '更新时间',
  `oper_user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_all` (`player_name`,`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='反佣策略';

-- ----------------------------
-- Records of ball_todo
-- ----------------------------

-- ----------------------------
-- Table structure for ball_vip
-- ----------------------------
DROP TABLE IF EXISTS `ball_vip`;
CREATE TABLE `ball_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` tinyint(4) DEFAULT NULL COMMENT '会员等级',
  `level_name` varchar(255) DEFAULT NULL COMMENT '名称',
  `up_total` int(4) DEFAULT '0' COMMENT '累计',
  `up_rw` int(11) DEFAULT '0' COMMENT '充提差',
  `level_profit` varchar(10) DEFAULT '0',
  `min_pull` bigint(20) DEFAULT '0' COMMENT '最小提现',
  `max_pull` bigint(20) DEFAULT '0' COMMENT '最大提现',
  `back_water` int(11) DEFAULT '0' COMMENT '返水（%）',
  `cash_gift` int(11) DEFAULT '0' COMMENT '礼金',
  `cash_gift_interval` int(11) DEFAULT '0' COMMENT '发放周期',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态0禁1启',
  `created_at` bigint(20) DEFAULT '0',
  `updated_at` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `level_unique` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ball_vip
-- ----------------------------
INSERT INTO `ball_vip` VALUES ('1', '0', 'VIP0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `ball_vip` VALUES ('2', '1', 'VIP1', '1000000', '0', '0.1', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `ball_vip` VALUES ('3', '2', 'VIP2', '2000000', '0', '0.2', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `ball_vip` VALUES ('4', '3', 'VIP3', '3000000', '0', '0.3', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `ball_vip` VALUES ('5', '4', 'VIP4', '4000000', '0', '0.4', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `ball_vip` VALUES ('6', '5', 'VIP5', '5000000', '0', '0.5', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `ball_vip` VALUES ('7', '6', 'VIP6', '6000000', '0', '0.6', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `ball_vip` VALUES ('8', '7', 'VIP7', '7000000', '0', '0.7', '0', '0', '0', '0', '0', '1', '0', '0');

-- ----------------------------
-- Table structure for ball_virtual_currency
-- ----------------------------
DROP TABLE IF EXISTS `ball_virtual_currency`;
CREATE TABLE `ball_virtual_currency` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(20) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `protocol` varchar(30) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '更新时间',
  `status_check` tinyint(4) DEFAULT NULL,
  `checker` varchar(30) DEFAULT NULL,
  `check_time` bigint(20) DEFAULT '0',
  `oper_user` varchar(30) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `addr_unique` (`addr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ball_virtual_currency
-- ----------------------------

-- ----------------------------
-- Table structure for ball_withdraw_management
-- ----------------------------
DROP TABLE IF EXISTS `ball_withdraw_management`;
CREATE TABLE `ball_withdraw_management` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '0' COMMENT '提现名称',
  `iamge_url` varchar(255) DEFAULT '0' COMMENT '图片地址',
  `language` varchar(20) DEFAULT '0' COMMENT '语言编码',
  `status` tinyint(4) DEFAULT '1' COMMENT '1启用 2关闭',
  `created_at` bigint(20) DEFAULT '0' COMMENT '创建时间',
  `updated_at` bigint(20) DEFAULT '0' COMMENT '更新时间',
  `sort` tinyint(4) DEFAULT NULL,
  `oper_user` varchar(30) DEFAULT NULL,
  `type` tinyint(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='提现方式';

-- ----------------------------
-- Records of ball_withdraw_management
-- ----------------------------
