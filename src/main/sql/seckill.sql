# 秒杀执行存储过程
DELIMITER $$ # console ;转换为 $$

#定义存储过程
# 参数:in 输入参数; out 输出参数
# row_count:返回上一条修改类型SQL(delete,insert,update)的影响行数
# row_count: 0-未修改数据 >0-表示修改的行数 ;<0 -sql错误/未执行修改sql
CREATE PROCEDURE  `seckill`.`execute_seckill`(in v_seckill_id bigint,in v_phone bigint,
in v_kill_time timestamp,out r_result int )
BEGIN
    DECLARE insert_count int DEFAULT 0;
    START TRANSACTION;
    INSERT ignore INTO success_killed(seckill_id, user_phone, create_time)
    VALUES (v_seckill_id,v_phone,v_kill_time);
    SELECT row_count() INTO insert_count;
    IF (insert_count=0)THEN
        ROLLBACK;
        SET r_result=-1;
    ELSEIF (insert_count<0)THEN
        ROLLBACK;
        SET r_result=-2;
    ELSE
        UPDATE seckill
        SET number=number-1
        WHERE seckill_id=v_seckill_id
        AND end_time>v_kill_time
        AND start_time<v_kill_time
        AND number>0;
        SELECT row_count() INTO insert_count;
        IF (insert_count=0)THEN
            ROLLBACK;
            SET r_result=0;
        ELSEIF (insert_count<0)THEN
            ROLLBACK;
            SET r_result=-2;
        ELSE
            COMMIT;
            SET r_result=1;
        END IF;
    END IF;
END;
$$
# 存储过程定义结束
DELIMITER ;
# 执行存储过程
SET @r_result=-3;
call  execute_seckill(1001,13502178891,now(),@r_result);
# 获取结果
SELECT @r_result;

# 存储过程
# 1. 存储过程优化: 事务行级锁持有的时间
# 2. 不要过度依赖存储过程
# 3. 简单的逻辑可以应用存储过程
# 4.QPS: 一个秒杀单6000/qps