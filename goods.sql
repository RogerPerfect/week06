

--商品表，包含id，名称，价格，库存
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `inventory` int DEFAULT NULL,
  PRIMARY KEY (`id`)
);

--订单表，包含id，用户id,订单时间，订单总价
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `buy_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);

--订单明细表，包含订单id，商品id，商品数量，商品单价  （地址）
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `order_id` int NOT NULL,
  `goods_id` int NOT NULL,
  `goods_number` int DEFAULT NULL,
  `goods_price` decimal(10,2) DEFAULT NULL
);

--用户表，包含id,名称，手机  （可能需要地址表）
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
);