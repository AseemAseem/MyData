/*
 Navicat Premium Data Transfer

 Source Server         : dev-电商-10.110.1.241
 Source Server Type    : MySQL
 Source Server Version : 50634
 Source Host           : 10.110.1.241:3306
 Source Schema         : mall_ums

 Target Server Type    : MySQL
 Target Server Version : 50634
 File Encoding         : 65001

 Date: 04/05/2023 11:19:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ums_menu
-- ----------------------------
DROP TABLE IF EXISTS `ums_menu`;
CREATE TABLE `ums_menu`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键id，雪花算法生成',
  `parent_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '0' COMMENT '父级ID',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '菜单名称',
  `level` int(4) NULL DEFAULT NULL COMMENT '菜单级数',
  `sort` int(4) NULL DEFAULT 0 COMMENT '菜单排序',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '前端名称',
  `icon` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '前端图标',
  `hidden` int(1) NULL DEFAULT 0 COMMENT '前端隐藏, 1-隐藏，0-显示',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建者',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '后台菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ums_menu
-- ----------------------------
INSERT INTO `ums_menu` VALUES ('1600033389203066881', '0', '商品', 0, 1, 'route-goods', '', 0, '2022-12-06 15:44:22', '1605871474248617984', NULL, NULL);
INSERT INTO `ums_menu` VALUES ('1600036058932076545', '1600033389203066881', '商品列表', 1, 4, 'route-goods-list', '', 0, '2022-12-06 15:54:58', '1605871474248617984', '2022-12-06 15:54:58', NULL);
INSERT INTO `ums_menu` VALUES ('1600036589649944578', '1600033389203066881', '商品分类', 1, 2, 'route-goods-cate', '', 0, '2022-12-06 15:57:05', '1605871474248617984', '2022-12-06 15:57:05', '1605871474248617984');
INSERT INTO `ums_menu` VALUES ('1600036645731983361', '1600033389203066881', '品牌管理', 1, 1, 'route-goods-brand', '', 0, '2022-12-06 15:57:18', '1605871474248617984', '2022-12-06 15:57:18', NULL);
INSERT INTO `ums_menu` VALUES ('1600037532391055362', '0', '订单', 0, 2, 'route-order', 'order', 0, '2022-12-06 16:00:50', '1605871474248617984', '2022-12-06 16:00:50', NULL);
INSERT INTO `ums_menu` VALUES ('1600037707968815105', '1600037532391055362', '订单列表', 1, 0, 'route-order-list', '', 0, '2022-12-06 16:01:31', '1605871474248617984', '2022-12-06 16:01:31', NULL);
INSERT INTO `ums_menu` VALUES ('1600038763717074946', '0', '权限管理', 0, 0, 'route-permission-manage', '', 0, '2022-12-06 16:05:43', '1605871474248617984', '2022-12-06 16:05:43', NULL);
INSERT INTO `ums_menu` VALUES ('1600038879748300801', '1600038763717074946', '用户列表', 1, 0, 'route-permission-manage-user', '', 0, '2022-12-06 16:06:11', '1605871474248617984', '2022-12-06 16:06:11', NULL);
INSERT INTO `ums_menu` VALUES ('1600038947121405953', '1600038763717074946', '角色列表', 1, 0, 'route-permission-manage-role', '', 0, '2022-12-06 16:06:27', '1605871474248617984', '2022-12-06 16:06:27', NULL);
INSERT INTO `ums_menu` VALUES ('1600039031875706881', '1600038763717074946', '菜单列表', 1, 0, 'route-permission-manage-menu', '', 0, '2022-12-06 16:06:47', '1605871474248617984', '2022-12-06 16:06:47', NULL);
INSERT INTO `ums_menu` VALUES ('1600040523340955649', '1600038763717074946', '资源列表', 1, 0, 'route-permission-manage-resource', '', 0, '2022-12-06 16:12:43', '1605871474248617984', '2022-12-06 16:12:43', NULL);
INSERT INTO `ums_menu` VALUES ('1605874508433297408', '1600037532391055362', '交易流水', 1, 0, 'route-wxpay-flow', '', 0, '2022-12-22 18:34:53', '1605871474248617984', '2022-12-22 18:34:53', NULL);
INSERT INTO `ums_menu` VALUES ('1605912051191222272', '1600037532391055362', '退款申请列表', 1, 0, 'route-return-apply', '', 0, '2022-12-22 21:04:04', '1605871474248617984', '2022-12-22 21:04:04', NULL);
INSERT INTO `ums_menu` VALUES ('1610517758227308544', '0', '顾客信息', 0, 0, 'route-customer', '', 0, '2023-01-04 06:05:30', '1605871474248617984', '2023-01-04 06:05:30', NULL);
INSERT INTO `ums_menu` VALUES ('1610517887554478080', '1610517758227308544', '顾客信息列表', 1, 0, 'route-customer-list', '', 0, '2023-01-04 06:06:01', '1605871474248617984', '2023-01-04 06:06:01', NULL);
INSERT INTO `ums_menu` VALUES ('1610518845722255360', '0', '基础配置', 0, 0, 'route-basic-config', '', 0, '2023-01-04 06:09:49', '1605871474248617984', '2023-01-04 06:09:49', NULL);
INSERT INTO `ums_menu` VALUES ('1610518909769277440', '1610518845722255360', '隐私与用户协议', 1, 0, 'route-privacy-user-agreements', '', 0, '2023-01-04 06:10:05', '1605871474248617984', '2023-01-04 06:10:05', NULL);
INSERT INTO `ums_menu` VALUES ('1610518967742947328', '1610518845722255360', '常见问题类型', 1, 0, 'route-config-faq-type', '', 0, '2023-01-04 06:10:19', '1605871474248617984', '2023-01-04 06:10:19', NULL);
INSERT INTO `ums_menu` VALUES ('1610519016430428160', '1610518845722255360', '常见问题', 1, 0, 'route-config-faq', '', 0, '2023-01-04 06:10:30', '1605871474248617984', '2023-01-04 06:10:30', NULL);
INSERT INTO `ums_menu` VALUES ('1610519069349961728', '1610518845722255360', '语言配置', 1, 0, 'route-config-lang', '', 0, '2023-01-04 06:10:43', '1605871474248617984', '2023-01-04 06:10:43', NULL);
INSERT INTO `ums_menu` VALUES ('1610519123297099776', '1610518845722255360', '应用配置', 1, 0, 'route-config-application', '', 0, '2023-01-04 06:10:56', '1605871474248617984', '2023-01-04 06:10:56', NULL);
INSERT INTO `ums_menu` VALUES ('1610557779277832192', '0', '微信管理', 0, 0, 'route-weixin-manage', '', 0, '2023-01-04 08:44:32', '1605871474248617984', '2023-01-04 08:44:32', NULL);
INSERT INTO `ums_menu` VALUES ('1610557826207899648', '1610557779277832192', '公众号账号', 1, 0, 'route-weixin-account', '', 0, '2023-01-04 08:44:43', '1605871474248617984', '2023-01-04 08:44:43', NULL);
INSERT INTO `ums_menu` VALUES ('1610557885972537344', '1610557779277832192', '粉丝管理', 1, 0, 'route-weixin-user', '', 0, '2023-01-04 08:44:57', '1605871474248617984', '2023-01-04 08:44:57', NULL);
INSERT INTO `ums_menu` VALUES ('1610557941492539392', '1610557779277832192', '渠道二维码', 1, 0, 'route-weixin-qrcode', '', 0, '2023-01-04 08:45:11', '1605871474248617984', '2023-01-04 08:45:11', NULL);
INSERT INTO `ums_menu` VALUES ('1610557995938799616', '1610557779277832192', '二维码事件', 1, 0, 'route-weixin-event-msg', '', 0, '2023-01-04 08:45:24', '1605871474248617984', '2023-01-04 08:45:24', NULL);
INSERT INTO `ums_menu` VALUES ('1610565597410156544', '1600038763717074946', '资源类型', 1, 0, 'route-permission-manage-resource-type', '', 0, '2023-01-04 09:15:36', '1605871474248617984', '2023-01-04 09:15:36', NULL);
INSERT INTO `ums_menu` VALUES ('1645986665861427200', '0', '消息中心', 0, 0, 'route-message-center', '', 0, '2023-04-12 11:06:17', '1605871474248617984', '2023-04-12 11:06:17', NULL);
INSERT INTO `ums_menu` VALUES ('1645986775336955904', '1645986665861427200', '邮箱', 1, 0, 'route-message-center-mailbox', '', 0, '2023-04-12 11:06:43', '1605871474248617984', '2023-04-12 11:06:43', NULL);
INSERT INTO `ums_menu` VALUES ('1645986847122468864', '1645986665861427200', '短信', 1, 0, 'route-message-center-short-message', '', 0, '2023-04-12 11:07:00', '1605871474248617984', '2023-04-12 11:07:00', NULL);
INSERT INTO `ums_menu` VALUES ('1645989075820425216', '1600033389203066881', 'banner管理', 1, 0, 'route-goods-banner', '', 0, '2023-04-12 11:15:51', '1605871474248617984', '2023-04-12 11:15:51', NULL);
INSERT INTO `ums_menu` VALUES ('1645990008201621504', '1600037532391055362', '订单配置', 1, 0, 'route-order-setting', '', 0, '2023-04-12 11:19:34', '1605871474248617984', '2023-04-12 11:19:34', NULL);
INSERT INTO `ums_menu` VALUES ('1645991412970500096', '0', '审计管理', 0, 0, 'route-audit-management', '', 0, '2023-04-12 11:25:09', '1605871474248617984', '2023-04-12 11:25:09', NULL);
INSERT INTO `ums_menu` VALUES ('1645991514195832832', '1645991412970500096', '操作记录', 1, 0, 'route-operation-records', '', 0, '2023-04-12 11:25:33', '1605871474248617984', '2023-04-12 11:25:33', NULL);
INSERT INTO `ums_menu` VALUES ('1645991887723769856', '1600037532391055362', '催发货', 1, 0, 'route-expedite-shipment', '', 0, '2023-04-12 11:27:02', '1605871474248617984', '2023-04-12 11:27:02', NULL);
INSERT INTO `ums_menu` VALUES ('1646125339089514496', '1600037532391055362', '异常订单记录', 1, 0, 'route-abnormal-order-records', '', 0, '2023-04-12 20:17:19', '1605871474248617984', '2023-04-12 20:17:19', NULL);
INSERT INTO `ums_menu` VALUES ('1646487953938264064', '1600037532391055362', '购物车管理', 1, 0, 'route-shopping-cart-management', '', 0, '2023-04-13 20:18:13', '1605871474248617984', '2023-04-13 20:18:13', NULL);
INSERT INTO `ums_menu` VALUES ('1648504463264698368', '1600037532391055362', '配置项', 1, 0, 'route-order-setting-items', '', 0, '2023-04-19 09:51:06', '1605871474248617984', '2023-04-19 09:51:06', NULL);
INSERT INTO `ums_menu` VALUES ('1650021757928456192', '0', '官网管理', 0, 0, 'route-official-website', '', 0, '2023-04-23 14:20:18', '1605871474248617984', '2023-04-23 14:20:18', NULL);
INSERT INTO `ums_menu` VALUES ('1650022809809567744', '1650021757928456192', '新闻管理', 1, 0, 'official-website-news', '', 0, '2023-04-23 14:24:28', '1605871474248617984', '2023-04-23 14:24:28', NULL);
INSERT INTO `ums_menu` VALUES ('1650022863354052608', '1650021757928456192', '售后服务', 1, 0, 'official-website-service', '', 0, '2023-04-23 14:24:41', '1605871474248617984', '2023-04-23 14:24:41', '1605871474248617984');
INSERT INTO `ums_menu` VALUES ('1650023023077343232', '1650021757928456192', '帮助中心分类', 1, 0, 'official-website-helper-type', '', 0, '2023-04-23 14:25:19', '1605871474248617984', '2023-04-23 14:25:19', NULL);
INSERT INTO `ums_menu` VALUES ('1650023083714396160', '1650021757928456192', '帮助中心', 1, 0, 'official-website-helper', '', 0, '2023-04-23 14:25:34', '1605871474248617984', '2023-04-23 14:25:34', NULL);
INSERT INTO `ums_menu` VALUES ('1650023152329015296', '1650021757928456192', '通用配置', 1, 0, 'official-website-config', '', 0, '2023-04-23 14:25:50', '1605871474248617984', '2023-04-23 14:25:50', NULL);
INSERT INTO `ums_menu` VALUES ('1650023440079241216', '1650021757928456192', '下载信息', 1, 0, 'official-website-download', '', 0, '2023-04-23 14:26:59', '1605871474248617984', '2023-04-23 14:26:59', NULL);
INSERT INTO `ums_menu` VALUES ('1650026564932190208', '1650021757928456192', '官网配置项', 1, 0, 'official-website-config-item', '', 0, '2023-04-23 14:39:24', '1605871474248617984', '2023-04-23 14:39:24', NULL);
INSERT INTO `ums_menu` VALUES ('1650407069481549824', '1650021757928456192', '隐私政策管理', 1, 0, 'official-website-privacy', '', 0, '2023-04-24 15:51:23', '1605871474248617984', '2023-04-24 15:51:23', NULL);

-- ----------------------------
-- Table structure for ums_resource
-- ----------------------------
DROP TABLE IF EXISTS `ums_resource`;
CREATE TABLE `ums_resource`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键id，雪花算法生成',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '资源名称',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '资源URL',
  `method` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '资源请求方式',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '描述',
  `category_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '资源分类ID',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建者',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '更新者',
  `menu_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '后台资源表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ums_resource
-- ----------------------------
INSERT INTO `ums_resource` VALUES ('1605925946500943872', 'orderListDetail', '/imall-oms/order/*', 'get', '订单详情', '1610461319691026432', '2022-12-22 21:59:17', NULL, '2023-01-04 02:44:16', NULL, '1600037707968815105');
INSERT INTO `ums_resource` VALUES ('1606106636987240448', 'orderListModify', '/imall-oms/order/update/receiverInfo', 'post', '修改收货信息', '1610461319691026432', '2022-12-23 09:57:17', NULL, '2023-01-04 02:26:31', NULL, '1600037707968815105');
INSERT INTO `ums_resource` VALUES ('1606107521230409728', 'orderListSend', '/imall-oms/order/update/delivery', 'post', '订单发货', '1610461319691026432', '2022-12-23 10:00:48', NULL, '2023-01-04 02:26:39', NULL, '1600037707968815105');
INSERT INTO `ums_resource` VALUES ('1606108205543690240', 'orderListFinish', '/imall-oms/order/complete', 'post', '订单完成', '1610461319691026432', '2022-12-23 10:03:31', NULL, '2023-01-04 02:26:43', NULL, '1600037707968815105');
INSERT INTO `ums_resource` VALUES ('1606108754573889536', 'orderListUpdate', '/imall-oms/orderUpdateStatus/create', 'post', '更新订单状态', '1610461319691026432', '2022-12-23 10:05:42', NULL, '2023-04-21 09:37:47', '1605871474248617984', '1600037707968815105');
INSERT INTO `ums_resource` VALUES ('1606109206627586048', 'orderListMark', '/imall-oms/order/update/note', 'post', '订单备注', '1610461319691026432', '2022-12-23 10:07:30', NULL, '2023-01-04 02:26:50', NULL, '1600037707968815105');
INSERT INTO `ums_resource` VALUES ('1606116662942470144', 'orderListDelete', '/imall-oms/order/delete', 'post', '删除订单', '1610461319691026432', '2022-12-23 10:37:07', NULL, '2023-01-04 02:26:54', NULL, '1600038879748300801');
INSERT INTO `ums_resource` VALUES ('1610463178816274432', 'orderList', '/imall-oms/order/page', 'post', '订单列表', '1610461319691026432', '2023-01-04 02:28:37', NULL, '2023-04-24 13:40:55', '1605871474248617984', '1600037707968815105');
INSERT INTO `ums_resource` VALUES ('1610485271977050112', 'returnApplyList', '/imall-oms/returnApply/list', 'get', '退款申请列表', '1610484700511518720', '2023-01-04 03:56:25', NULL, '2023-01-04 03:56:25', NULL, '1605912051191222272');
INSERT INTO `ums_resource` VALUES ('1610485734762405888', 'returnApplyDetail', '/imall-oms/returnApply', 'get', '退款申请详情', '1610484700511518720', '2023-01-04 03:58:15', NULL, '2023-01-04 03:58:15', NULL, '1605912051191222272');
INSERT INTO `ums_resource` VALUES ('1610486994295119872', 'returnApplyRefundReview', '/imall-oms/returnApply/handleReturnApply', 'post', '退款审核', '1610484700511518720', '2023-01-04 04:03:15', NULL, '2023-01-04 04:03:15', NULL, '1605912051191222272');
INSERT INTO `ums_resource` VALUES ('1610512746264715264', 'returnApplyRefundReviewDetail', '/imall-oms/returnApply/returnApply/*', 'get', '审核详情', '1610484700511518720', '2023-01-04 05:45:35', NULL, '2023-01-04 05:45:35', NULL, '1605912051191222272');
INSERT INTO `ums_resource` VALUES ('1610514248844763136', 'returnApplyRefund', '/imall-pay/wx/refund', 'post', '退款', '1610484700511518720', '2023-01-04 05:51:33', NULL, '2023-01-04 05:51:33', NULL, '1605912051191222272');
INSERT INTO `ums_resource` VALUES ('1610516553509953536', 'wxpayFlowList', '/imall-pay/admin/wxPayTradeLog', 'post', '交易流水列表', '1610515919280857088', '2023-01-04 06:00:43', NULL, '2023-04-18 18:35:29', '1605871474248617984', '1605874508433297408');
INSERT INTO `ums_resource` VALUES ('1610518289620459520', 'customerList', '/imall-user-center-app/admin/userinfo/page', 'post', '顾客信息列表', '1610517254864691200', '2023-01-04 06:07:37', NULL, '2023-04-18 16:19:56', '1605871474248617984', '1610517887554478080');
INSERT INTO `ums_resource` VALUES ('1610521133937385472', 'agreementsList', '/imall-config/policy/page', 'post', '隐私与用户协议列表', '1610519369263669248', '2023-01-04 06:18:55', NULL, '2023-01-04 06:18:55', NULL, '1610518909769277440');
INSERT INTO `ums_resource` VALUES ('1610521723186765824', 'agreementsListAdd', '/imall-config/policy/batch', 'post', '隐私与用户协议新增', '1610519369263669248', '2023-01-04 06:21:16', NULL, '2023-01-04 06:21:16', NULL, '1610518909769277440');
INSERT INTO `ums_resource` VALUES ('1610522234485006336', 'agreementsListUpdate', '/imall-config/policy/update', 'post', '隐私与用户协议编辑', '1610519369263669248', '2023-01-04 06:23:17', NULL, '2023-01-04 06:23:17', NULL, '1610518909769277440');
INSERT INTO `ums_resource` VALUES ('1610522588429737984', 'agreementsListDelete', '/imall-config/policy/delete', 'delete', '隐私与用户协议删除', '1610519369263669248', '2023-01-04 06:24:42', NULL, '2023-01-04 06:24:42', NULL, '1610518909769277440');
INSERT INTO `ums_resource` VALUES ('1610533430416171008', 'faqTypeList', '/imall-config/faqType/page', 'post', '常见问题类型列表', '1610532876344418304', '2023-01-04 07:07:47', NULL, '2023-01-04 07:07:47', NULL, '1610518967742947328');
INSERT INTO `ums_resource` VALUES ('1610534163546955776', 'faqTypeSave', '/imall-config/faqType/createOrUpdate', 'post', '常见问题类型新增/编辑', '1610532876344418304', '2023-01-04 07:10:42', NULL, '2023-01-04 07:10:42', NULL, '1610518967742947328');
INSERT INTO `ums_resource` VALUES ('1610534959617466368', 'faqTypeDelete', '/imall-config/faqType/batch', 'delete', '常见问题类型删除', '1610532876344418304', '2023-01-04 07:13:51', NULL, '2023-01-04 07:13:51', NULL, '1610518967742947328');
INSERT INTO `ums_resource` VALUES ('1610536109397827584', 'faqList', '/imall-config/faq/page', 'post', '常见问题列表', '1610535865389998080', '2023-01-04 07:18:25', NULL, '2023-04-21 09:37:55', '1605871474248617984', '1610519016430428160');
INSERT INTO `ums_resource` VALUES ('1610536700165545984', 'faqListAdd', '/imall-config/faq/batch', 'post', '常见问题新增', '1610535865389998080', '2023-01-04 07:20:46', NULL, '2023-01-04 07:20:46', NULL, '1610519016430428160');
INSERT INTO `ums_resource` VALUES ('1610536862321532928', 'faqListUpdate', '/imall-config/faq/update', 'post', '常见问题编辑', '1610535865389998080', '2023-01-04 07:21:25', NULL, '2023-01-04 07:21:25', NULL, '1610519016430428160');
INSERT INTO `ums_resource` VALUES ('1610537020241272832', 'faqListDelete', '/imall-config/faq/batch', 'delete', '常见问题删除', '1610535865389998080', '2023-01-04 07:22:03', NULL, '2023-01-04 07:22:03', NULL, '1610519016430428160');
INSERT INTO `ums_resource` VALUES ('1610539135021932544', 'configLangList', '/imall-config/langConfig/page', 'get', '语言配置列表', '1610538888510103552', '2023-01-04 07:30:27', NULL, '2023-01-04 07:30:27', NULL, '1610519069349961728');
INSERT INTO `ums_resource` VALUES ('1610539335249616896', 'langConfigSave', '/imall-config/langConfig/createOrUpdate', 'post', '语言配置新增/编辑', '1610538888510103552', '2023-01-04 07:31:15', NULL, '2023-01-04 07:31:15', NULL, '1610519069349961728');
INSERT INTO `ums_resource` VALUES ('1610539510143705088', 'langConfigDelete', '/imall-config/langConfig/delete', 'delete', '语言配置删除', '1610538888510103552', '2023-01-04 07:31:56', NULL, '2023-01-04 07:31:56', NULL, '1610519069349961728');
INSERT INTO `ums_resource` VALUES ('1610541040263553024', 'configAppList', '/imall-config/application/page', 'post', '应用配置列表', '1610540399449399296', '2023-01-04 07:38:01', NULL, '2023-01-04 07:38:01', NULL, '1610519123297099776');
INSERT INTO `ums_resource` VALUES ('1610541234589851648', 'configAppSave', '/imall-config/application/createOrUpdate', 'post', '应用配置新增/编辑', '1610540399449399296', '2023-01-04 07:38:47', NULL, '2023-01-04 07:38:47', NULL, '1610519123297099776');
INSERT INTO `ums_resource` VALUES ('1610541400088698880', 'configAppDelete', '/imall-config/application/delete', 'delete', '应用配置删除', '1610540399449399296', '2023-01-04 07:39:27', NULL, '2023-01-04 07:39:27', NULL, '1610519123297099776');
INSERT INTO `ums_resource` VALUES ('1610542918107979776', 'goodsList', '/imall-pms/product/list', 'post', '商品列表', '1610542209274798080', '2023-01-04 07:45:29', NULL, '2023-04-17 21:17:04', '1605871474248617984', '1600036058932076545');
INSERT INTO `ums_resource` VALUES ('1610543125151408128', 'goodsListAdd', '/imall-pms/product/create', 'post', '商品列表新增', '1610542209274798080', '2023-01-04 07:46:18', NULL, '2023-01-04 07:47:22', NULL, '1600036058932076545');
INSERT INTO `ums_resource` VALUES ('1610543364486782976', 'goodsListUpdate', '/imall-pms/product/update/*', 'post', '商品列表编辑', '1610542209274798080', '2023-01-04 07:47:15', NULL, '2023-01-04 07:47:15', NULL, '1600036058932076545');
INSERT INTO `ums_resource` VALUES ('1610543854452793344', 'goodsListPublishOrUnpublish', '/imall-pms/product/update/publishStatus', 'put', '商品列表上/下架', '1610542209274798080', '2023-01-04 07:49:12', NULL, '2023-04-19 11:28:46', '1605871474248617984', '1600036058932076545');
INSERT INTO `ums_resource` VALUES ('1610544140005203968', 'goodsListNew', '/imall-pms/product/update/newStatus', 'post', '商品列表新品', '1610542209274798080', '2023-01-04 07:50:20', NULL, '2023-01-04 07:50:20', NULL, '1600036058932076545');
INSERT INTO `ums_resource` VALUES ('1610544334943870976', 'goodsListRecommend', '/imall-pms/product/update/recommendStatus', 'post', '商品列表推荐', '1610542209274798080', '2023-01-04 07:51:07', NULL, '2023-01-04 07:51:07', NULL, '1600036058932076545');
INSERT INTO `ums_resource` VALUES ('1610544609091969024', 'goodsListDelete', '/imall-pms/product/update/deleteStatus', 'post', '商品列表删除', '1610542209274798080', '2023-01-04 07:52:12', NULL, '2023-01-04 07:52:12', NULL, '1600036058932076545');
INSERT INTO `ums_resource` VALUES ('1610554843852234752', 'goodsBrandList', '/imall-pms/brand/list', 'get', '品牌管理列表', '1610554455702953984', '2023-01-04 08:32:52', NULL, '2023-01-04 08:32:52', NULL, '1600036645731983361');
INSERT INTO `ums_resource` VALUES ('1610556201875595264', 'goodsAttrAdd', '/imall-pms/productAttribute/category/create', 'post', '商品类型新增', '1610555521072947200', '2023-01-04 08:38:16', NULL, '2023-01-04 08:38:16', NULL, '1600036589649944578');
INSERT INTO `ums_resource` VALUES ('1610558331151769600', 'weixinAccountList', '/imall-wx-cms/manage/wxAccount/list', 'get', '公众号账号列表', '1610557228628631552', '2023-01-04 08:46:44', NULL, '2023-01-04 08:46:44', NULL, '1610557826207899648');
INSERT INTO `ums_resource` VALUES ('1610558618256072704', 'weixinAccountSave', '/imall-wx-cms/manage/wxAccount/save', 'post', '公众号账号新增/编辑', '1610557228628631552', '2023-01-04 08:47:52', NULL, '2023-01-04 08:47:52', NULL, '1610557826207899648');
INSERT INTO `ums_resource` VALUES ('1610558837190352896', 'weixinAccountDelete', '/imall-wx-cms/manage/wxAccount/delete', 'post', '公众号账号删除', '1610557228628631552', '2023-01-04 08:48:44', NULL, '2023-01-04 08:48:44', NULL, '1610557826207899648');
INSERT INTO `ums_resource` VALUES ('1610560570624892928', 'weixinUserList', '/imall-wx-cms/manage/wxUser/list', 'get', '粉丝管理列表', '1610559472723877888', '2023-01-04 08:55:37', NULL, '2023-01-04 08:55:37', NULL, '1610557885972537344');
INSERT INTO `ums_resource` VALUES ('1610560860396773376', 'weixinUserDelete', '/imall-wx-cms/manage/wxUser/delete', 'post', '粉丝管理删除', '1610559472723877888', '2023-01-04 08:56:47', NULL, '2023-01-04 08:56:47', NULL, '1610557885972537344');
INSERT INTO `ums_resource` VALUES ('1610561101850271744', 'weixinUserSync', '/imall-wx-cms/manage/wxUser/syncWxUsers', 'post', '同步粉丝', '1610559472723877888', '2023-01-04 08:57:44', NULL, '2023-01-04 08:57:44', NULL, '1610557885972537344');
INSERT INTO `ums_resource` VALUES ('1610561891679657984', 'weixinQrcodeList', '/imall-wx-cms/manage/wxQrCode/list', 'get', '渠道二维码列表', '1610561596077694976', '2023-01-04 09:00:52', NULL, '2023-01-04 09:00:52', NULL, '1610557941492539392');
INSERT INTO `ums_resource` VALUES ('1610562568216698880', 'weixinQrcodeAdd', '/imall-wx-cms/manage/wxQrCode/createTicket', 'post', '渠道二维码新增', '1610561596077694976', '2023-01-04 09:03:34', NULL, '2023-01-04 09:03:34', NULL, '1610557941492539392');
INSERT INTO `ums_resource` VALUES ('1610562764422045696', 'weixinQrcodeDelete', '/imall-wx-cms/manage/wxQrCode/delete', 'post', '渠道二维码删除', '1610561596077694976', '2023-01-04 09:04:20', NULL, '2023-01-04 09:04:20', NULL, '1610557941492539392');
INSERT INTO `ums_resource` VALUES ('1610563926906953728', 'weixinQrcodeEventMsgList', '/imall-wx-cms/manage/wxEventMsg/list', 'post', '二维码事件列表', '1610563431589011456', '2023-01-04 09:08:58', NULL, '2023-01-04 09:08:58', NULL, '1610557995938799616');
INSERT INTO `ums_resource` VALUES ('1610566227965042688', 'permissionUserList', '/imall-ums/admin/user/list', 'post', '用户列表', '1610565961383469056', '2023-01-04 09:18:06', NULL, '2023-04-17 16:40:36', '1605871474248617984', '1600038879748300801');
INSERT INTO `ums_resource` VALUES ('1610566442126204928', 'permissionUserAdd', '/imall-ums/admin/user/register', 'post', '用户列表新增', '1610565961383469056', '2023-01-04 09:18:57', NULL, '2023-01-04 09:18:57', NULL, '1600038879748300801');
INSERT INTO `ums_resource` VALUES ('1610566632602132480', 'permissionUserUpdate', '/imall-ums/admin/user/update', 'post', '用户列表编辑', '1610565961383469056', '2023-01-04 09:19:43', NULL, '2023-01-04 09:19:43', NULL, '1600038879748300801');
INSERT INTO `ums_resource` VALUES ('1610566818825035776', 'permissionUserDelete', '/imall-ums/admin/user/delete', 'delete', '用户列表删除', '1610565961383469056', '2023-01-04 09:20:27', NULL, '2023-01-04 09:20:27', NULL, '1600038879748300801');
INSERT INTO `ums_resource` VALUES ('1610567217992753152', 'permissionUserStatus', '/imall-ums/admin/user/updateStatus', 'post', '用户列表是否启用', '1610565961383469056', '2023-01-04 09:22:02', NULL, '2023-01-04 09:22:02', NULL, '1600038879748300801');
INSERT INTO `ums_resource` VALUES ('1610567399677419520', 'permissionUserRole', '/imall-ums/admin/user/role/update', 'post', '用户列表分配角色', '1610565961383469056', '2023-01-04 09:22:46', NULL, '2023-01-04 09:22:46', NULL, '1600038879748300801');
INSERT INTO `ums_resource` VALUES ('1610567764728668160', 'permissionUserRoleInfo', '/imall-ums/admin/user/role', 'get', '用户角色信息', '1610565961383469056', '2023-01-04 09:24:13', NULL, '2023-01-04 09:24:13', NULL, '1600038879748300801');
INSERT INTO `ums_resource` VALUES ('1610568011370520576', 'permissionUserPassword', '/imall-ums/admin/user/updatePassword', 'post', '用户修改密码', '1610565961383469056', '2023-01-04 09:25:11', NULL, '2023-01-04 09:25:11', NULL, '1600038879748300801');
INSERT INTO `ums_resource` VALUES ('1610572021037064192', 'permissionRoleList', '/imall-ums/role/page', 'get', '角色列表', '1610570533858500608', '2023-01-04 09:41:07', NULL, '2023-01-04 09:41:07', NULL, '1600038947121405953');
INSERT INTO `ums_resource` VALUES ('1610572202180665344', 'permissionRoleListAll', '/imall-ums/role/listAll', 'get', '所有角色列表', '1610570533858500608', '2023-01-04 09:41:51', NULL, '2023-01-04 09:41:51', NULL, '1600038947121405953');
INSERT INTO `ums_resource` VALUES ('1610572484910309376', 'permissionRoleAdd', '/imall-ums/role/create', 'post', '角色列表新增', '1610570533858500608', '2023-01-04 09:42:58', NULL, '2023-01-04 09:42:58', NULL, '1600038947121405953');
INSERT INTO `ums_resource` VALUES ('1610572667136040960', 'permissionRoleUpdate', '/imall-ums/role/update', 'post', '角色列表编辑', '1610570533858500608', '2023-01-04 09:43:41', NULL, '2023-01-04 09:43:41', NULL, '1600038947121405953');
INSERT INTO `ums_resource` VALUES ('1610572844878061568', 'permissionRoleDelete', '/imall-ums/role/delete', 'delete', '角色列表删除', '1610570533858500608', '2023-01-04 09:44:24', NULL, '2023-01-04 09:44:24', NULL, '1600038947121405953');
INSERT INTO `ums_resource` VALUES ('1610573122037669888', 'permissionRoleStatus', '/imall-ums/role/updateStatus', 'put', '角色列表是否启用', '1610570533858500608', '2023-01-04 09:45:30', NULL, '2023-01-04 09:45:30', NULL, '1600038947121405953');
INSERT INTO `ums_resource` VALUES ('1610574377216696320', 'permissionMenuListAll', '/imall-ums/menu/treeList', 'get', '所有菜单列表', '1610574027260747776', '2023-01-04 09:50:29', NULL, '2023-01-04 09:50:29', NULL, '1600039031875706881');
INSERT INTO `ums_resource` VALUES ('1610574835456991232', 'permissionResourceListAll', '/imall-ums/resource/listAll', 'get', '所有资源列表', '1610574437174272000', '2023-01-04 09:52:18', NULL, '2023-01-04 09:53:52', NULL, '1600040523340955649');
INSERT INTO `ums_resource` VALUES ('1610575246834327552', 'permissionResourceCateListAll', '/imall-ums/resource/category/listAll', 'get', '所有资源类型列表', '1610574874552098816', '2023-01-04 09:53:57', NULL, '2023-01-04 09:53:57', NULL, '1610565597410156544');
INSERT INTO `ums_resource` VALUES ('1610575823601459200', 'permissionRoleMenu', '/imall-ums/role/listMenu', 'get', '获取角色相关菜单', '1610570533858500608', '2023-01-04 09:56:14', NULL, '2023-01-04 09:56:14', NULL, '1600038947121405953');
INSERT INTO `ums_resource` VALUES ('1610576093253263360', 'permissionRoleAssignMenu', '/imall-ums/role/allocMenu', 'post', '分配菜单', '1610570533858500608', '2023-01-04 09:57:18', NULL, '2023-01-04 10:00:09', NULL, '1600038947121405953');
INSERT INTO `ums_resource` VALUES ('1610576374259048448', 'permissionRoleResource', '/imall-ums/role/listResource', 'get', '获取角色相关资源', '1610570533858500608', '2023-01-04 09:58:25', NULL, '2023-01-04 09:58:25', NULL, '1600038947121405953');
INSERT INTO `ums_resource` VALUES ('1610576652429484032', 'permissionRoleAssignResource', '/imall-ums/role/allocResource', 'post', '分配资源', '1610570533858500608', '2023-01-04 09:59:32', NULL, '2023-01-04 10:01:12', NULL, '1600038947121405953');
INSERT INTO `ums_resource` VALUES ('1610579530808352768', 'permissionMenuList', '/imall-ums/menu/page', 'get', '菜单列表', '1610574027260747776', '2023-01-04 10:10:58', NULL, '2023-01-04 10:10:58', NULL, '1600039031875706881');
INSERT INTO `ums_resource` VALUES ('1610579733913329664', 'permissionMenuAdd', '/imall-ums/menu/create', 'post', '菜单列表新增', '1610574027260747776', '2023-01-04 10:11:46', NULL, '2023-01-04 10:11:46', NULL, '1600039031875706881');
INSERT INTO `ums_resource` VALUES ('1610579944496750592', 'permissionMenuEdit', '/imall-ums/menu/updat', 'put', '菜单列表编辑', '1610574027260747776', '2023-01-04 10:12:37', NULL, '2023-01-04 10:12:37', NULL, '1600039031875706881');
INSERT INTO `ums_resource` VALUES ('1610580188399722496', 'permissionMenuDelete', '/imall-ums/menu/delete', 'delete', '菜单列表删除', '1610574027260747776', '2023-01-04 10:13:35', NULL, '2023-01-04 10:13:35', NULL, '1600039031875706881');
INSERT INTO `ums_resource` VALUES ('1610580535629373440', 'permissionMenuShow', '/imall-ums/menu/updateHidden', 'put', '菜单列表是否显示', '1610574027260747776', '2023-01-04 10:14:57', NULL, '2023-01-04 10:14:57', NULL, '1600039031875706881');
INSERT INTO `ums_resource` VALUES ('1610582063836618752', 'permissionResourceCateAdd', '/imall-ums/resource/category/create', 'get', '资源类型新增', '1610574874552098816', '2023-01-04 10:21:02', NULL, '2023-01-04 10:24:25', NULL, '1610565597410156544');
INSERT INTO `ums_resource` VALUES ('1610582261438668800', 'permissionResourceCateEdit', '/imall-ums/resource/category/update', 'put', '资源类型编辑', '1610574874552098816', '2023-01-04 10:21:49', NULL, '2023-01-04 10:21:49', NULL, '1610565597410156544');
INSERT INTO `ums_resource` VALUES ('1610582637395107840', 'permissionResourceCateDelete', '/imall-ums/resource/category/delete', 'delete', '资源类型删除', '1610574874552098816', '2023-01-04 10:23:19', NULL, '2023-01-04 10:23:19', NULL, '1610565597410156544');
INSERT INTO `ums_resource` VALUES ('1610583487144321024', 'permissionResourceList', '/imall-ums/resource/page', 'get', '资源列表', '1610574437174272000', '2023-01-04 10:26:41', NULL, '2023-01-04 10:26:41', NULL, '1600040523340955649');
INSERT INTO `ums_resource` VALUES ('1610583632770555904', 'permissionResourceAdd', '/imall-ums/resource/create', 'post', '资源列表新增', '1610574437174272000', '2023-01-04 10:27:16', NULL, '2023-01-04 10:27:16', NULL, '1600040523340955649');
INSERT INTO `ums_resource` VALUES ('1610583809774379008', 'permissionResourceEdit', '/imall-ums/resource/update', 'put', '资源列表编辑', '1610574437174272000', '2023-01-04 10:27:58', NULL, '2023-01-04 10:27:58', NULL, '1600040523340955649');
INSERT INTO `ums_resource` VALUES ('1610583952057753600', 'permissionResourceDelete', '/imall-ums/resource/delete', 'delete', '资源列表删除', '1610574437174272000', '2023-01-04 10:28:32', NULL, '2023-01-04 10:28:32', NULL, '1600040523340955649');
INSERT INTO `ums_resource` VALUES ('1610921930760183808', 'goodsCateListAll', '/imall-pms/productCategory/list/withChildren', 'get', '所有商品分类', '1610551772732514304', '2023-01-05 08:51:32', NULL, '2023-01-05 08:51:32', NULL, '1600036589649944578');
INSERT INTO `ums_resource` VALUES ('1610923727029592064', 'goodsBrandFactory', '/imall-pms/brand/update/factoryStatus', 'post', '品牌管理品牌制造商', '1610554455702953984', '2023-01-05 08:58:41', NULL, '2023-01-05 08:58:41', NULL, '1600036645731983361');
INSERT INTO `ums_resource` VALUES ('1644660605507817472', 'logisticsQuery', '/imall-tms/trackQuery/realTimeTrackQueryBySf', 'post', '物流查询', '1610461319691026432', '2023-04-08 19:16:59', '1605871474248617984', '2023-04-08 19:16:59', NULL, '1600037707968815105');
INSERT INTO `ums_resource` VALUES ('1645977824419590144', 'orderListStatusList', '/imall-oms/commonConfig/getAllConfigItem', 'get', '订单状态列表	', '1610461319691026432', '2023-04-12 10:31:09', '1605871474248617984', '2023-04-12 10:31:09', NULL, '1600037707968815105');
INSERT INTO `ums_resource` VALUES ('1645978027805585408', 'orderListLogisticsList', '/imall-tms/admin/trackInfo/list', 'get', '物流列表	', '1610461319691026432', '2023-04-12 10:31:57', '1605871474248617984', '2023-04-12 10:31:57', NULL, '1600037707968815105');
INSERT INTO `ums_resource` VALUES ('1645978149683671040', 'orderListDeleteDelivery', '/imall-tms/admin/trackInfo/delete', 'delete', '删除快递单号', '1610461319691026432', '2023-04-12 10:32:26', '1605871474248617984', '2023-04-12 10:32:26', NULL, '1600037707968815105');
INSERT INTO `ums_resource` VALUES ('1645978265308049408', 'orderListQueryFlow', '/imall-pay/admin/wxTradeLog/*', 'get', '查询流水', '1610461319691026432', '2023-04-12 10:32:54', '1605871474248617984', '2023-04-17 21:15:12', '1605871474248617984', '1600037707968815105');
INSERT INTO `ums_resource` VALUES ('1645978577888555008', 'returnFundList', '/imall-pay/admin/queryWxPayTradeLog', 'post', '退款列表', '1610484700511518720', '2023-04-12 10:34:08', '1605871474248617984', '2023-04-12 10:34:08', NULL, '1605912051191222272');
INSERT INTO `ums_resource` VALUES ('1645979607921537024', 'customerListQueryUserAddress', '/imall-user-center-app/admin/userinfo/list', 'get', '查询收货地址', '1610517254864691200', '2023-04-12 10:38:14', '1605871474248617984', '2023-04-12 10:38:14', NULL, '1610517887554478080');
INSERT INTO `ums_resource` VALUES ('1645980176887263232', 'productList', '/imall-pms/product/list', 'get', '产品列表', '1610542209274798080', '2023-04-12 10:40:30', '1605871474248617984', '2023-04-17 21:17:12', '1605871474248617984', '1600036058932076545');
INSERT INTO `ums_resource` VALUES ('1645980285175803904', 'goodsListDetailList', '/imall-pms/product/getDetails/*', 'get', '商品详情列表', '1610542209274798080', '2023-04-12 10:40:55', '1605871474248617984', '2023-04-14 18:44:12', '1605871474248617984', '1600036058932076545');
INSERT INTO `ums_resource` VALUES ('1645980389114851328', 'goodsAllProductList', '/imall-pms/product/getAllSimpleList', 'get', '商品所有属性列表', '1610542209274798080', '2023-04-12 10:41:20', '1605871474248617984', '2023-04-12 10:41:20', NULL, '1600036058932076545');
INSERT INTO `ums_resource` VALUES ('1645980490818334720', 'goodsListDeleteBatch', '/imall-pms/product/update/deleteStatus', 'put', '商品列表批量删除', '1610542209274798080', '2023-04-12 10:41:45', '1605871474248617984', '2023-04-12 10:41:45', NULL, '1600036058932076545');
INSERT INTO `ums_resource` VALUES ('1645980851658502144', 'goodsCateAllProductList', '/imall-pms/productAttribute/category/list/withAttr', 'get', '商品分类所有属性', '1610551772732514304', '2023-04-12 10:43:11', '1605871474248617984', '2023-04-12 10:43:11', NULL, '1600036589649944578');
INSERT INTO `ums_resource` VALUES ('1645980950119788544', 'goodsCateAdd', '/imall-pms/productCategory/create', 'post', '商品分类新增', '1610551772732514304', '2023-04-12 10:43:34', '1605871474248617984', '2023-04-12 10:43:34', NULL, '1600036589649944578');
INSERT INTO `ums_resource` VALUES ('1645984721923158016', 'goodCateList', '/imall-pms/productCategory/list', 'get', '商品分类列表', '1610551772732514304', '2023-04-12 10:58:33', '1605871474248617984', '2023-04-18 13:45:15', '1605871474248617984', '1600036589649944578');
INSERT INTO `ums_resource` VALUES ('1645984835530076160', 'goodsCateStatusShow', '/imall-pms/productCategory/update/showStatus', 'post', '商品分类状态', '1610551772732514304', '2023-04-12 10:59:00', '1605871474248617984', '2023-04-12 10:59:00', NULL, '1600036589649944578');
INSERT INTO `ums_resource` VALUES ('1645984936302424064', 'goodsCateNavigateShow', '/imall-pms/productCategory/update/navStatus', 'post', '商品分类导航栏状态', '1610551772732514304', '2023-04-12 10:59:24', '1605871474248617984', '2023-04-12 10:59:24', NULL, '1600036589649944578');
INSERT INTO `ums_resource` VALUES ('1645985107006402560', 'goodsCateDelete', '/imall-pms/productCategory/delete', 'delete', '商品分类删除', '1610551772732514304', '2023-04-12 11:00:05', '1605871474248617984', '2023-04-12 11:00:05', NULL, '1600036589649944578');
INSERT INTO `ums_resource` VALUES ('1645985212694474752', 'goodsCateUpdate', '/imall-pms/productCategory/update', 'post', '商品分类编辑', '1610551772732514304', '2023-04-12 11:00:30', '1605871474248617984', '2023-04-12 11:00:30', NULL, '1600036589649944578');
INSERT INTO `ums_resource` VALUES ('1645985375555104768', 'goodsBrandDeleteBatch', '/imall-pms/brand/delete/batch', 'delete', '批量删除品牌', '1610554455702953984', '2023-04-12 11:01:09', '1605871474248617984', '2023-04-12 11:01:09', NULL, '1600036645731983361');
INSERT INTO `ums_resource` VALUES ('1645985489006833664', 'goodsBrandUpdate', '/imall-pms/brand/update', 'post', '品牌管理编辑', '1610554455702953984', '2023-04-12 11:01:36', '1605871474248617984', '2023-04-12 11:01:36', NULL, '1600036645731983361');
INSERT INTO `ums_resource` VALUES ('1645985578760744960', 'goodsBrandStatusShow', '/imall-pms/brand/update/showStatus', 'post', '品牌管理状态是否显示', '1610554455702953984', '2023-04-12 11:01:58', '1605871474248617984', '2023-04-12 11:01:58', NULL, '1600036645731983361');
INSERT INTO `ums_resource` VALUES ('1645985665578643456', 'goodsBrandDelete', '/imall-pms/brand/delete', 'delete', '品牌管理删除', '1610554455702953984', '2023-04-12 11:02:18', '1605871474248617984', '2023-04-12 11:02:18', NULL, '1600036645731983361');
INSERT INTO `ums_resource` VALUES ('1645985769228283904', 'goodsBrandAdd', '/imall-pms/brand/create', 'post', '品牌管理新增', '1610554455702953984', '2023-04-12 11:02:43', '1605871474248617984', '2023-04-19 14:31:28', '1605871474248617984', '1600036645731983361');
INSERT INTO `ums_resource` VALUES ('1645987177088364544', 'mailboxRecordList', '/imall-third-service/admin/records/page', 'post', '邮件记录列表', '1645986947106287616', '2023-04-12 11:08:19', '1605871474248617984', '2023-04-12 11:08:19', NULL, '1645986775336955904');
INSERT INTO `ums_resource` VALUES ('1645987307870957568', 'mailboxRecordDelete', '/imall-third-service/admin/records/del', 'delete', '邮件记录', '1645986947106287616', '2023-04-12 11:08:50', '1605871474248617984', '2023-04-12 11:08:50', NULL, '1645986775336955904');
INSERT INTO `ums_resource` VALUES ('1645987411461877760', 'mailboxTemplateDelete', '/imall-third-service/admin/email/tpl', 'delete', '邮件模板删除', '1645986947106287616', '2023-04-12 11:09:15', '1605871474248617984', '2023-04-12 11:09:15', NULL, '1645986775336955904');
INSERT INTO `ums_resource` VALUES ('1645987505703694336', 'mailboxTemplateList', '/imall-third-service/admin/email/tpl/page', 'post', '邮件模板列表', '1645986947106287616', '2023-04-12 11:09:37', '1605871474248617984', '2023-04-12 11:09:37', NULL, '1645986775336955904');
INSERT INTO `ums_resource` VALUES ('1645987601665175552', 'mailboxTemplateAddOrEdit', '/imall-third-service/admin/email/tpl', 'put', '邮件模板新增/编辑', '1645986947106287616', '2023-04-12 11:10:00', '1605871474248617984', '2023-04-12 11:10:00', NULL, '1645986775336955904');
INSERT INTO `ums_resource` VALUES ('1645987720657580032', 'mailboxCapacityAlertDelete', '/imall-third-service/admin/alarm', 'delete', '邮箱容量警报删除', '1645986947106287616', '2023-04-12 11:10:28', '1605871474248617984', '2023-04-12 11:10:28', NULL, '1645986775336955904');
INSERT INTO `ums_resource` VALUES ('1645987808486305792', 'mailboxCapacityAlertList', '/imall-third-service/admin/alarm/page', 'post', '邮箱容量警报列表', '1645986947106287616', '2023-04-12 11:10:49', '1605871474248617984', '2023-04-12 11:10:49', NULL, '1645986775336955904');
INSERT INTO `ums_resource` VALUES ('1645987908965052416', 'mailboxCapacityAlertAddOrEdit', '/imall-third-service/admin/alarm', 'put', '邮箱容量警报新增/编辑', '1645986947106287616', '2023-04-12 11:11:13', '1605871474248617984', '2023-04-12 11:11:13', NULL, '1645986775336955904');
INSERT INTO `ums_resource` VALUES ('1645988039617622016', 'shortMessageTemplatePlatformList', '/imall-third-service/admin/sms/tpl/platform', 'get', '短信模板平台列表', '1645986976298643456', '2023-04-12 11:11:44', '1605871474248617984', '2023-04-12 11:11:44', NULL, '1645986847122468864');
INSERT INTO `ums_resource` VALUES ('1645988123067494400', 'shortMessageRecordDelete', '/imall-third-service/admin/sms/records', 'delete', '短信记录删除', '1645986976298643456', '2023-04-12 11:12:04', '1605871474248617984', '2023-04-12 11:12:04', NULL, '1645986847122468864');
INSERT INTO `ums_resource` VALUES ('1645988205233909760', 'shortMessageRecordList', '/imall-third-service/admin/sms/records/page', 'post', '短信记录列表', '1645986976298643456', '2023-04-12 11:12:24', '1605871474248617984', '2023-04-12 11:12:24', NULL, '1645986847122468864');
INSERT INTO `ums_resource` VALUES ('1645988314327756800', 'shortMessageTemplateList', '/imall-third-service/admin/sms/tpl/page', 'post', '短信模板列表', '1645986976298643456', '2023-04-12 11:12:50', '1605871474248617984', '2023-04-12 11:12:50', NULL, '1645986847122468864');
INSERT INTO `ums_resource` VALUES ('1645988422893121536', 'shortMessageTemplateDelete', '/imall-third-service/admin/sms/tpl', 'delete', '短信模板删除', '1645986976298643456', '2023-04-12 11:13:16', '1605871474248617984', '2023-04-12 11:13:16', NULL, '1645986847122468864');
INSERT INTO `ums_resource` VALUES ('1645988534377721856', 'shortMessageTemplateAddOrEdit', '/imall-third-service/admin/sms/tpl', 'post', '短信模板新增/编辑', '1645986976298643456', '2023-04-12 11:13:42', '1605871474248617984', '2023-04-12 11:13:42', NULL, '1645986847122468864');
INSERT INTO `ums_resource` VALUES ('1645988617282334720', 'shortMessageSignatureDelete', '/imall-third-service/admin/sign', 'delete', '短信签名删除', '1645986976298643456', '2023-04-12 11:14:02', '1605871474248617984', '2023-04-12 11:14:02', NULL, '1645986847122468864');
INSERT INTO `ums_resource` VALUES ('1645988710131642368', 'shortMessageSignatureList', '/imall-third-service/admin/sign/page', 'post', '短信签名列表', '1645986976298643456', '2023-04-12 11:14:24', '1605871474248617984', '2023-04-12 11:14:24', NULL, '1645986847122468864');
INSERT INTO `ums_resource` VALUES ('1645988796395892736', 'shortMessageSignatureAddOrEdit', '/imall-third-service/admin/sign', 'post', '短信签名新增/编辑', '1645986976298643456', '2023-04-12 11:14:45', '1605871474248617984', '2023-04-12 11:14:45', NULL, '1645986847122468864');
INSERT INTO `ums_resource` VALUES ('1645989388040220672', 'goodsBannerChildrenList', '/imall-pms/pmsProductBanner/getSubListById/*', 'get', 'banner管理子列表', '1645989209199292416', '2023-04-12 11:17:06', '1605871474248617984', '2023-04-17 10:53:32', '1605871474248617984', '1645989075820425216');
INSERT INTO `ums_resource` VALUES ('1645989471628505088', 'goodsBannerDelete', '/imall-pms/pmsProductBanner/delete', 'delete', 'banner管理删除', '1645989209199292416', '2023-04-12 11:17:26', '1605871474248617984', '2023-04-12 11:17:26', NULL, '1645989075820425216');
INSERT INTO `ums_resource` VALUES ('1645989547146948608', 'goodsBannerList', '/imall-pms/pmsProductBanner/page', 'post', 'banner管理列表', '1645989209199292416', '2023-04-12 11:17:44', '1605871474248617984', '2023-04-12 11:17:44', NULL, '1645989075820425216');
INSERT INTO `ums_resource` VALUES ('1645989639568437248', 'goodsBannerEdit', '/imall-pms/pmsProductBanner/update', 'post', 'banner管理编辑', '1645989209199292416', '2023-04-12 11:18:06', '1605871474248617984', '2023-04-12 11:18:06', NULL, '1645989075820425216');
INSERT INTO `ums_resource` VALUES ('1645989774348201984', 'goodsBannerUpdate', '/imall-pms/pmsProductBanner/create', 'post', 'banner管理新增', '1645989209199292416', '2023-04-12 11:18:38', '1605871474248617984', '2023-04-12 11:18:38', NULL, '1645989075820425216');
INSERT INTO `ums_resource` VALUES ('1645990330219311104', 'orderSettingUpdate', '/imall-oms/commonConfig/add', 'post', '订单配置新增', '1645990066968014848', '2023-04-12 11:20:50', '1605871474248617984', '2023-04-12 11:20:50', NULL, '1645990008201621504');
INSERT INTO `ums_resource` VALUES ('1645990934425579520', 'orderSettingEdit', '/imall-oms/commonConfig/update', 'post', '订单配置编辑', '1645990066968014848', '2023-04-12 11:23:14', '1605871474248617984', '2023-04-12 11:23:14', NULL, '1645990008201621504');
INSERT INTO `ums_resource` VALUES ('1645991014142521344', 'orderSettingDelete', '/imall-oms/commonConfig/batchDelete', 'delete', '订单配置删除', '1645990066968014848', '2023-04-12 11:23:33', '1605871474248617984', '2023-04-17 13:59:09', '1605871474248617984', '1645990008201621504');
INSERT INTO `ums_resource` VALUES ('1645991107876827136', 'orderSettingList', '/imall-oms/commonConfig/list', 'get', '订单配置列表', '1645990066968014848', '2023-04-12 11:23:56', '1605871474248617984', '2023-04-12 11:23:56', NULL, '1645990008201621504');
INSERT INTO `ums_resource` VALUES ('1645991702671077376', 'operateRecordList', '/imall-ums/record/page', 'get', '操作记录列表', '1645991552238170112', '2023-04-12 11:26:18', '1605871474248617984', '2023-04-12 11:26:18', NULL, '1645991514195832832');
INSERT INTO `ums_resource` VALUES ('1645992077247590400', 'expeditShipmentAddOrUpdate', '/imall-third-service/admin/expediteShipmentContact/saveContact', 'post', '催发货新增/编辑', '1645991918816145408', '2023-04-12 11:27:47', '1605871474248617984', '2023-04-17 13:47:46', '1605871474248617984', '1645991887723769856');
INSERT INTO `ums_resource` VALUES ('1645992176900059136', 'expeditShipmentDelete', '/imall-third-service/admin/expediteShipmentContact', 'delete', '催发货删除', '1645991918816145408', '2023-04-12 11:28:11', '1605871474248617984', '2023-04-12 11:28:11', NULL, '1645991887723769856');
INSERT INTO `ums_resource` VALUES ('1645992262212202496', 'expediteShipmentList', '/imall-third-service/admin/expediteShipmentContact/page', 'get', '催发货列表', '1645991918816145408', '2023-04-12 11:28:31', '1605871474248617984', '2023-04-17 13:48:02', '1605871474248617984', '1645991887723769856');
INSERT INTO `ums_resource` VALUES ('1646125551442931712', 'abnormalOrderRecordsList', '/imall-oms/omsAbnormalOrderRecord/page', 'post', '异常订单记录列表', '1646125408161312768', '2023-04-12 20:18:10', '1605871474248617984', '2023-04-12 20:18:10', NULL, '1646125339089514496');
INSERT INTO `ums_resource` VALUES ('1646488195702140928', 'shoppingCartManagementList', '/imall-oms/omsShoppingCartManagement/page', 'get', '购物车管理列表', '1646488001354870784', '2023-04-13 20:19:11', '1605871474248617984', '2023-04-13 20:26:08', '1605871474248617984', '1646487953938264064');
INSERT INTO `ums_resource` VALUES ('1646489403380674560', 'shoppingCartManagementAdd', '/imall-oms/omsShoppingCartManagement/page', 'put', '购物车管理新增', '1646488001354870784', '2023-04-13 20:23:59', '1605871474248617984', '2023-04-13 20:26:02', '1605871474248617984', '1646487953938264064');
INSERT INTO `ums_resource` VALUES ('1646489527691456512', 'shoppingCartManagementEdit', '/imall-oms/omsShoppingCartManagementEdit/page', 'post', '购物车管理编辑', '1646488001354870784', '2023-04-13 20:24:28', '1605871474248617984', '2023-04-13 20:24:28', NULL, '1646487953938264064');
INSERT INTO `ums_resource` VALUES ('1646489623854264320', 'shoppingCartManagementDelete', '/imall-oms/omsShoppingCartManagement/page', 'delete', '购物车管理删除', '1646488001354870784', '2023-04-13 20:24:51', '1605871474248617984', '2023-04-21 10:04:56', '1648243656123600896', '1646487953938264064');
INSERT INTO `ums_resource` VALUES ('1646789183403143168', 'goodsListGetCacheStock', '/imall-pms/product/getCacheStockById', 'get', '获取缓存商品', '1610542209274798080', '2023-04-14 16:15:12', '1605871474248617984', '2023-04-14 16:15:12', NULL, '1600036058932076545');
INSERT INTO `ums_resource` VALUES ('1646827052142374912', 'sku', '/imall-pms/sku/*', 'get', 'sku(后期删除)', '1610542209274798080', '2023-04-14 18:45:40', '1605871474248617984', '2023-04-14 18:45:40', NULL, '1600036058932076545');
INSERT INTO `ums_resource` VALUES ('1646827458759176192', 'productAttributeCategoryList', '/imall-pms/productAttribute/category/list', 'get', '商品属性列表（后期删除）', '1610542209274798080', '2023-04-14 18:47:17', '1605871474248617984', '2023-04-21 10:06:32', '1648243656123600896', '1600036058932076545');
INSERT INTO `ums_resource` VALUES ('1647892420545949696', 'ossPolicy', '/imall-storage/aliyun/oss/policy', 'get', '图片上传', '1647891181745680384', '2023-04-17 17:19:04', '1605871474248617984', '2023-04-17 17:19:04', NULL, '1600038879748300801');
INSERT INTO `ums_resource` VALUES ('1648504728508289024', 'orderSettingDisposeItemList', '/imall-oms/commonConfig/getConfigItemList', 'get', '配置项列表', '1648504530822352896', '2023-04-19 09:52:10', '1605871474248617984', '2023-04-19 09:52:10', NULL, '1648504463264698368');
INSERT INTO `ums_resource` VALUES ('1648504844963139584', 'orderSettingDisposeItemUpdate', '/imall-oms/commonConfig/addConfigItem', 'post', '配置项新增', '1648504530822352896', '2023-04-19 09:52:37', '1605871474248617984', '2023-04-19 09:52:37', NULL, '1648504463264698368');
INSERT INTO `ums_resource` VALUES ('1648504960054841344', 'orderSettingDisposeItemEdit', '/imall-oms/commonConfig/updateConfigItem', 'post', '配置项编辑', '1648504530822352896', '2023-04-19 09:53:05', '1605871474248617984', '2023-04-19 09:53:05', NULL, '1648504463264698368');
INSERT INTO `ums_resource` VALUES ('1648505078799781888', 'orderSettingDisposeItemDelete', '/imall-oms/commonConfig/batchDeleteConfigItem', 'delete', '配置项删除', '1648504530822352896', '2023-04-19 09:53:33', '1605871474248617984', '2023-04-19 09:53:33', NULL, '1648504463264698368');
INSERT INTO `ums_resource` VALUES ('1648985012393844736', 'logisticsManagementUpdate', '/imall-tms/admin/trackInfo/update', 'post', '物流管理更新', '1610461319691026432', '2023-04-20 17:40:38', '1605871474248617984', '2023-04-21 10:06:00', '1648243656123600896', '1600037707968815105');
INSERT INTO `ums_resource` VALUES ('1650035757902839808', 'newsManagementList', '/imall-brand/admin/news/page', 'get', '新闻管理列表', '1650026847523422208', '2023-04-23 15:15:56', '1605871474248617984', '2023-04-23 15:15:56', NULL, '1650022809809567744');
INSERT INTO `ums_resource` VALUES ('1650036207947464704', 'newsManagementAdd', '/imall-brand/admin/news/add', 'post', '新闻管理新增', '1650026847523422208', '2023-04-23 15:17:43', '1605871474248617984', '2023-04-23 15:17:43', NULL, '1650022809809567744');
INSERT INTO `ums_resource` VALUES ('1650036630158688256', 'newsManagementUpdate', '/imall-brand/admin/news/update', 'put', '新闻管理编辑', '1650026847523422208', '2023-04-23 15:19:23', '1605871474248617984', '2023-04-23 15:19:23', NULL, '1650022809809567744');
INSERT INTO `ums_resource` VALUES ('1650036908735971328', 'newsManagementDelete', '/imall-brand/admin/news/delete', 'delete', '新闻管理删除', '1650026847523422208', '2023-04-23 15:20:30', '1605871474248617984', '2023-04-23 15:20:30', NULL, '1650022809809567744');
INSERT INTO `ums_resource` VALUES ('1650039380086996992', 'afterSaleServiceAdd', '/imall-brand/admin/afterSalesPolicy/add', 'post', '售后服务新增', '1650026946773237760', '2023-04-23 15:30:19', '1605871474248617984', '2023-04-23 15:30:19', NULL, '1650022863354052608');
INSERT INTO `ums_resource` VALUES ('1650039830194536448', 'afterSaleServiceList', '/imall-brand/admin/afterSalesPolicy/list', 'get', '售货服务列表', '1650026946773237760', '2023-04-23 15:32:06', '1605871474248617984', '2023-04-23 15:32:06', NULL, '1650022863354052608');
INSERT INTO `ums_resource` VALUES ('1650040063817269248', 'afterSaleServiceUpdate', '/imall-brand/admin/afterSalesPolicy/update', 'put', '售后服务编辑', '1650026946773237760', '2023-04-23 15:33:02', '1605871474248617984', '2023-04-23 15:33:02', NULL, '1650022863354052608');
INSERT INTO `ums_resource` VALUES ('1650040331254480896', 'afterSaleServiceDelete', '/imall-brand/admin/afterSalesPolicy/delete', 'delete', '售后服务删除', '1650026946773237760', '2023-04-23 15:34:06', '1605871474248617984', '2023-04-23 15:34:06', NULL, '1650022863354052608');
INSERT INTO `ums_resource` VALUES ('1650042893525434368', 'helperTypeAdd', '/imall-brand/admin/faqType/add', 'post', '帮助中心分类新增', '1650026988473008128', '2023-04-23 15:44:17', '1605871474248617984', '2023-04-23 15:44:17', NULL, '1650023023077343232');
INSERT INTO `ums_resource` VALUES ('1650043163122712576', 'helperTypeList', '/imall-brand/admin/faqType/page', 'get', '帮助中心分类列表', '1650026988473008128', '2023-04-23 15:45:21', '1605871474248617984', '2023-04-23 15:45:21', NULL, '1650023023077343232');
INSERT INTO `ums_resource` VALUES ('1650043462633766912', 'helperTypeUpdate', '/imall-brand/admin/faqType/update', 'put', '帮助中心分类编辑', '1650026988473008128', '2023-04-23 15:46:32', '1605871474248617984', '2023-04-23 15:46:32', NULL, '1650023023077343232');
INSERT INTO `ums_resource` VALUES ('1650043703516839936', 'helperTypeDelete', '/imall-brand/admin/faqType/delete', 'delete', '帮助中心分类删除', '1650026988473008128', '2023-04-23 15:47:30', '1605871474248617984', '2023-04-23 15:47:30', NULL, '1650023023077343232');
INSERT INTO `ums_resource` VALUES ('1650045669856886784', 'helperAdd', '/imall-brand/admin/faq/add', 'post', '帮助中心新增', '1650027023919071232', '2023-04-23 15:55:19', '1605871474248617984', '2023-04-23 15:55:19', NULL, '1650023083714396160');
INSERT INTO `ums_resource` VALUES ('1650045914728742912', 'helperList', '/imall-brand/admin/faq/page', 'get', '帮助中心列表', '1650027023919071232', '2023-04-23 15:56:17', '1605871474248617984', '2023-04-23 15:56:17', NULL, '1650023083714396160');
INSERT INTO `ums_resource` VALUES ('1650046154475159552', 'helperUpdate', '/imall-brand/admin/faq/update', 'put', '帮助中心编辑', '1650027023919071232', '2023-04-23 15:57:14', '1605871474248617984', '2023-04-23 16:41:34', '1648243656123600896', '1650023083714396160');
INSERT INTO `ums_resource` VALUES ('1650046365587062784', 'helperDelete', '/imall-brand/admin/faq/delete', 'delete', '帮助中心删除', '1650027023919071232', '2023-04-23 15:58:05', '1605871474248617984', '2023-04-23 15:58:05', NULL, '1650023083714396160');
INSERT INTO `ums_resource` VALUES ('1650048042532716544', 'configAdd', '/imall-brand/admin/brandCommonConfig/add', 'post', '通用配置新增', '1650027064637374464', '2023-04-23 16:04:44', '1605871474248617984', '2023-04-23 16:04:44', NULL, '1650023152329015296');
INSERT INTO `ums_resource` VALUES ('1650048291397550080', 'configList', '/imall-brand/admin/brandCommonConfig/list', 'get', '通用配置列表', '1650027064637374464', '2023-04-23 16:05:44', '1605871474248617984', '2023-04-23 16:05:44', NULL, '1650023152329015296');
INSERT INTO `ums_resource` VALUES ('1650048555097636864', 'configUpdate', '/imall-brand/admin/brandCommonConfig/update', 'post', '通用配置编辑', '1650027064637374464', '2023-04-23 16:06:47', '1605871474248617984', '2023-04-23 16:10:43', '1605871474248617984', '1650023152329015296');
INSERT INTO `ums_resource` VALUES ('1650048840859762688', 'configDelete', '/imall-brand/admin/brandCommonConfig/batchDelete', 'delete', '通用配置删除', '1650027064637374464', '2023-04-23 16:07:55', '1605871474248617984', '2023-04-23 16:07:55', NULL, '1650023152329015296');
INSERT INTO `ums_resource` VALUES ('1650050255447506944', 'configItemAdd', '/imall-brand/admin/brandCommonConfig/addConfigItem', 'post', '配置项新增', '1650027150268284928', '2023-04-23 16:13:32', '1605871474248617984', '2023-04-23 16:13:32', NULL, '1650026564932190208');
INSERT INTO `ums_resource` VALUES ('1650050511035809792', 'configItemList', '/imall-brand/admin/brandCommonConfig/getConfigItemList', 'get', '配置项列表', '1650027150268284928', '2023-04-23 16:14:33', '1605871474248617984', '2023-04-23 16:14:33', NULL, '1650026564932190208');
INSERT INTO `ums_resource` VALUES ('1650050803982778368', 'configItemUpdate', '/imall-brand/admin/brandCommonConfig/updateConfigItem', 'post', '配置项编辑', '1650027150268284928', '2023-04-23 16:15:43', '1605871474248617984', '2023-04-23 16:15:43', NULL, '1650026564932190208');
INSERT INTO `ums_resource` VALUES ('1650051045742460928', 'configItemDelete', '/imall-brand/admin/brandCommonConfig/batchDeleteConfigItem', 'delete', '配置项删除', '1650027150268284928', '2023-04-23 16:16:40', '1605871474248617984', '2023-04-23 16:16:40', NULL, '1650026564932190208');
INSERT INTO `ums_resource` VALUES ('1650051903276302336', 'downloadAdd', '/imall-brand/admin/download/add', 'post', '下载信息新增', '1650027105611530240', '2023-04-23 16:20:05', '1605871474248617984', '2023-04-23 16:21:42', '1605871474248617984', '1650023440079241216');
INSERT INTO `ums_resource` VALUES ('1650052248190697472', 'downloadList', '/imall-brand/admin/download/page', 'get', '下载信息列表', '1650027105611530240', '2023-04-23 16:21:27', '1605871474248617984', '2023-04-23 16:21:48', '1605871474248617984', '1650023440079241216');
INSERT INTO `ums_resource` VALUES ('1650052549022957568', 'downloadUpdate', '/imall-brand/admin/download/update', 'put', '下载信息编辑', '1650027105611530240', '2023-04-23 16:22:39', '1605871474248617984', '2023-04-23 16:22:39', NULL, '1650023440079241216');
INSERT INTO `ums_resource` VALUES ('1650052738886516736', 'downloadDelete', '/imall-brand/admin/download/delete', 'delete', '下载信息删除', '1650027105611530240', '2023-04-23 16:23:24', '1605871474248617984', '2023-04-23 16:23:24', NULL, '1650023440079241216');
INSERT INTO `ums_resource` VALUES ('1650409603214458880', 'policyList', '/imall-brand/admin/privacyPolicy/page', 'get', '隐私政策管理信息列表', '1650407137425080320', '2023-04-24 16:01:27', '1605871474248617984', '2023-04-24 16:13:47', '1648243656123600896', '1650407069481549824');
INSERT INTO `ums_resource` VALUES ('1650409699918331904', 'policyAdd', '/imall-brand/admin/privacyPolicy/add', 'post', '隐私政策管理新增', '1650407137425080320', '2023-04-24 16:01:50', '1605871474248617984', '2023-04-24 16:01:50', NULL, '1650407069481549824');
INSERT INTO `ums_resource` VALUES ('1650409779131957248', 'policyUpdate', '/imall-brand/admin/privacyPolicy/update', 'put', '隐私政策管理编辑', '1650407137425080320', '2023-04-24 16:02:09', '1605871474248617984', '2023-04-24 16:02:09', NULL, '1650407069481549824');
INSERT INTO `ums_resource` VALUES ('1650409858131673088', 'policyDelete', '/imall-brand/admin/privacyPolicy/delete', 'delete', '隐私政策管理删除', '1650407137425080320', '2023-04-24 16:02:28', '1605871474248617984', '2023-04-24 16:02:28', NULL, '1650407069481549824');

-- ----------------------------
-- Table structure for ums_resource_category
-- ----------------------------
DROP TABLE IF EXISTS `ums_resource_category`;
CREATE TABLE `ums_resource_category`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键id，雪花算法生成',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '分类名称',
  `sort` int(4) NULL DEFAULT NULL COMMENT '排序',
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建者',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '资源分类表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ums_resource_category
-- ----------------------------
INSERT INTO `ums_resource_category` VALUES ('1610461319691026432', '订单列表', 0, '2023-01-04 02:21:14', NULL, '2023-01-04 02:21:14', NULL);
INSERT INTO `ums_resource_category` VALUES ('1610484700511518720', '退款申请列表', 0, '2023-01-04 03:54:09', NULL, '2023-01-04 03:54:09', NULL);
INSERT INTO `ums_resource_category` VALUES ('1610515919280857088', '交易流水', 0, '2023-01-04 05:58:12', NULL, '2023-01-04 05:58:12', NULL);
INSERT INTO `ums_resource_category` VALUES ('1610517254864691200', '顾客信息', 0, '2023-01-04 06:03:30', NULL, '2023-01-04 06:03:30', NULL);
INSERT INTO `ums_resource_category` VALUES ('1610519369263669248', '隐私与用户协议', 0, '2023-01-04 06:11:54', NULL, '2023-01-04 06:11:54', NULL);
INSERT INTO `ums_resource_category` VALUES ('1610532876344418304', '常见问题类型', 0, '2023-01-04 07:05:35', NULL, '2023-04-21 09:54:48', '1648243656123600896');
INSERT INTO `ums_resource_category` VALUES ('1610535865389998080', '常见问题', 0, '2023-01-04 07:17:27', NULL, '2023-04-11 11:49:45', '1605871474248617984');
INSERT INTO `ums_resource_category` VALUES ('1610538888510103552', '语言配置', NULL, '2023-01-04 07:29:28', NULL, '2023-04-21 09:55:13', '1648243656123600896');
INSERT INTO `ums_resource_category` VALUES ('1610540399449399296', '应用配置', NULL, '2023-01-04 07:35:28', NULL, '2023-01-04 07:35:28', NULL);
INSERT INTO `ums_resource_category` VALUES ('1610542209274798080', '商品列表', NULL, '2023-01-04 07:42:40', NULL, '2023-01-04 07:42:40', NULL);
INSERT INTO `ums_resource_category` VALUES ('1610551772732514304', '商品分类', NULL, '2023-01-04 08:20:40', NULL, '2023-01-04 08:20:40', NULL);
INSERT INTO `ums_resource_category` VALUES ('1610554455702953984', '品牌管理', NULL, '2023-01-04 08:31:20', NULL, '2023-01-04 08:31:20', NULL);
INSERT INTO `ums_resource_category` VALUES ('1610555521072947200', '商品类型', NULL, '2023-01-04 08:35:34', NULL, '2023-01-04 08:35:34', NULL);
INSERT INTO `ums_resource_category` VALUES ('1610557228628631552', '公众号账号', NULL, '2023-01-04 08:42:21', NULL, '2023-01-04 08:42:21', NULL);
INSERT INTO `ums_resource_category` VALUES ('1610559472723877888', '粉丝管理', NULL, '2023-01-04 08:51:16', NULL, '2023-01-04 08:51:16', NULL);
INSERT INTO `ums_resource_category` VALUES ('1610561596077694976', '渠道二维码', NULL, '2023-01-04 08:59:42', NULL, '2023-01-04 08:59:42', NULL);
INSERT INTO `ums_resource_category` VALUES ('1610563431589011456', '二维码事件', NULL, '2023-01-04 09:07:00', NULL, '2023-01-04 09:07:00', NULL);
INSERT INTO `ums_resource_category` VALUES ('1610565961383469056', '用户列表', NULL, '2023-01-04 09:17:03', NULL, '2023-01-04 09:17:03', NULL);
INSERT INTO `ums_resource_category` VALUES ('1610570533858500608', '角色列表', NULL, '2023-01-04 09:35:13', NULL, '2023-01-04 09:35:13', NULL);
INSERT INTO `ums_resource_category` VALUES ('1610574027260747776', '菜单列表', NULL, '2023-01-04 09:49:06', NULL, '2023-01-04 09:49:06', NULL);
INSERT INTO `ums_resource_category` VALUES ('1610574437174272000', '资源列表', NULL, '2023-01-04 09:50:44', NULL, '2023-01-04 09:50:44', NULL);
INSERT INTO `ums_resource_category` VALUES ('1610574874552098816', '资源类型', NULL, '2023-01-04 09:52:28', NULL, '2023-01-04 09:52:28', NULL);
INSERT INTO `ums_resource_category` VALUES ('1645986947106287616', '邮箱', NULL, '2023-04-12 11:07:24', '1605871474248617984', '2023-04-12 11:07:24', NULL);
INSERT INTO `ums_resource_category` VALUES ('1645986976298643456', '短信', NULL, '2023-04-12 11:07:31', '1605871474248617984', '2023-04-12 11:07:31', NULL);
INSERT INTO `ums_resource_category` VALUES ('1645989209199292416', 'banner管理', NULL, '2023-04-12 11:16:23', '1605871474248617984', '2023-04-12 11:16:23', NULL);
INSERT INTO `ums_resource_category` VALUES ('1645990066968014848', '订单配置', NULL, '2023-04-12 11:19:48', '1605871474248617984', '2023-04-12 11:19:48', NULL);
INSERT INTO `ums_resource_category` VALUES ('1645991552238170112', '操作记录', NULL, '2023-04-12 11:25:42', '1605871474248617984', '2023-04-12 11:25:42', NULL);
INSERT INTO `ums_resource_category` VALUES ('1645991918816145408', '催发货', NULL, '2023-04-12 11:27:09', '1605871474248617984', '2023-04-12 11:27:09', NULL);
INSERT INTO `ums_resource_category` VALUES ('1646125408161312768', '异常订单记录', NULL, '2023-04-12 20:17:35', '1605871474248617984', '2023-04-12 20:17:35', NULL);
INSERT INTO `ums_resource_category` VALUES ('1646488001354870784', '购物车管理', NULL, '2023-04-13 20:18:24', '1605871474248617984', '2023-04-13 20:18:24', NULL);
INSERT INTO `ums_resource_category` VALUES ('1647891181745680384', '获取图片上传信息', 0, '2023-04-17 17:14:09', '1605871474248617984', '2023-04-17 17:14:09', NULL);
INSERT INTO `ums_resource_category` VALUES ('1648504530822352896', '配置项', NULL, '2023-04-19 09:51:23', '1605871474248617984', '2023-04-19 09:51:23', NULL);
INSERT INTO `ums_resource_category` VALUES ('1650026847523422208', '官网新闻管理', NULL, '2023-04-23 14:40:31', '1605871474248617984', '2023-04-23 14:40:31', NULL);
INSERT INTO `ums_resource_category` VALUES ('1650026946773237760', '官网售后服务', NULL, '2023-04-23 14:40:55', '1605871474248617984', '2023-04-23 14:40:55', NULL);
INSERT INTO `ums_resource_category` VALUES ('1650026988473008128', '官网帮助中心分类', NULL, '2023-04-23 14:41:05', '1605871474248617984', '2023-04-23 14:41:05', NULL);
INSERT INTO `ums_resource_category` VALUES ('1650027023919071232', '官网帮助中心', NULL, '2023-04-23 14:41:13', '1605871474248617984', '2023-04-23 14:41:13', NULL);
INSERT INTO `ums_resource_category` VALUES ('1650027064637374464', '官网通用配置', NULL, '2023-04-23 14:41:23', '1605871474248617984', '2023-04-23 14:41:23', NULL);
INSERT INTO `ums_resource_category` VALUES ('1650027105611530240', '官网下载信息', NULL, '2023-04-23 14:41:33', '1605871474248617984', '2023-04-23 14:41:33', NULL);
INSERT INTO `ums_resource_category` VALUES ('1650027150268284928', '官网配置项', NULL, '2023-04-23 14:41:43', '1605871474248617984', '2023-04-23 14:41:43', NULL);
INSERT INTO `ums_resource_category` VALUES ('1650407137425080320', '隐私政策管理', NULL, '2023-04-24 15:51:39', '1605871474248617984', '2023-04-24 15:51:39', NULL);

-- ----------------------------
-- Table structure for ums_role
-- ----------------------------
DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE `ums_role`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键id，雪花算法生成',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '名称',
  `type` int(1) NULL DEFAULT 0 COMMENT '角色类型，0-普通角色，1-管理员',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '描述',
  `parent_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '角色上级ID',
  `status` int(1) NULL DEFAULT 1 COMMENT '启用状态：0->禁用；1->启用',
  `sort` int(11) NULL DEFAULT 0,
  `create_time` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '创建者',
  `update_time` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '更新者',
  `tenant_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '企业id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '后台用户角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ums_role
-- ----------------------------
INSERT INTO `ums_role` VALUES ('1600318552274219008', '超级管理员', 1, 'admin', '0', 1, 0, '2022-12-07 10:37:30', NULL, '2022-12-07 10:37:30', '1605871474248617984', '1528911334443982848');
INSERT INTO `ums_role` VALUES ('1610917041782972416', '测试部管理员', 0, '测试部管理员', '1600318552274219008', 1, 0, '2023-01-05 08:32:07', NULL, '2023-01-05 08:32:07', '1605871474248617984', '1528911334443982848');
INSERT INTO `ums_role` VALUES ('1647958474691551232', '开发管理员', 0, '	\n开发管理员', '1600318552274219008', 1, 0, '2023-04-17 21:41:33', '1605871474248617984', '2023-04-17 21:41:33', NULL, '1528911334443982848');
INSERT INTO `ums_role` VALUES ('1648131279164907520', 'huangdl200032', 0, '', '1647958474691551232', 1, 0, '2023-04-18 09:08:12', '1605871474248617984', '2023-04-18 09:08:12', '1648243656123600896', '1528911334443982848');

-- ----------------------------
-- Table structure for ums_role_menu_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_menu_relation`;
CREATE TABLE `ums_role_menu_relation`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键id，雪花算法生成',
  `role_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '后台角色菜单关系表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ums_role_menu_relation
-- ----------------------------
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573014470656', '1610917041782972416', '1600033389203066881');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573018664960', '1610917041782972416', '0');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573018664961', '1610917041782972416', '1600036645731983361');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573022859264', '1610917041782972416', '1645989075820425216');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573022859265', '1610917041782972416', '1600036058932076545');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573027053568', '1610917041782972416', '1600036589649944578');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573027053569', '1610917041782972416', '1600038879748300801');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573031247872', '1610917041782972416', '1600038763717074946');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573031247873', '1610917041782972416', '1600038947121405953');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573035442176', '1610917041782972416', '1610518845722255360');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573035442177', '1610917041782972416', '1610519069349961728');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573039636480', '1610917041782972416', '1610519123297099776');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573039636481', '1610917041782972416', '1610518967742947328');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573043830784', '1610917041782972416', '1610519016430428160');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573043830785', '1610917041782972416', '1610518909769277440');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573048025088', '1610917041782972416', '1610517758227308544');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573048025089', '1610917041782972416', '1610517887554478080');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573052219392', '1610917041782972416', '1646125339089514496');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573052219393', '1610917041782972416', '1600037532391055362');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573056413696', '1610917041782972416', '1645991887723769856');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573056413697', '1610917041782972416', '1600037707968815105');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573060608000', '1610917041782972416', '1605912051191222272');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573060608001', '1610917041782972416', '1605874508433297408');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573060608002', '1610917041782972416', '1645990008201621504');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573064802304', '1610917041782972416', '1645986665861427200');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573068996608', '1610917041782972416', '1645986775336955904');
INSERT INTO `ums_role_menu_relation` VALUES ('1646788573068996609', '1610917041782972416', '1645986847122468864');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812781285376', '1600318552274219008', '1600038763717074946');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812785479680', '1600318552274219008', '0');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812789673984', '1600318552274219008', '1600040523340955649');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812793868288', '1600318552274219008', '1600039031875706881');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812798062592', '1600318552274219008', '1600038879748300801');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812802256896', '1600318552274219008', '1610565597410156544');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812810645504', '1600318552274219008', '1600038947121405953');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812814839808', '1600318552274219008', '1610518845722255360');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812819034112', '1600318552274219008', '1610519016430428160');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812823228416', '1600318552274219008', '1610519123297099776');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812823228417', '1600318552274219008', '1610519069349961728');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812827422720', '1600318552274219008', '1610518909769277440');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812831617024', '1600318552274219008', '1610518967742947328');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812835811328', '1600318552274219008', '1650021757928456192');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812840005632', '1600318552274219008', '1650023440079241216');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812840005633', '1600318552274219008', '1650022809809567744');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812844199936', '1600318552274219008', '1650023083714396160');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812848394240', '1600318552274219008', '1650023152329015296');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812852588544', '1600318552274219008', '1650026564932190208');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812852588545', '1600318552274219008', '1650023023077343232');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812856782848', '1600318552274219008', '1650022863354052608');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812860977152', '1600318552274219008', '1650407069481549824');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812865171456', '1600318552274219008', '1610517758227308544');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812869365760', '1600318552274219008', '1610517887554478080');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812873560064', '1600318552274219008', '1645986665861427200');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812877754368', '1600318552274219008', '1645986775336955904');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812881948672', '1600318552274219008', '1645986847122468864');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812886142976', '1600318552274219008', '1610557779277832192');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812890337280', '1600318552274219008', '1610557826207899648');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812894531584', '1600318552274219008', '1610557885972537344');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812898725888', '1600318552274219008', '1610557941492539392');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812902920192', '1600318552274219008', '1610557995938799616');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812907114496', '1600318552274219008', '1645991412970500096');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812911308800', '1600318552274219008', '1645991514195832832');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812915503104', '1600318552274219008', '1600033389203066881');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812919697408', '1600318552274219008', '1645989075820425216');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812923891712', '1600318552274219008', '1600036058932076545');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812928086016', '1600318552274219008', '1600036645731983361');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812936474624', '1600318552274219008', '1600036589649944578');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812944863232', '1600318552274219008', '1646487953938264064');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812949057536', '1600318552274219008', '1600037532391055362');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812953251840', '1600318552274219008', '1645991887723769856');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812957446144', '1600318552274219008', '1646125339089514496');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812961640448', '1600318552274219008', '1645990008201621504');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812965834752', '1600318552274219008', '1605912051191222272');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812970029056', '1600318552274219008', '1605874508433297408');
INSERT INTO `ums_role_menu_relation` VALUES ('1650793812974223360', '1600318552274219008', '1600037707968815105');
INSERT INTO `ums_role_menu_relation` VALUES ('1651482260546633728', '1647958474691551232', '1650021757928456192');
INSERT INTO `ums_role_menu_relation` VALUES ('1651482260550828032', '1647958474691551232', '0');
INSERT INTO `ums_role_menu_relation` VALUES ('1651482260555022336', '1647958474691551232', '1650023440079241216');
INSERT INTO `ums_role_menu_relation` VALUES ('1651482260555022337', '1647958474691551232', '1650022863354052608');
INSERT INTO `ums_role_menu_relation` VALUES ('1651482260559216640', '1647958474691551232', '1650026564932190208');
INSERT INTO `ums_role_menu_relation` VALUES ('1651482260563410944', '1647958474691551232', '1650023152329015296');
INSERT INTO `ums_role_menu_relation` VALUES ('1651482260567605248', '1647958474691551232', '1650022809809567744');
INSERT INTO `ums_role_menu_relation` VALUES ('1651482260567605249', '1647958474691551232', '1650023083714396160');
INSERT INTO `ums_role_menu_relation` VALUES ('1651482260571799552', '1647958474691551232', '1650023023077343232');
INSERT INTO `ums_role_menu_relation` VALUES ('1651482260571799553', '1647958474691551232', '1650407069481549824');
INSERT INTO `ums_role_menu_relation` VALUES ('1651885878957424640', '1648131279164907520', '1650021757928456192');
INSERT INTO `ums_role_menu_relation` VALUES ('1651885878961618944', '1648131279164907520', '0');
INSERT INTO `ums_role_menu_relation` VALUES ('1651885878965813248', '1648131279164907520', '1650022863354052608');
INSERT INTO `ums_role_menu_relation` VALUES ('1651885878965813249', '1648131279164907520', '1650023083714396160');
INSERT INTO `ums_role_menu_relation` VALUES ('1651885878970007552', '1648131279164907520', '1650022809809567744');
INSERT INTO `ums_role_menu_relation` VALUES ('1651885878974201856', '1648131279164907520', '1650023152329015296');
INSERT INTO `ums_role_menu_relation` VALUES ('1651885878978396160', '1648131279164907520', '1650026564932190208');
INSERT INTO `ums_role_menu_relation` VALUES ('1651885878978396161', '1648131279164907520', '1650023023077343232');
INSERT INTO `ums_role_menu_relation` VALUES ('1651885878982590464', '1648131279164907520', '1650407069481549824');
INSERT INTO `ums_role_menu_relation` VALUES ('1651885878982590465', '1648131279164907520', '1650023440079241216');
INSERT INTO `ums_role_menu_relation` VALUES ('1651885878986784768', '1648131279164907520', '1600033389203066881');
INSERT INTO `ums_role_menu_relation` VALUES ('1651885878986784769', '1648131279164907520', '1645989075820425216');
INSERT INTO `ums_role_menu_relation` VALUES ('1651885878990979072', '1648131279164907520', '1600036645731983361');
INSERT INTO `ums_role_menu_relation` VALUES ('1651885878990979073', '1648131279164907520', '1600036058932076545');
INSERT INTO `ums_role_menu_relation` VALUES ('1651885878995173376', '1648131279164907520', '1600036589649944578');

-- ----------------------------
-- Table structure for ums_role_resource_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_resource_relation`;
CREATE TABLE `ums_role_resource_relation`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键id，雪花算法生成',
  `role_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '角色ID',
  `resource_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '资源ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '角色资源关联关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ums_role_resource_relation
-- ----------------------------
INSERT INTO `ums_role_resource_relation` VALUES ('1606121957630513152', '1604681207562727424', '1606106636987240448');
INSERT INTO `ums_role_resource_relation` VALUES ('1606121957672456192', '1604681207562727424', '1606107521230409728');
INSERT INTO `ums_role_resource_relation` VALUES ('1606121957685039104', '1604681207562727424', '1606108205543690240');
INSERT INTO `ums_role_resource_relation` VALUES ('1606121957693427712', '1604681207562727424', '1606108754573889536');
INSERT INTO `ums_role_resource_relation` VALUES ('1606121957706010624', '1604681207562727424', '1606109206627586048');
INSERT INTO `ums_role_resource_relation` VALUES ('1606121957726982144', '1604681207562727424', '1605925946500943872');
INSERT INTO `ums_role_resource_relation` VALUES ('1606121957735370752', '1604681207562727424', '1606116662942470144');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398507978752', '1610917041782972416', '1605925946500943872');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398507978753', '1610917041782972416', '1606106636987240448');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398507978754', '1610917041782972416', '1606107521230409728');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398512173056', '1610917041782972416', '1606108205543690240');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398512173057', '1610917041782972416', '1606108754573889536');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398516367360', '1610917041782972416', '1606109206627586048');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398516367361', '1610917041782972416', '1606116662942470144');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398516367362', '1610917041782972416', '1610463178816274432');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398520561664', '1610917041782972416', '1644660605507817472');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398520561665', '1610917041782972416', '1645977824419590144');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398520561666', '1610917041782972416', '1645978027805585408');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398524755968', '1610917041782972416', '1645978149683671040');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398524755969', '1610917041782972416', '1645978265308049408');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398528950272', '1610917041782972416', '1610485271977050112');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398528950273', '1610917041782972416', '1610485734762405888');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398528950274', '1610917041782972416', '1610486994295119872');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398533144576', '1610917041782972416', '1610512746264715264');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398533144577', '1610917041782972416', '1610514248844763136');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398533144578', '1610917041782972416', '1645978577888555008');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398537338880', '1610917041782972416', '1610516553509953536');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398537338881', '1610917041782972416', '1610518289620459520');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398537338882', '1610917041782972416', '1645979607921537024');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398541533184', '1610917041782972416', '1610521133937385472');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398541533185', '1610917041782972416', '1610521723186765824');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398545727488', '1610917041782972416', '1610522234485006336');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398545727489', '1610917041782972416', '1610522588429737984');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398545727490', '1610917041782972416', '1610533430416171008');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398549921792', '1610917041782972416', '1610534163546955776');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398549921793', '1610917041782972416', '1610534959617466368');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398554116096', '1610917041782972416', '1610536109397827584');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398554116097', '1610917041782972416', '1610536700165545984');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398554116098', '1610917041782972416', '1610536862321532928');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398558310400', '1610917041782972416', '1610537020241272832');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398558310401', '1610917041782972416', '1610539135021932544');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398558310402', '1610917041782972416', '1610539335249616896');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398562504704', '1610917041782972416', '1610539510143705088');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398562504705', '1610917041782972416', '1610541040263553024');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398566699008', '1610917041782972416', '1610541234589851648');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398566699009', '1610917041782972416', '1610541400088698880');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398566699010', '1610917041782972416', '1610542918107979776');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398570893312', '1610917041782972416', '1610543125151408128');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398570893313', '1610917041782972416', '1610543364486782976');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398570893314', '1610917041782972416', '1610543854452793344');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398575087616', '1610917041782972416', '1610544140005203968');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398575087617', '1610917041782972416', '1610544334943870976');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398579281920', '1610917041782972416', '1610544609091969024');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398579281921', '1610917041782972416', '1645980176887263232');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398579281922', '1610917041782972416', '1645980285175803904');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398583476224', '1610917041782972416', '1645980389114851328');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398583476225', '1610917041782972416', '1645980490818334720');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398587670528', '1610917041782972416', '1646789183403143168');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398587670529', '1610917041782972416', '1646827052142374912');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398591864832', '1610917041782972416', '1646827458759176192');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398591864833', '1610917041782972416', '1610921930760183808');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398591864834', '1610917041782972416', '1645980851658502144');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398596059136', '1610917041782972416', '1645980950119788544');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398596059137', '1610917041782972416', '1645984721923158016');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398600253440', '1610917041782972416', '1645984835530076160');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398600253441', '1610917041782972416', '1645984936302424064');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398600253442', '1610917041782972416', '1645985107006402560');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398604447744', '1610917041782972416', '1645985212694474752');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398604447745', '1610917041782972416', '1610554843852234752');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398608642048', '1610917041782972416', '1610923727029592064');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398608642049', '1610917041782972416', '1645985375555104768');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398608642050', '1610917041782972416', '1645985489006833664');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398612836352', '1610917041782972416', '1645985578760744960');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398612836353', '1610917041782972416', '1645985665578643456');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398617030656', '1610917041782972416', '1645985769228283904');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398617030657', '1610917041782972416', '1610556201875595264');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398617030658', '1610917041782972416', '1610566227965042688');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398621224960', '1610917041782972416', '1610566442126204928');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398621224961', '1610917041782972416', '1610566632602132480');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398621224962', '1610917041782972416', '1610566818825035776');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398625419264', '1610917041782972416', '1610567217992753152');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398625419265', '1610917041782972416', '1610567399677419520');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398629613568', '1610917041782972416', '1610567764728668160');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398629613569', '1610917041782972416', '1610568011370520576');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398629613570', '1610917041782972416', '1610572021037064192');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398633807872', '1610917041782972416', '1610572202180665344');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398633807873', '1610917041782972416', '1610572484910309376');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398638002176', '1610917041782972416', '1610572667136040960');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398638002177', '1610917041782972416', '1610572844878061568');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398638002178', '1610917041782972416', '1610573122037669888');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398642196480', '1610917041782972416', '1610575823601459200');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398642196481', '1610917041782972416', '1610576093253263360');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398642196482', '1610917041782972416', '1610576374259048448');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398646390784', '1610917041782972416', '1610576652429484032');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398646390785', '1610917041782972416', '1610574377216696320');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398650585088', '1610917041782972416', '1610579530808352768');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398650585089', '1610917041782972416', '1610574835456991232');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398650585090', '1610917041782972416', '1610583487144321024');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398654779392', '1610917041782972416', '1610575246834327552');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398654779393', '1610917041782972416', '1645987177088364544');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398654779394', '1610917041782972416', '1645987307870957568');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398658973696', '1610917041782972416', '1645987411461877760');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398658973697', '1610917041782972416', '1645987505703694336');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398663168000', '1610917041782972416', '1645987601665175552');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398663168001', '1610917041782972416', '1645987720657580032');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398663168002', '1610917041782972416', '1645987808486305792');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398667362304', '1610917041782972416', '1645987908965052416');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398667362305', '1610917041782972416', '1645988039617622016');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398667362306', '1610917041782972416', '1645988123067494400');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398671556608', '1610917041782972416', '1645988205233909760');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398671556609', '1610917041782972416', '1645988314327756800');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398675750912', '1610917041782972416', '1645988422893121536');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398675750913', '1610917041782972416', '1645988534377721856');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398675750914', '1610917041782972416', '1645988617282334720');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398679945216', '1610917041782972416', '1645988710131642368');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398679945217', '1610917041782972416', '1645988796395892736');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398679945218', '1610917041782972416', '1645989388040220672');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398684139520', '1610917041782972416', '1645989471628505088');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398684139521', '1610917041782972416', '1645989547146948608');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398684139522', '1610917041782972416', '1645989639568437248');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398688333824', '1610917041782972416', '1645989774348201984');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398688333825', '1610917041782972416', '1645990330219311104');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398696722433', '1610917041782972416', '1645990934425579520');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398696722434', '1610917041782972416', '1645991014142521344');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398700916736', '1610917041782972416', '1645991107876827136');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398700916737', '1610917041782972416', '1645992077247590400');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398700916738', '1610917041782972416', '1645992176900059136');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398705111040', '1610917041782972416', '1645992262212202496');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398705111041', '1610917041782972416', '1646125551442931712');
INSERT INTO `ums_role_resource_relation` VALUES ('1647959398709305344', '1610917041782972416', '1647892420545949696');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195485503488', '1647958474691551232', '1605925946500943872');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195774910464', '1647958474691551232', '1606106636987240448');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195779104768', '1647958474691551232', '1606107521230409728');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195779104769', '1647958474691551232', '1606108205543690240');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195783299072', '1647958474691551232', '1606108754573889536');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195787493376', '1647958474691551232', '1606109206627586048');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195791687680', '1647958474691551232', '1606116662942470144');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195791687681', '1647958474691551232', '1610463178816274432');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195795881984', '1647958474691551232', '1644660605507817472');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195800076288', '1647958474691551232', '1645977824419590144');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195804270592', '1647958474691551232', '1645978027805585408');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195804270593', '1647958474691551232', '1645978149683671040');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195808464896', '1647958474691551232', '1645978265308049408');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195808464897', '1647958474691551232', '1610485271977050112');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195812659200', '1647958474691551232', '1610485734762405888');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195816853504', '1647958474691551232', '1610486994295119872');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195816853505', '1647958474691551232', '1610512746264715264');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195816853506', '1647958474691551232', '1610514248844763136');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195821047808', '1647958474691551232', '1645978577888555008');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195825242112', '1647958474691551232', '1610516553509953536');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195825242113', '1647958474691551232', '1610518289620459520');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195825242114', '1647958474691551232', '1645979607921537024');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195829436416', '1647958474691551232', '1610521133937385472');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195833630720', '1647958474691551232', '1610521723186765824');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195833630721', '1647958474691551232', '1610522234485006336');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195837825024', '1647958474691551232', '1610522588429737984');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195837825025', '1647958474691551232', '1610533430416171008');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195837825026', '1647958474691551232', '1610534163546955776');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195842019328', '1647958474691551232', '1610534959617466368');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195846213632', '1647958474691551232', '1610536109397827584');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195846213633', '1647958474691551232', '1610536700165545984');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195850407936', '1647958474691551232', '1610536862321532928');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195850407937', '1647958474691551232', '1610537020241272832');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195854602240', '1647958474691551232', '1610539135021932544');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195854602241', '1647958474691551232', '1610539335249616896');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195858796544', '1647958474691551232', '1610539510143705088');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195858796545', '1647958474691551232', '1610541040263553024');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195862990848', '1647958474691551232', '1610541234589851648');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195867185152', '1647958474691551232', '1610541400088698880');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195867185153', '1647958474691551232', '1610542918107979776');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195871379456', '1647958474691551232', '1610543125151408128');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195871379457', '1647958474691551232', '1610543364486782976');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195875573760', '1647958474691551232', '1610543854452793344');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195875573761', '1647958474691551232', '1610544140005203968');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195879768064', '1647958474691551232', '1610544334943870976');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195879768065', '1647958474691551232', '1610544609091969024');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195883962368', '1647958474691551232', '1645980176887263232');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195883962369', '1647958474691551232', '1645980285175803904');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195888156672', '1647958474691551232', '1645980389114851328');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195888156673', '1647958474691551232', '1645980490818334720');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195892350976', '1647958474691551232', '1646789183403143168');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195892350977', '1647958474691551232', '1646827052142374912');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195896545280', '1647958474691551232', '1646827458759176192');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195896545281', '1647958474691551232', '1610921930760183808');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195896545282', '1647958474691551232', '1645980851658502144');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195900739584', '1647958474691551232', '1645980950119788544');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195900739585', '1647958474691551232', '1645984721923158016');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195904933888', '1647958474691551232', '1645984835530076160');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195904933889', '1647958474691551232', '1645984936302424064');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195909128192', '1647958474691551232', '1645985107006402560');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195909128193', '1647958474691551232', '1645985212694474752');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195913322496', '1647958474691551232', '1610554843852234752');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195913322497', '1647958474691551232', '1610923727029592064');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195917516800', '1647958474691551232', '1645985375555104768');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195917516801', '1647958474691551232', '1645985489006833664');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195921711104', '1647958474691551232', '1645985578760744960');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195921711105', '1647958474691551232', '1645985665578643456');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195921711106', '1647958474691551232', '1645985769228283904');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195925905408', '1647958474691551232', '1610556201875595264');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195925905409', '1647958474691551232', '1610558331151769600');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195930099712', '1647958474691551232', '1610558618256072704');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195930099713', '1647958474691551232', '1610558837190352896');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195930099714', '1647958474691551232', '1610560570624892928');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195934294016', '1647958474691551232', '1610560860396773376');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195934294017', '1647958474691551232', '1610561101850271744');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195938488320', '1647958474691551232', '1610561891679657984');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195938488321', '1647958474691551232', '1610562568216698880');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195938488322', '1647958474691551232', '1610562764422045696');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195942682624', '1647958474691551232', '1610563926906953728');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195942682625', '1647958474691551232', '1610566227965042688');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195946876928', '1647958474691551232', '1610566442126204928');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195946876929', '1647958474691551232', '1610566632602132480');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195946876930', '1647958474691551232', '1610566818825035776');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195951071232', '1647958474691551232', '1610567217992753152');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195951071233', '1647958474691551232', '1610567399677419520');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195955265536', '1647958474691551232', '1610567764728668160');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195955265537', '1647958474691551232', '1610568011370520576');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195955265538', '1647958474691551232', '1610572021037064192');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195959459840', '1647958474691551232', '1610572202180665344');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195959459841', '1647958474691551232', '1610572484910309376');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195963654144', '1647958474691551232', '1610572667136040960');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195963654145', '1647958474691551232', '1610572844878061568');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195967848448', '1647958474691551232', '1610573122037669888');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195967848449', '1647958474691551232', '1610575823601459200');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195967848450', '1647958474691551232', '1610576093253263360');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195972042752', '1647958474691551232', '1610576374259048448');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195972042753', '1647958474691551232', '1610576652429484032');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195972042754', '1647958474691551232', '1610574377216696320');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195976237056', '1647958474691551232', '1610579530808352768');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195976237057', '1647958474691551232', '1610579733913329664');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195980431360', '1647958474691551232', '1610579944496750592');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195980431361', '1647958474691551232', '1610580188399722496');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195984625664', '1647958474691551232', '1610580535629373440');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195984625665', '1647958474691551232', '1610574835456991232');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195984625666', '1647958474691551232', '1610583487144321024');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195988819968', '1647958474691551232', '1610583632770555904');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195988819969', '1647958474691551232', '1610583809774379008');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195993014272', '1647958474691551232', '1610583952057753600');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195993014273', '1647958474691551232', '1610575246834327552');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195993014274', '1647958474691551232', '1610582063836618752');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195997208576', '1647958474691551232', '1610582261438668800');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411195997208577', '1647958474691551232', '1610582637395107840');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196001402880', '1647958474691551232', '1645987177088364544');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196001402881', '1647958474691551232', '1645987307870957568');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196001402882', '1647958474691551232', '1645987411461877760');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196005597184', '1647958474691551232', '1645987505703694336');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196005597185', '1647958474691551232', '1645987601665175552');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196009791488', '1647958474691551232', '1645987720657580032');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196009791489', '1647958474691551232', '1645987808486305792');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196009791490', '1647958474691551232', '1645987908965052416');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196013985792', '1647958474691551232', '1645988039617622016');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196013985793', '1647958474691551232', '1645988123067494400');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196018180096', '1647958474691551232', '1645988205233909760');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196018180097', '1647958474691551232', '1645988314327756800');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196018180098', '1647958474691551232', '1645988422893121536');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196022374400', '1647958474691551232', '1645988534377721856');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196022374401', '1647958474691551232', '1645988617282334720');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196026568704', '1647958474691551232', '1645988710131642368');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196026568705', '1647958474691551232', '1645988796395892736');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196026568706', '1647958474691551232', '1645989388040220672');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196030763008', '1647958474691551232', '1645989471628505088');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196030763009', '1647958474691551232', '1645989547146948608');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196034957312', '1647958474691551232', '1645989639568437248');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196034957313', '1647958474691551232', '1645989774348201984');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196039151616', '1647958474691551232', '1645990330219311104');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196043345920', '1647958474691551232', '1645990934425579520');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196043345921', '1647958474691551232', '1645991014142521344');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196043345922', '1647958474691551232', '1645991107876827136');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196047540224', '1647958474691551232', '1645991702671077376');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196047540225', '1647958474691551232', '1645992077247590400');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196051734528', '1647958474691551232', '1645992176900059136');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196051734529', '1647958474691551232', '1645992262212202496');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196055928832', '1647958474691551232', '1646125551442931712');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196055928833', '1647958474691551232', '1647892420545949696');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196055928834', '1647958474691551232', '1648504728508289024');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196060123136', '1647958474691551232', '1648504844963139584');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196060123137', '1647958474691551232', '1648504960054841344');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196064317440', '1647958474691551232', '1648505078799781888');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196064317441', '1647958474691551232', '1650035757902839808');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196068511744', '1647958474691551232', '1650036207947464704');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196068511745', '1647958474691551232', '1650036630158688256');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196068511746', '1647958474691551232', '1650036908735971328');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196072706048', '1647958474691551232', '1650039380086996992');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196072706049', '1647958474691551232', '1650039830194536448');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196076900352', '1647958474691551232', '1650040063817269248');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196076900353', '1647958474691551232', '1650040331254480896');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196076900354', '1647958474691551232', '1650042893525434368');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196081094656', '1647958474691551232', '1650043163122712576');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196081094657', '1647958474691551232', '1650043462633766912');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196085288960', '1647958474691551232', '1650043703516839936');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196085288961', '1647958474691551232', '1650045669856886784');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196085288962', '1647958474691551232', '1650045914728742912');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196089483264', '1647958474691551232', '1650046154475159552');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196089483265', '1647958474691551232', '1650046365587062784');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196093677568', '1647958474691551232', '1650048042532716544');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196093677569', '1647958474691551232', '1650048291397550080');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196093677570', '1647958474691551232', '1650048555097636864');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196097871872', '1647958474691551232', '1650048840859762688');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196097871873', '1647958474691551232', '1650051903276302336');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196102066176', '1647958474691551232', '1650052248190697472');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196102066177', '1647958474691551232', '1650052549022957568');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196102066178', '1647958474691551232', '1650052738886516736');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196106260480', '1647958474691551232', '1650050255447506944');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196106260481', '1647958474691551232', '1650050511035809792');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196106260482', '1647958474691551232', '1650050803982778368');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196110454784', '1647958474691551232', '1650051045742460928');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196110454785', '1647958474691551232', '1650409603214458880');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196114649088', '1647958474691551232', '1650409699918331904');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196114649089', '1647958474691551232', '1650409779131957248');
INSERT INTO `ums_role_resource_relation` VALUES ('1650411196118843392', '1647958474691551232', '1650409858131673088');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770240638976', '1600318552274219008', '1605925946500943872');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770244833280', '1600318552274219008', '1606106636987240448');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770249027584', '1600318552274219008', '1606107521230409728');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770253221888', '1600318552274219008', '1606108205543690240');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770257416192', '1600318552274219008', '1606108754573889536');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770257416193', '1600318552274219008', '1606109206627586048');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770261610496', '1600318552274219008', '1606116662942470144');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770261610497', '1600318552274219008', '1610463178816274432');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770265804800', '1600318552274219008', '1644660605507817472');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770265804801', '1600318552274219008', '1645977824419590144');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770269999104', '1600318552274219008', '1645978027805585408');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770269999105', '1600318552274219008', '1645978149683671040');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770274193408', '1600318552274219008', '1645978265308049408');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770274193409', '1600318552274219008', '1610485271977050112');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770278387712', '1600318552274219008', '1610485734762405888');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770278387713', '1600318552274219008', '1610486994295119872');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770282582016', '1600318552274219008', '1610512746264715264');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770282582017', '1600318552274219008', '1610514248844763136');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770286776320', '1600318552274219008', '1645978577888555008');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770286776321', '1600318552274219008', '1610516553509953536');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770286776322', '1600318552274219008', '1610518289620459520');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770290970624', '1600318552274219008', '1645979607921537024');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770295164928', '1600318552274219008', '1610521133937385472');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770295164929', '1600318552274219008', '1610521723186765824');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770295164930', '1600318552274219008', '1610522234485006336');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770299359232', '1600318552274219008', '1610522588429737984');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770303553536', '1600318552274219008', '1610533430416171008');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770303553537', '1600318552274219008', '1610534163546955776');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770307747840', '1600318552274219008', '1610534959617466368');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770311942144', '1600318552274219008', '1610536109397827584');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770311942145', '1600318552274219008', '1610536700165545984');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770311942146', '1600318552274219008', '1610536862321532928');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770316136448', '1600318552274219008', '1610537020241272832');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770316136449', '1600318552274219008', '1610539135021932544');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770320330752', '1600318552274219008', '1610539335249616896');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770320330753', '1600318552274219008', '1610539510143705088');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770324525056', '1600318552274219008', '1610541040263553024');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770324525057', '1600318552274219008', '1610541234589851648');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770328719360', '1600318552274219008', '1610541400088698880');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770328719361', '1600318552274219008', '1610542918107979776');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770332913664', '1600318552274219008', '1610543125151408128');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770332913665', '1600318552274219008', '1610543364486782976');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770332913666', '1600318552274219008', '1610543854452793344');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770337107968', '1600318552274219008', '1610544140005203968');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770337107969', '1600318552274219008', '1610544334943870976');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770341302272', '1600318552274219008', '1610544609091969024');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770341302273', '1600318552274219008', '1645980176887263232');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770345496576', '1600318552274219008', '1645980285175803904');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770345496577', '1600318552274219008', '1645980389114851328');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770349690880', '1600318552274219008', '1645980490818334720');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770349690881', '1600318552274219008', '1646789183403143168');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770353885184', '1600318552274219008', '1646827052142374912');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770353885185', '1600318552274219008', '1646827458759176192');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770358079488', '1600318552274219008', '1610921930760183808');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770358079489', '1600318552274219008', '1645980851658502144');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770362273792', '1600318552274219008', '1645980950119788544');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770362273793', '1600318552274219008', '1645984721923158016');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770366468096', '1600318552274219008', '1645984835530076160');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770366468097', '1600318552274219008', '1645984936302424064');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770370662400', '1600318552274219008', '1645985107006402560');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770370662401', '1600318552274219008', '1645985212694474752');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770374856704', '1600318552274219008', '1610554843852234752');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770374856705', '1600318552274219008', '1610923727029592064');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770374856706', '1600318552274219008', '1645985375555104768');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770379051008', '1600318552274219008', '1645985489006833664');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770379051009', '1600318552274219008', '1645985578760744960');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770383245312', '1600318552274219008', '1645985665578643456');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770383245313', '1600318552274219008', '1645985769228283904');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770387439616', '1600318552274219008', '1610556201875595264');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770391633920', '1600318552274219008', '1610558331151769600');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770391633921', '1600318552274219008', '1610558618256072704');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770395828224', '1600318552274219008', '1610558837190352896');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770395828225', '1600318552274219008', '1610560570624892928');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770395828226', '1600318552274219008', '1610560860396773376');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770400022528', '1600318552274219008', '1610561101850271744');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770400022529', '1600318552274219008', '1610561891679657984');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770404216832', '1600318552274219008', '1610562568216698880');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770404216833', '1600318552274219008', '1610562764422045696');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770408411136', '1600318552274219008', '1610563926906953728');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770408411137', '1600318552274219008', '1610566227965042688');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770412605440', '1600318552274219008', '1610566442126204928');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770412605441', '1600318552274219008', '1610566632602132480');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770416799744', '1600318552274219008', '1610566818825035776');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770416799745', '1600318552274219008', '1610567217992753152');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770420994048', '1600318552274219008', '1610567399677419520');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770420994049', '1600318552274219008', '1610567764728668160');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770425188352', '1600318552274219008', '1610568011370520576');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770425188353', '1600318552274219008', '1610572021037064192');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770429382656', '1600318552274219008', '1610572202180665344');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770429382657', '1600318552274219008', '1610572484910309376');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770433576960', '1600318552274219008', '1610572667136040960');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770433576961', '1600318552274219008', '1610572844878061568');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770433576962', '1600318552274219008', '1610573122037669888');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770437771264', '1600318552274219008', '1610575823601459200');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770437771265', '1600318552274219008', '1610576093253263360');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770441965568', '1600318552274219008', '1610576374259048448');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770441965569', '1600318552274219008', '1610576652429484032');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770446159872', '1600318552274219008', '1610574377216696320');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770446159873', '1600318552274219008', '1610579530808352768');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770450354176', '1600318552274219008', '1610579733913329664');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770450354177', '1600318552274219008', '1610579944496750592');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770454548480', '1600318552274219008', '1610580188399722496');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770454548481', '1600318552274219008', '1610580535629373440');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770458742784', '1600318552274219008', '1610574835456991232');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770458742785', '1600318552274219008', '1610583487144321024');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770458742786', '1600318552274219008', '1610583632770555904');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770462937088', '1600318552274219008', '1610583809774379008');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770467131392', '1600318552274219008', '1610583952057753600');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770467131393', '1600318552274219008', '1610575246834327552');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770471325696', '1600318552274219008', '1610582063836618752');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770471325697', '1600318552274219008', '1610582261438668800');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770475520000', '1600318552274219008', '1610582637395107840');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770475520001', '1600318552274219008', '1645987177088364544');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770479714304', '1600318552274219008', '1645987307870957568');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770479714305', '1600318552274219008', '1645987411461877760');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770479714306', '1600318552274219008', '1645987505703694336');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770483908608', '1600318552274219008', '1645987601665175552');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770488102912', '1600318552274219008', '1645987720657580032');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770492297216', '1600318552274219008', '1645987808486305792');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770492297217', '1600318552274219008', '1645987908965052416');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770496491520', '1600318552274219008', '1645988039617622016');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770496491521', '1600318552274219008', '1645988123067494400');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770500685824', '1600318552274219008', '1645988205233909760');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770500685825', '1600318552274219008', '1645988314327756800');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770500685826', '1600318552274219008', '1645988422893121536');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770504880128', '1600318552274219008', '1645988534377721856');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770504880129', '1600318552274219008', '1645988617282334720');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770509074432', '1600318552274219008', '1645988710131642368');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770509074433', '1600318552274219008', '1645988796395892736');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770513268736', '1600318552274219008', '1645989388040220672');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770513268737', '1600318552274219008', '1645989471628505088');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770517463040', '1600318552274219008', '1645989547146948608');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770517463041', '1600318552274219008', '1645989639568437248');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770517463042', '1600318552274219008', '1645989774348201984');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770521657344', '1600318552274219008', '1645990330219311104');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770521657345', '1600318552274219008', '1645990934425579520');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770525851648', '1600318552274219008', '1645991014142521344');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770525851649', '1600318552274219008', '1645991107876827136');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770530045952', '1600318552274219008', '1645991702671077376');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770530045953', '1600318552274219008', '1645992077247590400');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770534240256', '1600318552274219008', '1645992176900059136');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770534240257', '1600318552274219008', '1645992262212202496');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770534240258', '1600318552274219008', '1646125551442931712');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770538434560', '1600318552274219008', '1646488195702140928');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770542628864', '1600318552274219008', '1646489403380674560');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770542628865', '1600318552274219008', '1646489527691456512');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770542628866', '1600318552274219008', '1646489623854264320');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770546823168', '1600318552274219008', '1647892420545949696');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770546823169', '1600318552274219008', '1648504728508289024');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770551017472', '1600318552274219008', '1648504844963139584');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770551017473', '1600318552274219008', '1648504960054841344');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770555211776', '1600318552274219008', '1648505078799781888');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770555211777', '1600318552274219008', '1650035757902839808');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770555211778', '1600318552274219008', '1650036207947464704');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770559406080', '1600318552274219008', '1650036630158688256');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770559406081', '1600318552274219008', '1650036908735971328');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770563600384', '1600318552274219008', '1650039380086996992');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770563600385', '1600318552274219008', '1650039830194536448');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770563600386', '1600318552274219008', '1650040063817269248');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770567794688', '1600318552274219008', '1650040331254480896');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770567794689', '1600318552274219008', '1650042893525434368');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770571988992', '1600318552274219008', '1650043163122712576');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770571988993', '1600318552274219008', '1650043462633766912');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770571988994', '1600318552274219008', '1650043703516839936');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770576183296', '1600318552274219008', '1650045669856886784');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770576183297', '1600318552274219008', '1650045914728742912');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770580377600', '1600318552274219008', '1650046154475159552');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770580377601', '1600318552274219008', '1650046365587062784');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770580377602', '1600318552274219008', '1650048042532716544');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770584571904', '1600318552274219008', '1650048291397550080');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770584571905', '1600318552274219008', '1650048555097636864');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770588766208', '1600318552274219008', '1650048840859762688');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770588766209', '1600318552274219008', '1650051903276302336');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770592960512', '1600318552274219008', '1650052248190697472');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770592960513', '1600318552274219008', '1650052549022957568');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770592960514', '1600318552274219008', '1650052738886516736');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770597154816', '1600318552274219008', '1650050255447506944');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770597154817', '1600318552274219008', '1650050511035809792');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770601349120', '1600318552274219008', '1650050803982778368');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770601349121', '1600318552274219008', '1650051045742460928');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770601349122', '1600318552274219008', '1650409603214458880');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770605543424', '1600318552274219008', '1650409699918331904');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770605543425', '1600318552274219008', '1650409779131957248');
INSERT INTO `ums_role_resource_relation` VALUES ('1650837770609737728', '1600318552274219008', '1650409858131673088');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986373550080', '1648131279164907520', '1610542918107979776');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986381938688', '1648131279164907520', '1610543125151408128');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986386132992', '1648131279164907520', '1610543364486782976');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986390327296', '1648131279164907520', '1610543854452793344');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986394521600', '1648131279164907520', '1610544140005203968');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986398715904', '1648131279164907520', '1610544334943870976');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986402910208', '1648131279164907520', '1610544609091969024');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986402910209', '1648131279164907520', '1645980176887263232');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986407104512', '1648131279164907520', '1645980285175803904');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986411298816', '1648131279164907520', '1645980389114851328');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986411298817', '1648131279164907520', '1645980490818334720');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986415493120', '1648131279164907520', '1646789183403143168');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986415493121', '1648131279164907520', '1646827052142374912');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986419687424', '1648131279164907520', '1646827458759176192');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986419687425', '1648131279164907520', '1610921930760183808');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986423881728', '1648131279164907520', '1645980851658502144');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986423881729', '1648131279164907520', '1645980950119788544');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986428076032', '1648131279164907520', '1645984721923158016');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986428076033', '1648131279164907520', '1645984835530076160');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986432270336', '1648131279164907520', '1645984936302424064');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986432270337', '1648131279164907520', '1645985107006402560');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986436464640', '1648131279164907520', '1645985212694474752');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986436464641', '1648131279164907520', '1610554843852234752');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986440658944', '1648131279164907520', '1610923727029592064');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986440658945', '1648131279164907520', '1645985375555104768');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986444853248', '1648131279164907520', '1645985489006833664');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986444853249', '1648131279164907520', '1645985578760744960');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986449047552', '1648131279164907520', '1645985665578643456');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986449047553', '1648131279164907520', '1645985769228283904');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986453241856', '1648131279164907520', '1645989388040220672');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986453241857', '1648131279164907520', '1645989471628505088');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986457436160', '1648131279164907520', '1645989547146948608');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986457436161', '1648131279164907520', '1645989639568437248');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986461630464', '1648131279164907520', '1645989774348201984');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986461630465', '1648131279164907520', '1650035757902839808');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986465824768', '1648131279164907520', '1650036207947464704');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986465824769', '1648131279164907520', '1650036630158688256');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986470019072', '1648131279164907520', '1650036908735971328');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986470019073', '1648131279164907520', '1650039380086996992');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986474213376', '1648131279164907520', '1650039830194536448');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986474213377', '1648131279164907520', '1650040063817269248');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986478407680', '1648131279164907520', '1650040331254480896');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986478407681', '1648131279164907520', '1650042893525434368');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986482601984', '1648131279164907520', '1650043163122712576');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986482601985', '1648131279164907520', '1650043462633766912');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986486796288', '1648131279164907520', '1650043703516839936');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986486796289', '1648131279164907520', '1650045669856886784');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986490990592', '1648131279164907520', '1650045914728742912');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986490990593', '1648131279164907520', '1650046154475159552');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986495184896', '1648131279164907520', '1650046365587062784');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986495184897', '1648131279164907520', '1650048042532716544');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986499379200', '1648131279164907520', '1650048291397550080');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986499379201', '1648131279164907520', '1650048555097636864');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986503573504', '1648131279164907520', '1650048840859762688');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986503573505', '1648131279164907520', '1650051903276302336');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986507767808', '1648131279164907520', '1650052248190697472');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986507767809', '1648131279164907520', '1650052549022957568');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986511962112', '1648131279164907520', '1650052738886516736');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986511962113', '1648131279164907520', '1650050255447506944');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986516156416', '1648131279164907520', '1650050511035809792');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986516156417', '1648131279164907520', '1650050803982778368');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986520350720', '1648131279164907520', '1650051045742460928');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986520350721', '1648131279164907520', '1650409603214458880');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986524545024', '1648131279164907520', '1650409699918331904');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986524545025', '1648131279164907520', '1650409779131957248');
INSERT INTO `ums_role_resource_relation` VALUES ('1651885986528739328', '1648131279164907520', '1650409858131673088');

-- ----------------------------
-- Table structure for ums_user_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_user_role_relation`;
CREATE TABLE `ums_user_role_relation`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '主键id，雪花算法生成',
  `user_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '后台用户和角色关系表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ums_user_role_relation
-- ----------------------------
INSERT INTO `ums_user_role_relation` VALUES ('1640972028563378176', '1640971928751525888', '1610917041782972416');
INSERT INTO `ums_user_role_relation` VALUES ('1640972436300058624', '1640972379597262848', '1610917041782972416');
INSERT INTO `ums_user_role_relation` VALUES ('1640972706417430528', '1640972657612509184', '1610917041782972416');
INSERT INTO `ums_user_role_relation` VALUES ('1646790176060682240', '1638728844383694848', '1610917041782972416');
INSERT INTO `ums_user_role_relation` VALUES ('1646792766458638336', '1605871474248617984', '1600318552274219008');
INSERT INTO `ums_user_role_relation` VALUES ('1646793945599127552', '1643194359377514496', '1600318552274219008');
INSERT INTO `ums_user_role_relation` VALUES ('1646815564291846145', '1646815100879974400', '1600318552274219008');
INSERT INTO `ums_user_role_relation` VALUES ('1648159053212655616', '1648158951102324736', '1647958474691551232');
INSERT INTO `ums_user_role_relation` VALUES ('1648160744796430336', '1648160059778506752', '1647958474691551232');
INSERT INTO `ums_user_role_relation` VALUES ('1648254301988573184', '1648254249446526976', '1647958474691551232');
INSERT INTO `ums_user_role_relation` VALUES ('1648256479050452992', '1646795622964211712', '1647958474691551232');
INSERT INTO `ums_user_role_relation` VALUES ('1648590557505495040', '1648590472935743488', '1647958474691551232');
INSERT INTO `ums_user_role_relation` VALUES ('1653959652684853248', '1648243656123600896', '1648131279164907520');

SET FOREIGN_KEY_CHECKS = 1;
