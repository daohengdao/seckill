package org.seckill.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.seckill.entity.SuccessKilled;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit spring配置文件
@ContextConfiguration("classpath:spring/spring-dao.xml")
public class SuccessKillDaoTest {

    @Resource
    private SuccessKillDao successKillDao;

    @Test
    public void insertSuccessKilled() {
        long id=1001L;
        long phone=13502181181L;
        int insertCount = successKillDao.insertSuccessKilled(id, phone);
        System.out.println("insertCount="+insertCount);
    }

    @Test
    public void queryByIdWithSecKill() {
        long id=1001L;
        long phone=13502181181L;
        SuccessKilled successKilled = successKillDao.queryByIdWithSecKill(id, phone);
        System.out.println(successKilled);
        System.out.println(successKilled.getSeckill());
    }
}