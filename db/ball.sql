/*
Navicat MySQL Data Transfer

Source Server         : vm_ball
Source Server Version : 50562
Source Host           : 192.168.101.33:3306
Source Database       : shiro

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2022-08-14 19:23:06
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后端管理账号';

-- ----------------------------
-- Records of ball_admin
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='轮播公告';

-- ----------------------------
-- Records of ball_announcement
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ball_app
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=408 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ball_bank
-- ----------------------------
INSERT INTO `ball_bank` VALUES ('1', 'Access Bank (Diamond)', 'ACCBANKD');
INSERT INTO `ball_bank` VALUES ('2', 'ALAT by WEMA', 'ALATBW');
INSERT INTO `ball_bank` VALUES ('3', 'ASO Savings and Loans', 'ASOSAL');
INSERT INTO `ball_bank` VALUES ('4', 'CEMCS Microfinance Bank', 'CEMCSB');
INSERT INTO `ball_bank` VALUES ('5', 'Citibank Nigeria', 'CITIBANK');
INSERT INTO `ball_bank` VALUES ('6', 'Coronation Merchant Bank', 'CMBANK');
INSERT INTO `ball_bank` VALUES ('7', 'Ecobank Nigeria', 'ECOBANK');
INSERT INTO `ball_bank` VALUES ('8', 'Ekondo Microfinance Bank', 'EkondoMB');
INSERT INTO `ball_bank` VALUES ('9', 'Eyowo', 'EYOWO');
INSERT INTO `ball_bank` VALUES ('10', 'Fidelity Bank', 'FIDELITYB');
INSERT INTO `ball_bank` VALUES ('11', 'First Bank of Nigeria', 'FIRSTBANK');
INSERT INTO `ball_bank` VALUES ('12', 'First City Monument Bank', 'FIRSTCMB');
INSERT INTO `ball_bank` VALUES ('13', 'FSDH Merchant Bank Limited', 'FSDHMBL');
INSERT INTO `ball_bank` VALUES ('14', 'Globus Bank', 'GLOBUSB');
INSERT INTO `ball_bank` VALUES ('15', 'Guaranty Trust Bank', 'GUARATYTB');
INSERT INTO `ball_bank` VALUES ('16', 'Hackman Microfinance Bank', 'HACKMANMB');
INSERT INTO `ball_bank` VALUES ('17', 'Hasal Microfinance Bank', 'HASALMB');
INSERT INTO `ball_bank` VALUES ('18', 'Heritage Bank', 'HERITAGEB');
INSERT INTO `ball_bank` VALUES ('19', 'Ibile Microfinance Bank', 'IBILEMB');
INSERT INTO `ball_bank` VALUES ('20', 'Infinity MFB', 'INFMFB');
INSERT INTO `ball_bank` VALUES ('21', 'Jaiz Bank', 'JAIZB');
INSERT INTO `ball_bank` VALUES ('22', 'Keystone Bank', 'KEYBANK');
INSERT INTO `ball_bank` VALUES ('23', 'Kuda Bank', 'KUDABANK');
INSERT INTO `ball_bank` VALUES ('24', 'Mayfair MFB', 'MAYMFB');
INSERT INTO `ball_bank` VALUES ('25', 'One Finance', 'ONEFINANCE');
INSERT INTO `ball_bank` VALUES ('26', 'Parallex Bank', 'PARABANK');
INSERT INTO `ball_bank` VALUES ('27', 'Parkway - ReadyCash', 'PKARC');
INSERT INTO `ball_bank` VALUES ('28', 'Petra Mircofinance Bank Plc', 'PETRAMBP');
INSERT INTO `ball_bank` VALUES ('29', 'Polaris Bank', 'POLARISB');
INSERT INTO `ball_bank` VALUES ('30', 'Providus Bank', 'PROVIDUSB');
INSERT INTO `ball_bank` VALUES ('31', 'Rand Merchant Bank', 'RANDMB');
INSERT INTO `ball_bank` VALUES ('32', 'Rubies MFB', 'RUBIESMFB');
INSERT INTO `ball_bank` VALUES ('33', 'Sparkle Microfinance Bank', 'SPARKBANK');
INSERT INTO `ball_bank` VALUES ('34', 'Stanbic IBTC Bank', 'STANBICB');
INSERT INTO `ball_bank` VALUES ('35', 'Standard Chartered Bank', 'STANDARDCB');
INSERT INTO `ball_bank` VALUES ('36', 'Sterling Bank', 'STERLINGB');
INSERT INTO `ball_bank` VALUES ('37', 'Suntrust Bank', 'SUNTRUST');
INSERT INTO `ball_bank` VALUES ('38', 'TAJ Bank', 'TAJBANK');
INSERT INTO `ball_bank` VALUES ('39', 'TCF MFB', 'TCFMFB');
INSERT INTO `ball_bank` VALUES ('40', 'Titan Bank', 'TITANB');
INSERT INTO `ball_bank` VALUES ('41', 'Union Bank of Nigeria', 'UNIONBON');
INSERT INTO `ball_bank` VALUES ('42', 'United Bank For Africa', 'UNITEDBFA');
INSERT INTO `ball_bank` VALUES ('43', 'Unity Bank', 'UNITYB');
INSERT INTO `ball_bank` VALUES ('44', 'VFD Microfinance Bank Limited', 'VFDMBL');
INSERT INTO `ball_bank` VALUES ('45', 'Wema Bank', 'WEMABANK');
INSERT INTO `ball_bank` VALUES ('46', 'Zenith Bank', 'ZENITHB');
INSERT INTO `ball_bank` VALUES ('47', 'FINATRUST MICROFINANCE', 'FINATRUST MICROFINANCE');
INSERT INTO `ball_bank` VALUES ('48', 'Rubies Microfinance', 'Rubies Microfinance');
INSERT INTO `ball_bank` VALUES ('49', 'Rand merchant Bank', 'Rand merchant Bank');
INSERT INTO `ball_bank` VALUES ('50', 'Paga', 'Paga');
INSERT INTO `ball_bank` VALUES ('51', 'GoMoney', 'GoMoney');
INSERT INTO `ball_bank` VALUES ('52', 'AMJU Unique Microfinance Bank', 'AMJU Unique Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('53', 'BRIDGEWAY MICROFINANCE BANK', 'BRIDGEWAY MICROFINANCE BANK');
INSERT INTO `ball_bank` VALUES ('54', 'Mint-Finex MICROFINANCE BANK', 'Mint-Finex MICROFINANCE BANK');
INSERT INTO `ball_bank` VALUES ('55', 'Covenant Microfinance Bank', 'Covenant Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('56', 'PatrickGold Microfinance Bank', 'PatrickGold Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('57', 'NPF MicroFinance Bank', 'NPF MicroFinance Bank');
INSERT INTO `ball_bank` VALUES ('58', 'PayAttitude Online', 'PayAttitude Online');
INSERT INTO `ball_bank` VALUES ('59', 'Intellifin', 'Intellifin');
INSERT INTO `ball_bank` VALUES ('60', 'Contec Global Infotech Limited (NowNow)', 'Contec Global Infotech Limited (NowNow)');
INSERT INTO `ball_bank` VALUES ('61', 'FCMB Easy Account', 'FCMB Easy Account');
INSERT INTO `ball_bank` VALUES ('62', 'EcoMobile', 'EcoMobile');
INSERT INTO `ball_bank` VALUES ('63', 'Innovectives Kesh', 'Innovectives Kesh');
INSERT INTO `ball_bank` VALUES ('64', 'Zinternet Nigera Limited', 'Zinternet Nigera Limited');
INSERT INTO `ball_bank` VALUES ('65', 'HeritageTagPay', 'HeritageTagPay');
INSERT INTO `ball_bank` VALUES ('66', 'Eartholeum', 'Eartholeum');
INSERT INTO `ball_bank` VALUES ('67', 'MoneyBox', 'MoneyBox');
INSERT INTO `ball_bank` VALUES ('68', 'Fidelity Mobile', 'Fidelity Mobile');
INSERT INTO `ball_bank` VALUES ('69', 'Enterprise Bank', 'Enterprise Bank');
INSERT INTO `ball_bank` VALUES ('70', 'FBNQUEST Merchant Bank', 'FBNQUEST Merchant Bank');
INSERT INTO `ball_bank` VALUES ('71', 'Nova Merchant Bank', 'Nova Merchant Bank');
INSERT INTO `ball_bank` VALUES ('72', 'Omoluabi savings and loans', 'Omoluabi savings and loans');
INSERT INTO `ball_bank` VALUES ('73', 'Trustbond Mortgage Bank', 'Trustbond Mortgage Bank');
INSERT INTO `ball_bank` VALUES ('74', 'SafeTrust', 'SafeTrust');
INSERT INTO `ball_bank` VALUES ('75', 'FBN Mortgages Limited', 'FBN Mortgages Limited');
INSERT INTO `ball_bank` VALUES ('76', 'Imperial Homes Mortgage Bank', 'Imperial Homes Mortgage Bank');
INSERT INTO `ball_bank` VALUES ('77', 'AG Mortgage Bank', 'AG Mortgage Bank');
INSERT INTO `ball_bank` VALUES ('78', 'Gateway Mortgage Bank', 'Gateway Mortgage Bank');
INSERT INTO `ball_bank` VALUES ('79', 'Refuge Mortgage Bank', 'Refuge Mortgage Bank');
INSERT INTO `ball_bank` VALUES ('80', 'Platinum Mortgage Bank', 'Platinum Mortgage Bank');
INSERT INTO `ball_bank` VALUES ('81', 'First Generation Mortgage Bank', 'First Generation Mortgage Bank');
INSERT INTO `ball_bank` VALUES ('82', 'Brent Mortgage Bank', 'Brent Mortgage Bank');
INSERT INTO `ball_bank` VALUES ('83', 'Infinity Trust Mortgage Bank', 'Infinity Trust Mortgage Bank');
INSERT INTO `ball_bank` VALUES ('84', 'Jubilee-Life Mortgage Bank', 'Jubilee-Life Mortgage Bank');
INSERT INTO `ball_bank` VALUES ('85', 'Haggai Mortgage Bank Limited', 'Haggai Mortgage Bank Limited');
INSERT INTO `ball_bank` VALUES ('86', 'New Prudential Bank', 'New Prudential Bank');
INSERT INTO `ball_bank` VALUES ('87', 'Fortis Microfinance Bank', 'Fortis Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('88', 'Page Financials', 'Page Financials');
INSERT INTO `ball_bank` VALUES ('89', 'Parralex Microfinance bank', 'Parralex Microfinance bank');
INSERT INTO `ball_bank` VALUES ('90', 'Seed Capital Microfinance Bank', 'Seed Capital Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('91', 'Empire trust MFB', 'Empire trust MFB');
INSERT INTO `ball_bank` VALUES ('92', 'AMML MFB', 'AMML MFB');
INSERT INTO `ball_bank` VALUES ('93', 'Boctrust Microfinance Bank', 'Boctrust Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('94', 'Ohafia Microfinance Bank', 'Ohafia Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('95', 'Wetland Microfinance Bank', 'Wetland Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('96', 'Gowans Microfinance Bank', 'Gowans Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('97', 'Verite Microfinance Bank', 'Verite Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('98', 'Xslnce Microfinance Bank', 'Xslnce Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('99', 'Regent Microfinance Bank', 'Regent Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('100', 'Fidfund Microfinance Bank', 'Fidfund Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('101', 'BC Kash Microfinance Bank', 'BC Kash Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('102', 'Ndiorah Microfinance Bank', 'Ndiorah Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('103', 'Money Trust Microfinance Bank', 'Money Trust Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('104', 'Consumer Microfinance Bank', 'Consumer Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('105', 'Allworkers Microfinance Bank', 'Allworkers Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('106', 'Richway Microfinance Bank', 'Richway Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('107', 'AL-Barakah Microfinance Bank', 'AL-Barakah Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('108', 'Accion Microfinance Bank', 'Accion Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('109', 'Personal Trust Microfinance Bank', 'Personal Trust Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('110', 'Baobab Microfinance Bank', 'Baobab Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('111', 'PecanTrust Microfinance Bank', 'PecanTrust Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('112', 'Royal Exchange Microfinance Bank', 'Royal Exchange Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('113', 'Visa Microfinance Bank', 'Visa Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('114', 'Sagamu Microfinance Bank', 'Sagamu Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('115', 'Chikum Microfinance Bank', 'Chikum Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('116', 'Yes Microfinance Bank', 'Yes Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('117', 'Apeks Microfinance Bank', 'Apeks Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('118', 'CIT Microfinance Bank', 'CIT Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('119', 'Fullrange Microfinance Bank', 'Fullrange Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('120', 'Trident Microfinance Bank', 'Trident Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('121', 'IRL Microfinance Bank', 'IRL Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('122', 'Virtue Microfinance Bank', 'Virtue Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('123', 'Mutual Trust Microfinance Bank', 'Mutual Trust Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('124', 'Nagarta Microfinance Bank', 'Nagarta Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('125', 'FFS Microfinance Bank', 'FFS Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('126', 'La Fayette Microfinance Bank', 'La Fayette Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('127', 'e-Barcs Microfinance Bank', 'e-Barcs Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('128', 'Futo Microfinance Bank', 'Futo Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('129', 'Credit Afrique Microfinance Bank', 'Credit Afrique Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('130', 'Addosser Microfinance Bank', 'Addosser Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('131', 'Okpoga Microfinance Bank', 'Okpoga Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('132', 'Stanford Microfinance Bak', 'Stanford Microfinance Bak');
INSERT INTO `ball_bank` VALUES ('133', 'First Royal Microfinance Bank', 'First Royal Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('134', 'Eso-E Microfinance Bank', 'Eso-E Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('135', 'Daylight Microfinance Bank', 'Daylight Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('136', 'Gashua Microfinance Bank', 'Gashua Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('137', 'Alpha Kapital Microfinance Bank', 'Alpha Kapital Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('138', 'Mainstreet Microfinance Bank', 'Mainstreet Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('139', 'Astrapolaris Microfinance Bank', 'Astrapolaris Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('140', 'Reliance Microfinance Bank', 'Reliance Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('141', 'Malachy Microfinance Bank', 'Malachy Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('142', 'Bosak Microfinance Bank', 'Bosak Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('143', 'Lapo Microfinance Bank', 'Lapo Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('144', 'GreenBank Microfinance Bank', 'GreenBank Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('145', 'FAST Microfinance Bank', 'FAST Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('146', 'Baines Credit Microfinance Bank', 'Baines Credit Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('147', 'Esan Microfinance Bank', 'Esan Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('148', 'Mutual Benefits Microfinance Bank', 'Mutual Benefits Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('149', 'KCMB Microfinance Bank', 'KCMB Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('150', 'Midland Microfinance Bank', 'Midland Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('151', 'Unical Microfinance Bank', 'Unical Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('152', 'NIRSAL Microfinance Bank', 'NIRSAL Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('153', 'Grooming Microfinance Bank', 'Grooming Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('154', 'Pennywise Microfinance Bank', 'Pennywise Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('155', 'ABU Microfinance Bank', 'ABU Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('156', 'RenMoney Microfinance Bank', 'RenMoney Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('157', 'New Dawn Microfinance Bank', 'New Dawn Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('158', 'UNN MFB', 'UNN MFB');
INSERT INTO `ball_bank` VALUES ('159', 'Imo State Microfinance Bank', 'Imo State Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('160', 'Alekun Microfinance Bank', 'Alekun Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('161', 'Above Only Microfinance Bank', 'Above Only Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('162', 'Quickfund Microfinance Bank', 'Quickfund Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('163', 'Stellas Microfinance Bank', 'Stellas Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('164', 'Navy Microfinance Bank', 'Navy Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('165', 'Auchi Microfinance Bank', 'Auchi Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('166', 'Lovonus Microfinance Bank', 'Lovonus Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('167', 'Uniben Microfinance Bank', 'Uniben Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('168', 'Adeyemi College Staff Microfinance Bank', 'Adeyemi College Staff Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('169', 'Greenville Microfinance Bank', 'Greenville Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('170', 'AB Microfinance Bank', 'AB Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('171', 'Lavender Microfinance Bank', 'Lavender Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('172', 'Olabisi Onabanjo University Microfinance Bank', 'Olabisi Onabanjo University Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('173', 'Emeralds Microfinance Bank', 'Emeralds Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('174', 'Trustfund Microfinance Bank', 'Trustfund Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('175', 'Al-Hayat Microfinance Bank', 'Al-Hayat Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('176', 'FET', 'FET');
INSERT INTO `ball_bank` VALUES ('177', 'Cellulant', 'Cellulant');
INSERT INTO `ball_bank` VALUES ('178', 'eTranzact', 'eTranzact');
INSERT INTO `ball_bank` VALUES ('179', 'Stanbic IBTC @ease wallet', 'Stanbic IBTC @ease wallet');
INSERT INTO `ball_bank` VALUES ('180', 'Ecobank Xpress Account', 'Ecobank Xpress Account');
INSERT INTO `ball_bank` VALUES ('181', 'GTMobile', 'GTMobile');
INSERT INTO `ball_bank` VALUES ('182', 'TeasyMobile', 'TeasyMobile');
INSERT INTO `ball_bank` VALUES ('183', 'Mkudi', 'Mkudi');
INSERT INTO `ball_bank` VALUES ('184', 'VTNetworks', 'VTNetworks');
INSERT INTO `ball_bank` VALUES ('185', 'AccessMobile', 'AccessMobile');
INSERT INTO `ball_bank` VALUES ('186', 'FBNMobile', 'FBNMobile');
INSERT INTO `ball_bank` VALUES ('187', 'Kegow', 'Kegow');
INSERT INTO `ball_bank` VALUES ('188', 'FortisMobile', 'FortisMobile');
INSERT INTO `ball_bank` VALUES ('189', 'Hedonmark', 'Hedonmark');
INSERT INTO `ball_bank` VALUES ('190', 'ZenithMobile', 'ZenithMobile');
INSERT INTO `ball_bank` VALUES ('191', 'Flutterwave Technology Solutions Limited', 'Flutterwave Technology Solutions Limited');
INSERT INTO `ball_bank` VALUES ('192', 'NIP Virtual Bank', 'NIP Virtual Bank');
INSERT INTO `ball_bank` VALUES ('193', 'ChamsMobile', 'ChamsMobile');
INSERT INTO `ball_bank` VALUES ('194', 'MAUTECH Microfinance Bank', 'MAUTECH Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('195', 'Greenwich Merchant Bank', 'Greenwich Merchant Bank');
INSERT INTO `ball_bank` VALUES ('196', 'Firmus MFB', 'Firmus MFB');
INSERT INTO `ball_bank` VALUES ('197', 'Manny Microfinance bank', 'Manny Microfinance bank');
INSERT INTO `ball_bank` VALUES ('198', 'Letshego MFB', 'Letshego MFB');
INSERT INTO `ball_bank` VALUES ('199', 'M36', 'M36');
INSERT INTO `ball_bank` VALUES ('200', 'Safe Haven MFB', 'Safe Haven MFB');
INSERT INTO `ball_bank` VALUES ('201', '9 Payment Service Bank', '9 Payment Service Bank');
INSERT INTO `ball_bank` VALUES ('202', 'Tangerine Bank', 'Tangerine Bank');
INSERT INTO `ball_bank` VALUES ('203', 'Access Bank', 'Access Bank');
INSERT INTO `ball_bank` VALUES ('204', 'ACCESS BANK PLC(DIAMOND)', 'ACCESS BANK PLC(DIAMOND)');
INSERT INTO `ball_bank` VALUES ('205', 'AB Microfinance Bank', 'AB Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('206', 'Above Only Microfinance Bank', 'Above Only Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('207', 'ABU Microfinance Bank', 'ABU Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('208', 'ABUCOOP Microfinance Bank', 'ABUCOOP Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('209', 'Accion Microfinance Bank', 'Accion Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('210', 'Addosser Microfinance Bank', 'Addosser Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('211', 'Adeyemi College Staff Microfinance Bank', 'Adeyemi College Staff Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('212', 'Afekhafe Microfinance Bank', 'Afekhafe Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('213', 'Agosasa Microfinance Bank', 'Agosasa Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('214', 'AL-Barakah Microfinance Bank', 'AL-Barakah Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('215', 'AL-HAYAT Microfinance Bank', 'AL-HAYAT Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('216', 'Alekun Microfinance Bank', 'Alekun Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('217', 'Alert Microfinance Bank', 'Alert Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('218', 'Allworkers Microfinance Bank', 'Allworkers Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('219', 'Alpha Kapital Microfinance Bank', 'Alpha Kapital Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('220', 'Amac Microfinance Bank', 'Amac Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('221', 'Amju Unique Micro Finance Ban', 'Amju Unique Micro Finance Ban');
INSERT INTO `ball_bank` VALUES ('222', 'AMML Microfinance Bank', 'AMML Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('223', 'Apeks Microfinance Bank', 'Apeks Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('224', 'APPLE Microfinance Bank', 'APPLE Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('225', 'Arise Microfinance Bank', 'Arise Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('226', 'ASO Savings & Loans', 'ASO Savings & Loans');
INSERT INTO `ball_bank` VALUES ('227', 'Asset Matrix Microfinance Bank', 'Asset Matrix Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('228', 'Astrapolaris Microfinance Bank', 'Astrapolaris Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('229', 'Auchi Microfinance Bank', 'Auchi Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('230', 'Access Yello', 'Access Yello');
INSERT INTO `ball_bank` VALUES ('231', 'Access Money', 'Access Money');
INSERT INTO `ball_bank` VALUES ('232', 'Abbey Mortgage Bank', 'Abbey Mortgage Bank');
INSERT INTO `ball_bank` VALUES ('233', 'AG Mortgage Bank Plc', 'AG Mortgage Bank Plc');
INSERT INTO `ball_bank` VALUES ('234', 'Ada Microfinance Bank', 'Ada Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('235', 'Assets Microfinance Bank', 'Assets Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('236', 'Avuenegbe Microfinance Bank', 'Avuenegbe Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('237', 'Anchorage Microfinance Bank', 'Anchorage Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('238', 'Baines Credit MicrofinanceBank', 'Baines Credit MicrofinanceBank');
INSERT INTO `ball_bank` VALUES ('239', 'Balogun Fulani Microfinance Bank', 'Balogun Fulani Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('240', 'Banex Microfinance Bank', 'Banex Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('241', 'BAOBAB Microfinance Bank', 'BAOBAB Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('242', 'Bayero Microfinance Bank', 'Bayero Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('243', 'BC Kash Microfinance Bank', 'BC Kash Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('244', 'BENYSTA Microfinance Bank', 'BENYSTA Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('245', 'BIPC Microfinance Bank', 'BIPC Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('246', 'Bluewhales Microfinance Bank', 'Bluewhales Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('247', 'Boctrust Microfinance Bank', 'Boctrust Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('248', 'Bonghe Microfinance Bank', 'Bonghe Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('249', 'BORGU Microfinance Bank', 'BORGU Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('250', 'Borstal Microfinance Bank', 'Borstal Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('251', 'Bosak Microfinance Bank', 'Bosak Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('252', 'Bowen Microfinance Bank', 'Bowen Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('253', 'BRETHREN Microfinance Bank', 'BRETHREN Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('254', 'Bridgeway Microfinance Bank', 'Bridgeway Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('255', 'Brightway Microfinance Bank', 'Brightway Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('256', 'Business Support Microfinance Bank', 'Business Support Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('257', 'Brent Mortgage Bank', 'Brent Mortgage Bank');
INSERT INTO `ball_bank` VALUES ('258', 'Balogun Gambari Mfb', 'Balogun Gambari Mfb');
INSERT INTO `ball_bank` VALUES ('259', 'Central Bank of Nigeria', 'Central Bank of Nigeria');
INSERT INTO `ball_bank` VALUES ('260', 'Citi Bank', 'Citi Bank');
INSERT INTO `ball_bank` VALUES ('261', 'Calabar Microfinance Bank', 'Calabar Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('262', 'Capstone Microfinance Bank', 'Capstone Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('263', 'Cashconnect Microfinance Bank', 'Cashconnect Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('264', 'Chibueze Microfinance Bank', 'Chibueze Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('265', 'CoalCamp Microfinance Bank', 'CoalCamp Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('266', 'Coastline Microfinance Bank', 'Coastline Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('267', 'Corestep Microfinance Bank', 'Corestep Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('268', 'Carbon', 'Carbon');
INSERT INTO `ball_bank` VALUES ('269', 'Cellulant PSSP', 'Cellulant PSSP');
INSERT INTO `ball_bank` VALUES ('270', 'Cyberspace Limited', 'Cyberspace Limited');
INSERT INTO `ball_bank` VALUES ('271', 'Coop Mortgage Bank', 'Coop Mortgage Bank');
INSERT INTO `ball_bank` VALUES ('272', 'Conpro Microfinance Bank', 'Conpro Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('273', 'Chams Mobile', 'Chams Mobile');
INSERT INTO `ball_bank` VALUES ('274', 'Contec Global Infotech', 'Contec Global Infotech');
INSERT INTO `ball_bank` VALUES ('275', 'Davodani Microfinance Bank', 'Davodani Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('276', 'Ecobank Bank', 'Ecobank Bank');
INSERT INTO `ball_bank` VALUES ('277', 'Eagle Flight Microfinance Bank', 'Eagle Flight Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('278', 'Ebonyi State University Microfinance Bank', 'Ebonyi State University Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('279', 'Edfin Microfinance Bank', 'Edfin Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('280', 'EK-Reliable Microfinance Bank', 'EK-Reliable Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('281', 'Empire trust Microfinance Bank', 'Empire trust Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('282', 'Evangel Microfinance Bank', 'Evangel Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('283', 'Evergreen Microfinance Bank', 'Evergreen Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('284', 'Eyowo Microfinance Bank', 'Eyowo Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('285', 'FBN Merchant Bank', 'FBN Merchant Bank');
INSERT INTO `ball_bank` VALUES ('286', 'FSDH Merchant Bank', 'FSDH Merchant Bank');
INSERT INTO `ball_bank` VALUES ('287', 'FAME Microfinance Bank', 'FAME Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('288', 'FCMB BETA', 'FCMB BETA');
INSERT INTO `ball_bank` VALUES ('289', 'FCT Microfinance Bank', 'FCT Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('290', 'FEDERAL UNIVERSITY DUTSE Microfinance Bank', 'FEDERAL UNIVERSITY DUTSE Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('291', 'FederalPoly NasarawaMicrofinance Bank', 'FederalPoly NasarawaMicrofinance Bank');
INSERT INTO `ball_bank` VALUES ('292', 'FinaTrust Microfinance Bank', 'FinaTrust Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('293', 'Finca Microfinance Bank', 'Finca Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('294', 'Firmus Microfinance Bank', 'Firmus Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('295', 'First Multiple Microfinance Bank', 'First Multiple Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('296', 'First Option Microfinance Bank', 'First Option Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('297', 'Futminna Microfinance Bank', 'Futminna Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('298', 'FETS', 'FETS');
INSERT INTO `ball_bank` VALUES ('299', 'FirstMonie Wallet', 'FirstMonie Wallet');
INSERT INTO `ball_bank` VALUES ('300', 'Fortis Mobile Money', 'Fortis Mobile Money');
INSERT INTO `ball_bank` VALUES ('301', 'First Mortgage Limited', 'First Mortgage Limited');
INSERT INTO `ball_bank` VALUES ('302', 'Fedpoly Nasarawa Microfinance Bank', 'Fedpoly Nasarawa Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('303', 'FirstTrust Mortgage Bank', 'FirstTrust Mortgage Bank');
INSERT INTO `ball_bank` VALUES ('304', 'FCMB Mobile', 'FCMB Mobile');
INSERT INTO `ball_bank` VALUES ('305', 'Flutterwave Technology Solutions', 'Flutterwave Technology Solutions');
INSERT INTO `ball_bank` VALUES ('306', 'Federal Polytechnic, Nekede Microfinance Bank', 'Federal Polytechnic, Nekede Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('307', 'First Apple Limited', 'First Apple Limited');
INSERT INTO `ball_bank` VALUES ('308', 'Fortress Microfinance Bank', 'Fortress Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('309', 'GTBank', 'GTBank');
INSERT INTO `ball_bank` VALUES ('310', 'Girei Microfinance Bank', 'Girei Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('311', 'GLORY Microfinance Bank', 'GLORY Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('312', 'GMB Microfinance Bank', 'GMB Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('313', 'Grant Microfinance Bank', 'Grant Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('314', 'GTI Microfinance Bank', 'GTI Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('315', 'Giginya Microfinance Bank', 'Giginya Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('316', 'Giant Stride Mfb', 'Giant Stride Mfb');
INSERT INTO `ball_bank` VALUES ('317', 'Good Neighbours Mfb', 'Good Neighbours Mfb');
INSERT INTO `ball_bank` VALUES ('318', 'Heritage', 'Heritage');
INSERT INTO `ball_bank` VALUES ('319', 'Hala Microfinance Bank', 'Hala Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('320', 'Headway Microfinance Bank', 'Headway Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('321', 'Highland Microfinance Bank', 'Highland Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('322', 'Hope Payment Service Bank', 'Hope Payment Service Bank');
INSERT INTO `ball_bank` VALUES ('323', 'First Heritage Microfinance Bank', 'First Heritage Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('324', 'IBETO Microfinance Bank', 'IBETO Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('325', 'Ikenne Microfinance Bank', 'Ikenne Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('326', 'Ikire Microfinance Bank', 'Ikire Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('327', 'Ilasan Microfinance Bank', 'Ilasan Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('328', 'Ilora Microfinance Bank', 'Ilora Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('329', 'Imo Microfinance Bank', 'Imo Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('330', 'Imowo Microfinance Bank', 'Imowo Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('331', 'Infinity Microfinance Bank', 'Infinity Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('332', 'Insight Microfinance Bank', 'Insight Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('333', 'Interland Microfinance Bank', 'Interland Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('334', 'ISALEOYO Microfinance Bank', 'ISALEOYO Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('335', 'Ishie Microfinance Bank', 'Ishie Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('336', 'Izon Microfinance Bank', 'Izon Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('337', 'Innovectives', 'Innovectives');
INSERT INTO `ball_bank` VALUES ('338', 'Ilorin Microfinance Bank', 'Ilorin Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('339', 'Jubilee Life Mortgage Bank', 'Jubilee Life Mortgage Bank');
INSERT INTO `ball_bank` VALUES ('340', 'Kadpoly Microfinance Bank', 'Kadpoly Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('341', 'Kontagora Microfinance Bank', 'Kontagora Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('342', 'Kuda Microfinance Bank', 'Kuda Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('343', 'Lafayette Microfinance Bank', 'Lafayette Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('344', 'Legend Microfinance Bank', 'Legend Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('345', 'Ltshego Microfinance Bank', 'Ltshego Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('346', 'Lagos Building Investment Company', 'Lagos Building Investment Company');
INSERT INTO `ball_bank` VALUES ('347', 'Light Microfinance Bank', 'Light Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('348', 'Megapraise Microfinance Bank', 'Megapraise Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('349', 'Meridian Microfinance Bank', 'Meridian Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('350', 'Molusi Microfinance Bank', 'Molusi Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('351', 'MozFin Microfinance Bank', 'MozFin Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('352', 'MayFresh Mortgage Bank', 'MayFresh Mortgage Bank');
INSERT INTO `ball_bank` VALUES ('353', 'Monarch Microfinance Bank', 'Monarch Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('354', 'Moyofade Microfinance Bank', 'Moyofade Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('355', 'NOVA Merchant Bank Ltd', 'NOVA Merchant Bank Ltd');
INSERT INTO `ball_bank` VALUES ('356', 'NIGERIAN NAVY Microfinance Bank', 'NIGERIAN NAVY Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('357', 'Nnew women Microfinance Bank', 'Nnew women Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('358', 'Nuture Microfinance Bank', 'Nuture Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('359', 'NowNow Bank', 'NowNow Bank');
INSERT INTO `ball_bank` VALUES ('360', 'Nsukka Microfinance Bank', 'Nsukka Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('361', 'OAKLAND Microfinance Bank', 'OAKLAND Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('362', 'OLUCHUKWU Microfinance Bank', 'OLUCHUKWU Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('363', 'Oscotech Microfinance Bank', 'Oscotech Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('364', 'Omoluabi Mortgage Bank Plc', 'Omoluabi Mortgage Bank Plc');
INSERT INTO `ball_bank` VALUES ('365', 'Olofin Owena Microfinance Bank', 'Olofin Owena Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('366', 'Petra Microfinance Bank', 'Petra Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('367', 'Polyunwana Microfinance Bank', 'Polyunwana Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('368', 'Prestige Microfinance Bank', 'Prestige Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('369', 'Parkway-ReadyCash', 'Parkway-ReadyCash');
INSERT INTO `ball_bank` VALUES ('370', 'Paystack Payments', 'Paystack Payments');
INSERT INTO `ball_bank` VALUES ('371', 'Rolez Microfinance Bank', 'Rolez Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('372', 'RUBIES Microfinance Bank', 'RUBIES Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('373', 'Rehoboth Microfinance Bank', 'Rehoboth Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('374', 'Safetrust Mortage', 'Safetrust Mortage');
INSERT INTO `ball_bank` VALUES ('375', 'Shepherd Trust Microfinance Bank', 'Shepherd Trust Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('376', 'Spectrum Microfinance Bank', 'Spectrum Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('377', 'STB MORTGAGE BANK', 'STB MORTGAGE BANK');
INSERT INTO `ball_bank` VALUES ('378', 'Stockcorp Microfinance Bank', 'Stockcorp Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('379', 'Sunbeam Microfinance Bank', 'Sunbeam Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('380', 'Sterling Mobile', 'Sterling Mobile');
INSERT INTO `ball_bank` VALUES ('381', 'Safegate Microfinance Bank', 'Safegate Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('382', 'Sulspap Microfinance Bank', 'Sulspap Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('383', 'TITAN Trust Bank', 'TITAN Trust Bank');
INSERT INTO `ball_bank` VALUES ('384', 'TCF Microfinance Bank', 'TCF Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('385', 'TrustBanc J6 Microfinance Bank Limited', 'TrustBanc J6 Microfinance Bank Limited');
INSERT INTO `ball_bank` VALUES ('386', 'TagPay', 'TagPay');
INSERT INTO `ball_bank` VALUES ('387', 'Trustbond Mortgage Bank Plc', 'Trustbond Mortgage Bank Plc');
INSERT INTO `ball_bank` VALUES ('388', 'United Bank for Africa Plc', 'United Bank for Africa Plc');
INSERT INTO `ball_bank` VALUES ('389', 'U AND C Microfinance Bank', 'U AND C Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('390', 'Unilorin Microfinance Bank', 'Unilorin Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('391', 'Uzondu Microfinance Bank', 'Uzondu Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('392', 'Unilag Microfinance Bank', 'Unilag Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('393', 'UNIMAID Microfinance Bank', 'UNIMAID Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('394', 'Vt Network', 'Vt Network');
INSERT INTO `ball_bank` VALUES ('395', 'Verdant Microfinance Bank', 'Verdant Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('396', 'Winview Microfinance Bank', 'Winview Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('397', 'YCT Microfinance Bank', 'YCT Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('398', 'Zenith Mobile', 'Zenith Mobile');
INSERT INTO `ball_bank` VALUES ('399', 'ZWallet', 'ZWallet');
INSERT INTO `ball_bank` VALUES ('400', 'ZENITH EASY WALLET', 'ZENITH EASY WALLET');
INSERT INTO `ball_bank` VALUES ('401', 'Interswitch', 'Interswitch');
INSERT INTO `ball_bank` VALUES ('402', 'VFD Microfinance Bank', 'VFD Microfinance Bank');
INSERT INTO `ball_bank` VALUES ('403', 'Paycom', 'Paycom');
INSERT INTO `ball_bank` VALUES ('404', 'PalmPay', 'PalmPay');
INSERT INTO `ball_bank` VALUES ('405', 'Lagos Building Investment Company Plc', 'Lagos Building Investment Company Plc');
INSERT INTO `ball_bank` VALUES ('406', 'Ibile Microfinance', 'Ibile Microfinance');
INSERT INTO `ball_bank` VALUES ('407', 'SDH Merchant Bank Limited', 'SDH Merchant Bank Limited');

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
  `back_encoding` varchar(30) DEFAULT '' COMMENT '银行编码',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='反佣策略';

-- ----------------------------
-- Records of ball_commission_strategy
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of ball_group
-- ----------------------------
INSERT INTO `ball_group` VALUES ('1', '超级管理员', '1', '0', '0');

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
INSERT INTO `ball_group_menu` VALUES ('1', '186');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统公告';

-- ----------------------------
-- Records of ball_ip_country
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统公告';

-- ----------------------------
-- Records of ball_ip_white
-- ----------------------------

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
  `money_real` bigint(20) DEFAULT NULL,
  `money_sys` bigint(20) DEFAULT NULL,
  `money_discount` bigint(20) DEFAULT NULL,
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
  `account_type` tinyint(4) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='权限表';

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
INSERT INTO `ball_menu` VALUES ('186', '118', '系统配置', '/ball/merchant/param/sys', '0', '1', '0', '0');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付管理';

-- ----------------------------
-- Records of ball_pay_behalf
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付管理';

-- ----------------------------
-- Records of ball_payment_management
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='轮播图';

-- ----------------------------
-- Records of ball_slideshow
-- ----------------------------

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统配置';

-- ----------------------------
-- Records of ball_system_config
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统公告';

-- ----------------------------
-- Records of ball_system_notice
-- ----------------------------

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
INSERT INTO `ball_vip` VALUES ('2', '1', 'VIP1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `ball_vip` VALUES ('3', '2', 'VIP2', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `ball_vip` VALUES ('4', '3', 'VIP3', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `ball_vip` VALUES ('5', '4', 'VIP4', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `ball_vip` VALUES ('6', '5', 'VIP5', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `ball_vip` VALUES ('7', '6', 'VIP6', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `ball_vip` VALUES ('8', '7', 'VIP7', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0');

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
