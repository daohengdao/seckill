# 数据库初始化脚本

# 创建数据库
CREATE DATABASE seckill;

#使用数据库
USE seckill;

#创建秒杀库存表
CREATE TABLE seckill(
    `seckill_id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '商品库存id',
    `name` varchar(120) NOT NULL COMMENT '商品名称',
    `number` INT NOT NULL COMMENT '库存数量',
    `start_time` timestamp NOT NULL COMMENT '秒杀开启时间',
    `end_time` timestamp NOT NULL COMMENT '秒杀结束时间',
    `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (seckill_id),
    key idx_start_time(start_time),
    key idx_end_time(end_time),
    key idx_create_time(create_time)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='秒杀库存表';

# 初始化数据
INSERT INTO
    seckill(name, number, start_time, end_time)
VALUES
       ('1000元秒杀iPhone6',100,'2022-04-21 00:00:00','2022-04-22 00:00:00'),
       ('500元秒杀iPad2',200,'2022-04-21 00:00:00','2022-04-22 00:00:00'),
       ('300元秒杀小米4',300,'2022-04-21 00:00:00','2022-04-22 00:00:00'),
       ('200元秒杀红米note',400,'2022-04-21 00:00:00','2022-04-22 00:00:00');

# 秒杀成功明细表
# 用户登录认证相关的信息

CREATE TABLE success_killed(
        `seckill_id` BIGINT NOT NULL COMMENT '秒杀商品id',
    `user_phone` BIGINT NOT NULL COMMENT '用户手机号',
    `state` tinyint NOT NULL  DEFAULT -1 COMMENT '状态标识:-1:无效 0:成功 1:已付款 2:已发货',
    `create_time` timestamp NOT NULL  DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    PRIMARY KEY (seckill_id,user_phone), /*联合主键*/
    key idx_create_time(create_time)
);

# 连接数据库控制台
# mysql -uroot -p

# 为什么手写DDL
# 记录每次上线的DDL修改
# 上线v1.1

ALTER TABLE seckill
DROP INDEX idx_create_time,
ADD INDEX idx_c_(start_time,create_time);

# 上线v1.22
# DDL