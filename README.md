## Dao层

### 技术依赖

#### MySQL

![image-20220420183901661](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130737123-1902078326.png)

#### mybatis

![image-20220420183947907](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130738006-1076677207.png)

#### spring

![image-20220420184024362](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130739094-295737876.png)

#### springMVC

![image-20220420184050945](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130739369-589392845.png)

#### 前端

![image-20220420184126769](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130739656-185954219.png)

#### 高并发

![image-20220420184201071](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130740125-7558873.png)

#### `pom.xml`

~~~xml
<?xml version="1.0" encoding="UTF-8"?>

<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>

  <groupId>org.seckill</groupId>
  <artifactId>seckill</artifactId>
  <version>1.0-SNAPSHOT</version>
  <packaging>war</packaging>

  <name>seckill Maven Webapp</name>
  <!-- FIXME change it to the project's website -->
  <url>http://www.example.com</url>

  <properties>
    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
    <maven.compiler.source>17</maven.compiler.source>
    <maven.compiler.target>17</maven.compiler.target>
  </properties>
  <dependencies>
<!--    单元测试-->
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>4.13.2</version>
      <scope>test</scope>
    </dependency>
    <dependency>
      <groupId>javax.annotation</groupId>
      <artifactId>javax.annotation-api</artifactId>
      <version>1.3.2</version>
    </dependency>

<!--    补全项目依赖-->
<!--    1. 日志 Java日志:slf4j,log4j,logback,common-logging
      slf4j 是规范接口
      日志实现: log4j,logback,common-logging
      使用: slf4j+logback
-->
    <!-- https://mvnrepository.com/artifact/org.slf4j/slf4j-api -->
    <dependency>
      <groupId>org.slf4j</groupId>
      <artifactId>slf4j-api</artifactId>
      <version>1.7.25</version>
    </dependency>
    <!-- https://mvnrepository.com/artifact/ch.qos.logback/logback-core -->
    <dependency>
      <groupId>ch.qos.logback</groupId>
      <artifactId>logback-core</artifactId>
      <version>1.2.3</version>
    </dependency>

    <!-- 实现slf4接口并整合-->
    <dependency>
      <groupId>ch.qos.logback</groupId>
      <artifactId>logback-classic</artifactId>
      <version>1.2.3</version>
      <scope>test</scope>
    </dependency>
<!--数据库相关依赖-->
    <dependency>
      <groupId>mysql</groupId>
      <artifactId>mysql-connector-java</artifactId>
      <version>8.0.19</version>
      <scope>runtime</scope>
    </dependency>
    <dependency>
      <groupId>com.mchange</groupId>
      <artifactId>c3p0</artifactId>
      <version>0.9.5.2</version>

    </dependency>
<!--    DAO框架: mybatis-->
    <!-- https://mvnrepository.com/artifact/org.mybatis/mybatis -->
    <dependency>
      <groupId>org.mybatis</groupId>
      <artifactId>mybatis</artifactId>
      <version>3.5.9</version>
    </dependency>

    <!-- mybatis自身实现的spring整合依赖 -->
    <dependency>
      <groupId>org.mybatis</groupId>
      <artifactId>mybatis-spring</artifactId>
      <version>2.0.6</version>
    </dependency>
<!--    ServletWeb相关依赖-->
    <dependency>
      <groupId>taglibs</groupId>
      <artifactId>standard</artifactId>
      <version>1.1.2</version>
    </dependency>
    <dependency>
      <groupId>jstl</groupId>
      <artifactId>jstl</artifactId>
      <version>1.2</version>
    </dependency>
    <!-- https://mvnrepository.com/artifact/com.fasterxml.jackson.core/jackson-databind -->
    <dependency>
      <groupId>com.fasterxml.jackson.core</groupId>
      <artifactId>jackson-databind</artifactId>
      <version>2.9.8</version>
    </dependency>
    <dependency>
      <groupId>javax.servlet</groupId>
      <artifactId>javax.servlet-api</artifactId>
      <version>3.1.0</version>
    </dependency>
<!--    spring依赖-->
<!--    1.spring核心依赖-->
    <dependency>
      <groupId>org.springframework</groupId>
      <artifactId>spring-core</artifactId>
      <version>5.3.19</version>
    </dependency>
    <dependency>
      <groupId>org.springframework</groupId>
      <artifactId>spring-beans</artifactId>
      <version>5.3.19</version>
    </dependency>
    <dependency>
      <groupId>org.springframework</groupId>
      <artifactId>spring-context</artifactId>
      <version>5.3.19</version>
    </dependency>
<!--    2)spring DAO层依赖-->
    <dependency>
      <groupId>org.springframework</groupId>
      <artifactId>spring-jdbc</artifactId>
      <version>5.3.19</version>
    </dependency>
    <dependency>
      <groupId>org.springframework</groupId>
      <artifactId>spring-tx</artifactId>
      <version>5.3.19</version>
    </dependency>
<!--    3)spring-web相关依赖-->
    <dependency>
      <groupId>org.springframework</groupId>
      <artifactId>spring-web</artifactId>
      <version>5.3.19</version>
    </dependency>
    <dependency>
      <groupId>org.springframework</groupId>
      <artifactId>spring-webmvc</artifactId>
      <version>5.3.19</version>
    </dependency>
<!--4)spring test相关依赖-->
    <dependency>
      <groupId>org.springframework</groupId>
      <artifactId>spring-test</artifactId>
      <version>5.3.19</version>
    </dependency>
<!--      redis客户端：jedis-->
      <!-- https://mvnrepository.com/artifact/redis.clients/jedis -->
      <dependency>
          <groupId>redis.clients</groupId>
          <artifactId>jedis</artifactId>
          <version>4.2.1</version>
      </dependency>

<!--      protostuff序列化依赖-->
      <!-- https://mvnrepository.com/artifact/io.protostuff/protostuff-core -->
      <dependency>
          <groupId>io.protostuff</groupId>
          <artifactId>protostuff-core</artifactId>
          <version>1.8.0</version>
      </dependency>

      <!-- https://mvnrepository.com/artifact/commons-collections/commons-collections -->
      <dependency>
          <groupId>commons-collections</groupId>
          <artifactId>commons-collections</artifactId>
          <version>3.2.2</version>
      </dependency>


      <!-- https://mvnrepository.com/artifact/io.protostuff/protostuff-runtime -->
      <dependency>
          <groupId>io.protostuff</groupId>
          <artifactId>protostuff-runtime</artifactId>
          <version>1.8.0</version>
      </dependency>

  </dependencies>

  <build>
    <finalName>seckill</finalName>
    <pluginManagement><!-- lock down plugins versions to avoid using Maven defaults (may be moved to parent pom) -->
      <plugins>
        <plugin>
          <artifactId>maven-clean-plugin</artifactId>
          <version>3.1.0</version>
        </plugin>
        <!-- see http://maven.apache.org/ref/current/maven-core/default-bindings.html#Plugin_bindings_for_war_packaging -->
        <plugin>
          <artifactId>maven-resources-plugin</artifactId>
          <version>3.0.2</version>
        </plugin>
        <plugin>
          <artifactId>maven-compiler-plugin</artifactId>
          <version>3.8.0</version>
          <configuration>
            <source>17</source>
            <target>17</target>
          </configuration>
        </plugin>
        <plugin>
          <artifactId>maven-surefire-plugin</artifactId>
          <version>2.22.1</version>
        </plugin>
        <plugin>
          <artifactId>maven-war-plugin</artifactId>
          <version>3.2.2</version>
        </plugin>
        <plugin>
          <artifactId>maven-install-plugin</artifactId>
          <version>2.5.2</version>
        </plugin>
        <plugin>
          <artifactId>maven-deploy-plugin</artifactId>
          <version>2.8.2</version>
        </plugin>
      </plugins>
    </pluginManagement>
  </build>
</project>
~~~

### 业务流程

![image-20220420193727618](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130741778-1989317711.png)

![image-20220420193744884](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130742278-1100261872.png)

![image-20220420193813890](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130743771-1513831027.png)

![image-20220420193835725](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130744935-1674276495.png)

为什么需要事务？

![image-20220420193914345](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130746118-2013233877.png)

![image-20220420194031323](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130746880-773852067.png)

### Mysql实现难点分析

#### 难点分析

![image-20220420194123943](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130748299-1862877712.png)

#### 方案

![image-20220420194141825](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130748699-1856910116.png)

![image-20220420194208420](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130749545-219187444.png)

![image-20220420194304726](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130751152-1780622853.png)

![image-20220420194313691](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130752169-297037132.png)

### 天猫秒杀系统

![image-20220420194430479](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130754866-1478562808.png)

### 项目实现

![image-20220420194515029](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130755480-445209910.png)

### 代码实现

![image-20220420194557967](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130756422-1773360783.png)

#### 创建数据库

~~~mysql
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
~~~

#### DAO层实体和接口编码

##### 实体

![image-20220420205107243](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130756704-947838924.png)

![image-20220420205143469](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130757147-1636271559.png)

##### 接口

![image-20220420233657945](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130757595-240145925.png)

![image-20220420233719751](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130758274-332037157.png)

#### 基于`mybatis`实现DAO编程

##### `mybaits-config.xml`

~~~xml
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE configuration
        PUBLIC "-//mybatis.org//DTD Config 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-config.dtd">
<configuration>
<!--    配置全局属性-->
    <settings>
<!--        使用jdbc的getGeneratedKeys 获取数据库自增主键值-->
        <setting name="useGeneratedKeys" value="true"/>
<!--        使用列别名替换列表 默认: true-->
        <setting name="userColumnLabel" value="true"/>
<!--        开启驼峰命名转换: Table(create_time)->Entity(createTime) -->
        <setting name="mapUnderscoreCamelCase" value="true"/>
    </settings>
</configuration>
~~~

##### `SeckillDao.xml`

~~~xml
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper
        PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="org.seckill.dao.SeckillDao">
<!--    目的: 为dao接口方法提供sql语句配置-->
    <update id="reduceNumber">
        <!-- 具体sql-->
        UPDATE
        seckill
        SET
        number=number-1
        WHERE seckill_id=#{seckillId}
        AND start_time <![CDATA[ <= ]]> #{killTime}
        AND end_time >= #{killTime}
        AND number>0;

    </update>

    <select id="queryById" resultType="Seckill" parameterType="long" >
        SELECT  seckill_id,name,number,start_time,end_time,create_time
        FROM seckill WHERE seckill_id =#{seckillId};
    </select>

    <select id="queryAll" resultType="Seckill">
        SELECT  seckill_id,name,number,start_time,end_time,create_time
        FROM seckill
        ORDER BY create_time DESC
        LIMIT  #{offset},#{limit}
    </select>
</mapper>
~~~

##### `SuccessKillDao.xml`

~~~xml
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper
        PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="org.seckill.dao.SuccessKillDao">
    <insert id="insertSuccessKilled">
        # 主键冲突,报错
        INSERT ignore INTO success_killed(seckill_id,user_phone,state)
        VALUES (#{seckillId},#{userPhone},0);
    </insert>

    <select id="queryByIdWithSecKill" resultType="SuccessKilled">
    # 根据id查询SuccessKilled并携带Seckill实体
    # 如果告诉Mybatis把结果映射到SuccessKilled同时映射seckill属性
    # 可以自由控制SQL
    SELECT
        sk.seckill_id,
        sk.user_phone,
        sk.create_time,
        sk.state,
        s.seckill_id "seckill.seckill_id",
        s.name "seckill.name",
        s.number "seckill.number",
        s.start_time "seckill.start_time",
        s.end_time "seckill.end_time",
        s.create_time "seckill.create_time"
    FROM success_killed sk
    INNER JOIN seckill s ON sk.seckill_id = s.seckill_id
    WHERE sk.seckill_id=#{seckillId} AND sk.user_phone=#{userPhone}
    </select>
</mapper>
~~~

#### MyBatis整合Spring

##### 笔记

![image-20220420223330037](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130800219-32065487.png)

##### 代码

###### `spring-dao.xml`

~~~xml
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:context="http://www.springframework.org/schema/context"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xsi:schemaLocation="http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans.xsd
        http://www.springframework.org/schema/context http://www.springframework.org/schema/context/spring-context.xsd
">

<!--    配置整合mybatis过程-->
<!--    1. 配置数据库相关参数 -->
    <context:property-placeholder location="classpath:jdbc.properties"/>

    <!--    配置数据源信息-->
    <bean id="dataSource" class="com.mchange.v2.c3p0.ComboPooledDataSource">
        <!-- 连接池属性-->
        <property name="driverClass" value="${jdbc.driver}"></property>
        <property name="jdbcUrl" value="${jdbc.url}"></property>
        <property name="user" value="${jdbc.username}"></property>
        <property name="password" value="${jdbc.password}"></property>

        <!--    c3p0连接池的私有属性-->
        <property name="maxPoolSize" value="30"/>
        <property name="minPoolSize" value="10"/>
<!--        关闭连接后不自动commit-->
        <property name="autoCommitOnClose" value="false"/>
<!--        获取连接超时时间-->
        <property name="checkoutTimeout" value="1000"/>
<!--       当获取连接失败重试次数-->
        <property name="acquireRetryAttempts" value="2"/>
    </bean>
<!--约定大于配置-->
<!--    配置SqlSessionFactory对象-->
    <bean id="sqlSessionFactory" class="org.mybatis.spring.SqlSessionFactoryBean">
<!--        注入数据库连接池-->
        <property name="dataSource" ref="dataSource"/>
<!--        配置mybatis全局配置文件:mybatis-config.xml-->
        <property name="configLocation" value="classpath:mybaits-config.xml"/>
<!--        扫描entity包 使用别名 -->
        <property name="typeAliasesPackage" value="org.seckill.entity"/>
<!--        扫描sql配置文件:mapper需要的xml文件-->
        <property name="mapperLocations" value="classpath:mapper/*.xml"/>
     </bean>

<!--    配置扫描Dao接口包,动态实现Dao接口,注入到spring容器中-->
    <bean class="org.mybatis.spring.mapper.MapperScannerConfigurer">
<!--        注入SqlSessionFactory-->
        <property name="sqlSessionFactoryBeanName" value="sqlSessionFactory"/>
<!--        给出需要扫描Dao接口包-->
        <property name="basePackage" value="org.seckill.dao"/>
    </bean>


</beans>
~~~

#### 单元测试

##### `SeckillDaoTest`

~~~java
package org.seckill.dao;

import junit.framework.TestCase;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.seckill.entity.Seckill;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * 配置spring和junit整合,junit启动时加载springIOC容器
 */
@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit spring配置文件
@ContextConfiguration("classpath:spring/spring-dao.xml")
public class SeckillDaoTest extends TestCase {
    //注入Dao实现类依赖
    @Resource
    private SeckillDao seckillDao;

    @Test
    public void testReduceNumber() {
        long id=1000;
        Seckill seckill = seckillDao.queryById(id);
        System.out.println(seckill.getName());
        System.out.println(seckill);
    }

    @Test
    public void testQueryById() {
        int reduceNumber = seckillDao.reduceNumber(1000L, new Date());
        System.out.println(reduceNumber);
    }

    /**
     * org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.binding.BindingException: Parameter 'offset' not found. Available parameters are [arg1, arg0, param1, param2]
     * Java没有保存形参的记录: queryAll(int offet,int limit)->queryAll(arg0,arg1)
     */
    @Test
    public void testQueryAll() {
        List<Seckill> seckills = seckillDao.queryAll(0, 100);
        for (Seckill seckill:seckills) {
            System.out.println(seckill);
        }
    }
}
~~~

##### `SuccessKillDaoTest`

~~~java
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
~~~

## Service层

### Service接口

~~~java
package org.seckill.service;

import org.seckill.dto.Exposer;
import org.seckill.dto.SeckillExecution;
import org.seckill.entity.Seckill;
import org.seckill.exception.RepeatKillException;
import org.seckill.exception.SeckillCloseException;
import org.seckill.exception.SeckillException;

import java.util.List;

/**业务接口:站在"使用者"角度设计数据
 * 三个方面: 方法定义粒度,参数,返回类型(return 类型/异常)
 * @author admin
 */
public interface SeckillService {
    /**
     * 查询所有秒杀记录
     * @return
     */
    List<Seckill> getSeckillList();

    /**
     * 查询单个秒杀记录
     * @param seckillId
     * @return
     */
    Seckill getById(long seckillId);

    /**
     * 秒杀开启是输出秒杀接口地址
     * 否则输出系统时间和秒杀时间
     * @param seckillId
     * @return
     */
    Exposer exportSeckillUrl(long seckillId);


    /**
     * 执行秒杀操作
     * @param seckillId
     * @param userPhone
     * @param md5
     * @return
     * @throws SeckillException
     * @throws RepeatKillException
     * @throws SeckillCloseException
     */
    SeckillExecution executeSeckill(long seckillId, long userPhone, String md5) throws SeckillException, RepeatKillException, SeckillCloseException;
}
~~~

### dto

![image-20220421195048495](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130801155-662980396.png)

![image-20220421195103701](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130801841-1088124244.png)

### 枚举类

~~~java
package org.seckill.enums;

/**
 * 使用枚举表示常量数据字段
 * @author admin
 */
public enum SeckillStatEnum {
    SUCCESS(1,"秒杀成功"),
    END(0,"秒杀结束"),
    REPEAT_KILL(-1,"重复秒杀"),
    INNER_ERROR(-2,"系统异常"),
    DATA_REWRITE(-3,"数据篡改");

    private int state;

    private String stateInfo;

    SeckillStatEnum(int state, String stateInfo) {
        this.state = state;
        this.stateInfo = stateInfo;
    }

    public int getState() {
        return state;
    }

    public String getStateInfo() {
        return stateInfo;
    }

    public static SeckillStatEnum stateOf(int index){
        for (SeckillStatEnum state:values()){
            if (state.getState()==index){
                return state;
            }
        }
        return null;
    }
}

~~~

### 异常

![image-20220421195415526](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130802228-861932670.png)

![image-20220421195425446](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130802915-2029148867.png)

![image-20220421195434778](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130803254-1561628195.png)

### 接口实现

~~~java
package org.seckill.service.impl;

import org.seckill.dao.SeckillDao;
import org.seckill.dao.SuccessKillDao;
import org.seckill.dto.Exposer;
import org.seckill.dto.SeckillExecution;
import org.seckill.entity.Seckill;
import org.seckill.entity.SuccessKilled;
import org.seckill.enums.SeckillStatEnum;
import org.seckill.exception.RepeatKillException;
import org.seckill.exception.SeckillCloseException;
import org.seckill.exception.SeckillException;
import org.seckill.service.SeckillService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.DigestUtils;

import java.util.Date;
import java.util.List;

/**
 * @author admin
 */
public class SeckillServiceImpl implements SeckillService {
    private Logger logger= LoggerFactory.getLogger(this.getClass());

    private SeckillDao seckillDao;

    private SuccessKillDao successKillDao;

    //md5盐值字符串,用于混淆md5
    private final String slat="saadadsndwhhewkadniwndalkdamwsad#@$%TR$^@!~";

    @Override
    public List<Seckill> getSeckillList() {
        return seckillDao.queryAll(0,4);
    }

    @Override
    public Seckill getById(long seckillId) {
        return seckillDao.queryById(seckillId);
    }

    @Override
    public Exposer exportSeckillUrl(long seckillId) {
        Seckill seckill=seckillDao.queryById(seckillId);
        if (seckill==null){
            return new Exposer(false,seckillId);
        }
        Date startTime=seckill.getStartTime();
        Date endTime = seckill.getEndTime();
        //系统当前时间
        Date nowTime=new Date();

        if (nowTime.getTime()<startTime.getTime() || nowTime.getTime()>endTime.getTime()){
            return new Exposer(false,seckillId,nowTime.getTime(),startTime.getTime(),endTime.getTime());
        }
        //转化特定字符串的过程,不可逆
        String md5=getMd5(seckillId);
        return new Exposer(true,md5,seckillId);
    }

    @Override
    public SeckillExecution executeSeckill(long seckillId, long userPhone, String md5) throws SeckillException, RepeatKillException, SeckillCloseException {
        if(md5==null || md5.equals(getMd5(seckillId))){
            throw new SeckillException("seckill data rewrite");
        }

        //执行秒杀逻辑: 减库存+记录购买行为
        Date nowTime=new Date();

        try {
            //减库存
            int updateCount=seckillDao.reduceNumber(seckillId,nowTime);
            if(updateCount<=0){
                //没有更新到记录, 秒杀结束
                throw new SeckillCloseException("seckill is close");
            }else{
                //记录购买行为
                int insertCount=successKillDao.insertSuccessKilled(seckillId,userPhone);
                //唯一:seckillId,userPhone
                if (insertCount<=0){
                    //重复秒杀
                    throw new RepeatKillException("seckill repeated");
                }else {
                    SuccessKilled successKilled = successKillDao.queryByIdWithSecKill(seckillId, userPhone);
                    return new SeckillExecution(seckillId, SeckillStatEnum.SUCCESS,successKilled);
                }

            }
        }catch (SeckillCloseException e1){
            throw e1;
        }catch (RepeatKillException e2){
            throw e2;
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            //所有编译期异常 转化为运行期异常
            throw new SeckillException("seckill inner error"+e.getMessage());
        }
    }

    private String getMd5(long seckillId){
        String base=seckillId+"/"+slat;
        String md5= DigestUtils.md5DigestAsHex(base.getBytes());
        return md5;
    }
}
~~~

### Spring托管IOC

![image-20220421195743019](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130805590-2001432242.png)

![image-20220421200521519](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130806167-1325242184.png)

![image-20220421200545351](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130806541-1776034400.png)

### 声明式事务

#### 使用方式

![image-20220421200642217](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130808416-826709360.png)

![image-20220421200723801](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130809216-1924585997.png)

![image-20220421200807899](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130810691-1164222638.png)

![image-20220421201720883](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130811265-1377476087.png)

### 集成测试

~~~java
package org.seckill.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.seckill.dto.Exposer;
import org.seckill.dto.SeckillExecution;
import org.seckill.entity.Seckill;
import org.seckill.exception.RepeatKillException;
import org.seckill.exception.SeckillCloseException;
import org.seckill.exception.SeckillException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({
        "classpath:spring/spring-dao.xml",
        "classpath:spring/spring-service.xml"
})
public class SeckillServiceTest {
    private final Logger logger= LoggerFactory.getLogger(this.getClass());

    @Autowired
    private SeckillService seckillService;

    @Test
    public void getSeckillList() {
        List<Seckill> seckillList = seckillService.getSeckillList();
        logger.info("list={}",seckillList);

    }

    @Test
    public void getById() {
        long id=1000;
        Seckill seckill = seckillService.getById(id);
        logger.info("seckill={}",seckill);
    }

    /**
     * 测试代码完整逻辑, 注意可重复执行
     */
    @Test
    public void testSeckillLogic() {
        long id=1000;
        Exposer exposer = seckillService.exportSeckillUrl(id);
        if (exposer.isExposed()){
            logger.info("exposer={}",exposer);
            long phone=1352171127L;
            String md5=exposer.getMd5();
            try {
                SeckillExecution seckillExecution = seckillService.executeSeckill(id, phone, md5);
                logger.info("result={}",seckillExecution);
            } catch (RepeatKillException e) {
                logger.error(e.getMessage());
            }catch (SeckillCloseException e){
                logger.error(e.getMessage());
            }
        }else{
            //秒杀未开启
            logger.warn("exposer={}",exposer);
        }

    }
}
~~~

## Web层

### 前端页面设计

![image-20220422190508861](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130812656-1587257952.png)

![image-20220422190611970](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130814686-961956801.png)

![image-20220422190952117](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130816046-1202099965.png)

#### `list.jsp`

~~~jsp
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="common/tag.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>秒杀列表页</title>
    <%@include file="common/head.jsp"%>
</head>
<body>
<%--页面显示部分--%>
<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <h2>秒杀列表</h2>
        </div>
        <div class="panel-body">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>名称</th>
                        <th>库存</th>
                        <th>开始时间</th>
                        <th>结束时间</th>
                        <th>创建时间</th>
                        <th>详情页</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <c:forEach var="sk" items="${list}">
                            <tr>
                                <td>${sk.name}</td>
                                <td>${sk.number}</td>
                                <td>
                                    <fmt:formatDate value="${sk.startTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                                </td>
                                <td>
                                    <fmt:formatDate value="${sk.endTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                                </td>
                                <td>
                                    <fmt:formatDate value="${sk.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                                </td>
                                <td>
                                    <a class="btn btn-info" href="/seckill/${sk.seckillId}/detail" target="_blank">link</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
~~~

#### `detail.jsp`

~~~jsp
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>秒杀详情页</title>
    <%@include file="common/head.jsp"%>
</head>
<body>
<div class="container">
    <div class="panel panel-default text-center">
        <div class="panel-heading">
            <h1>${seckill.name}</h1>
        </div>
        <div class="panel-body">
            <h2 class="text-danger">
                <%--显示time图标--%>
                <span class="glyphicon glyphicon-time"></span>
                <%--展示倒计时--%>
                <span class="glyphicon" id="seckill-box"></span>
            </h2>
        </div>
    </div>
</div>

<%--登录弹出层 输入电话--%>
<div id="killPhoneModal" class="modal fade">

    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title text-center">
                    <span class="glyphicon glyphicon-phone"> </span>秒杀电话:
                </h3>
            </div>

            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-8 col-xs-offset-2">
                        <input type="text" name="killPhone" id="killPhoneKey"
                               placeholder="填写手机号^o^" class="form-control">
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <%--验证信息--%>
                <span id="killPhoneMessage" class="glyphicon"> </span>
                <button type="button" id="killPhoneBtn" class="btn btn-success">
                    <span class="glyphicon glyphicon-phone"></span>
                    Submit
                </button>
            </div>
        </div>
    </div>
</div>
</body>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%--使用CDN 获取公共js http://www.bootcdn.cn/--%>
<%--jQuery Cookie操作插件--%>
<script src="http://cdn.bootcss.com/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<%--jQuery countDown倒计时插件--%>
<script src="http://cdn.bootcss.com/jquery.countdown/2.1.0/jquery.countdown.min.js"></script>
<%--开始编写交互逻辑--%>
<script src="/resources/script/seckill.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        //使用EL表达式传入参数
        seckill.detail.init({
            seckillId:${seckill.seckillId},
            startTime:${seckill.startTime.time},//毫秒
            endTime:${seckill.endTime.time}
        });
    })
</script>
</html>
~~~

#### JavaScript模块化

~~~javascript
//存放主要交互逻辑代码
// JavaScript模块化
let seckill={
    //封装秒杀相关ajax的url
    URL:{
        now:function () {
            return '/seckill/time/now';
        },
        exposer:function (seckillId) {
            return '/seckill/'+seckillId+'/exposer';
        },
        execution:function (seckillId,md5) {
            return '/seckill/'+seckillId+'/'+md5+'/execution';
        }
    },
    handleSeckillkill:function (seckillId,node) {
        //处理秒杀逻辑
        //获取秒杀地址,控制显示逻辑, 执行秒杀
        node.hide().html('<button class="btn btn-primary btn-lg" id="killBtn">开始秒杀</button>');
        $.post(seckill.URL.exposer(seckillId),{},function (result) {
            //在回调函数中, 执行交互流程
            if (result&&result['success']){
                let exposer=result['date'];
                if (exposer['exposed']){
                    //开启秒杀
                    //获取秒杀地址
                    let md5=exposer['md5'];
                    let killUrl=seckill.URL.execution(seckillId,md5);
                    //绑定一次点击事件
                    $('#killBtn').one('click',function () {
                        //执行秒杀请求
                        //1.先禁用按钮
                        $(this).addClass('disabled');
                        //2. 发送秒杀请求,执行秒杀
                        $.post(killUrl,{},function (result) {
                            if (result && result['success']){
                                let killResult = result['date'];
                                let state=killResult['state'];
                                let stateInfo=killResult['stateInfo'];
                                //3. 显示秒杀结果
                                node.html('<span class="label label-success">' + stateInfo + '</span>');
                            }
                        });
                    });
                    node.show();
                }else {
                    //未开启秒杀
                    let now=exposer['now'];
                    let start=exposer['start'];
                    let end=exposer['end'];
                    //重新计算计时逻辑
                    seckill.countdown(seckillId,now,start,end);
                }
            }else{
                console.log('result'+result);
            }
        });
    },
    //验证手机号
    validatePhone: function (phone) {
        if (phone&&phone.length==11&&!isNaN(phone)){
            return true;
        }else {
            return false;
        }
    },
    countdown:function (seckillId,nowTime,startTime,endTime) {
        let seckillBox=$('#seckill-box');

        //时间判断
        if (nowTime>endTime){
            //秒杀结束
            seckillBox.html('秒杀结束!');
        }else if(nowTime<startTime){
            //秒杀未开始,计时
            let killTime=new Date(startTime+1000);
            seckillBox.countdown(killTime,function (event) {
                //时间格式
                let  format=event.strftime('秒杀倒计时: %D天 %H时 %M分 %S秒');
                seckillBox.html(format);
            }).on('finish.countdown',function (){
                //获取秒杀地址,控制显示逻辑, 执行秒杀
                seckill.handleSeckillkill(seckillId,seckillBox);
            });
        }else{
            //秒杀开始
            seckill.handleSeckillkill(seckillId,seckillBox);
        }
    },
    //详情页的秒杀逻辑
    detail: {
        //详情页初始化
        init: function (params) {
            //手机验证和登录, 计时交互
            //规划我们的交互流程
            //在cookie中查找手机号
            let killPhone = $.cookie('killPhone');

            //验证手机号
            if (!seckill.validatePhone(killPhone)) {
                //绑定phone
                //控制输出
                let killPhoneModal = $("#killPhoneModal");
                killPhoneModal.modal({
                    show: true,//显示弹出层
                    backdrop: 'static',//禁止位置关闭
                    keyboard: false//关闭键盘事件
                });
                $('#killPhoneBtn').click(function () {
                    let inputPhone = $('#killPhoneKey').val();
                    if (seckill.validatePhone(inputPhone)) {
                        //电话写入cookie
                        $.cookie('killPhone', inputPhone, {expires: 7, path: '/seckill'});
                        //刷新页面
                        window.location.reload();
                    }else{
                        $('#killPhoneMessage').hide().html('<label class="label label-danger">手机号错误!</label>').show(300);
                    }
                });
            }
            //已经登录
            //计时交互
            let startTime = params['startTime'];
            let endTime = params['endTime'];
            let seckillId = params['seckillId'];
            $.get(seckill.URL.now(),{},function (result) {
                if (result && result['success']){
                    let nowTime=result['date'];
                    seckill.countdown(seckillId,nowTime,startTime,endTime);
                }else{
                    console.log('result'+result);
                }
            });
        }
    }
}
~~~

### 秒杀API的URI设计

![image-20220422191033108](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130817059-1803098083.png)



![image-20220422224030299](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130818511-1562226215.png)

### springMVC

![image-20220422191442324](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130821537-29403891.png)



![image-20220422191634561](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130823548-2025389743.png)

![image-20220422221737797](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130827147-1652753450.png)

![image-20220422221933684](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130829845-1892293969.png)


#### springMVC整合spring

##### `spring-web.xml`

~~~xml
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:context="http://www.springframework.org/schema/context"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:mvc="http://www.springframework.org/schema/mvc"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
       http://www.springframework.org/schema/beans/spring-beans.xsd
        http://www.springframework.org/schema/context
        http://www.springframework.org/schema/context/spring-context.xsd
        http://www.springframework.org/schema/mvc
        http://www.springframework.org/schema/mvc/spring-mvc.xsd">
<!--    配置springMVC-->
<!--    开启springMVC注解模式-->
<!--    简化配置:
        (1)自动注册DefaultAnnotationHandlerMapping,AnnotationMethodHandlerAdapter
        (2)提供一系列功能: 数据绑定,数组和日期的format, @NumberFormat, @DateTimeFormatter, xml, json默认读写支持
-->
    <mvc:annotation-driven/>
<!--    servlet-mapping 映射路径: "/"-->
<!--    静态资源默认servlet配置
        1. 加入对静态资源的处理: js,gif,png
        2. 允许使用"/"做整体映射
-->
    <mvc:default-servlet-handler/>
<!--配置jsp 显示ViewResolver-->
    <bean class="org.springframework.web.servlet.view.InternalResourceViewResolver">
        <property name="viewClass" value="org.springframework.web.servlet.view.JstlView"/>
        <property name="prefix" value="/WEB-INF/jsp/"/>
        <property name="suffix" value=".jsp"/>
    </bean>

    <!--        扫描web相关的bean-->
    <context:component-scan base-package="org.seckill.web"/>
</beans>
~~~

##### `web.xml`

~~~xml
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_3_1.xsd"
         version="3.1">
<!--  修改servlet版本为3.1-->
<!--    配置DispatcherServlet-->
    <servlet>
        <servlet-name>seckill-dispatcher</servlet-name>
        <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
<!--        配置springMVC需要加载的配置文件
            spring-dao.xml,spring-service.xml,spring-web.xml
            Mybatis->spring->springMVC
-->
        <init-param>
            <param-name>contextConfigLocation</param-name>
            <param-value>classpath:spring/spring-*.xml</param-value>
        </init-param>
    </servlet>
    <servlet-mapping>
        <servlet-name>seckill-dispatcher</servlet-name>
<!--        默认匹配所有的请求-->
        <url-pattern>/</url-pattern>
    </servlet-mapping>
</web-app>

~~~

#### 实现Restful接口

![image-20220423005607926](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130830705-1311056678.png)

~~~java
package org.seckill.web;

import org.seckill.dto.Exposer;
import org.seckill.dto.SeckillExecution;
import org.seckill.dto.SeckillResult;
import org.seckill.entity.Seckill;
import org.seckill.enums.SeckillStatEnum;
import org.seckill.exception.RepeatKillException;
import org.seckill.exception.SeckillCloseException;
import org.seckill.exception.SeckillException;
import org.seckill.service.SeckillService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

/**
 * @author admin
 */
@Controller
@RequestMapping("/seckill")//url:/模块/资源/{id}/细分/seckill/list
public class SeckillController {
    private final Logger logger= LoggerFactory.getLogger(this.getClass());

    private SeckillService seckillService;

    @Autowired
    public void setSeckillService(SeckillService seckillService) {
        this.seckillService = seckillService;
    }

    @RequestMapping(value = "/list" ,method = RequestMethod.GET)
    public String list(Model model){
        //获取列表页
        List<Seckill> seckillList = seckillService.getSeckillList();
        model.addAttribute("list", seckillList);
        return "list";
    }

    @RequestMapping(value = "/{seckillId}/detail",method = RequestMethod.GET)
    public String detail(@PathVariable("seckillId") Long seckillId, Model model){
        if (seckillId==null){
            return "redirect:/seckill/list";
        }
        Seckill seckill = seckillService.getById(seckillId);
        if (seckill==null){
            return "forward:/seckill/list";
        }
        model.addAttribute("seckill",seckill);
        return "detail";
    }

    /**
     *ajax,json
     * @param seckillId
     */
    @RequestMapping(value = "/{seckillId}/exposer",
            method = RequestMethod.POST,
            produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public SeckillResult<Exposer> exposer(Long seckillId){
        SeckillResult<Exposer>result;
        try {
            Exposer exposer = seckillService.exportSeckillUrl(seckillId);
            result=new SeckillResult<Exposer>(true,exposer);
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            result=new SeckillResult<Exposer>(false,e.getMessage());
        }
        return result;
    }

    @RequestMapping(value = "/{seckillId}/{md5}/execution",
            method = RequestMethod.POST,
            produces = {"application/json;charset=UTF-8"}
    )
    @ResponseBody
    public SeckillResult<SeckillExecution> execute(@PathVariable("seckillId") Long seckillId,@PathVariable("md5") String md5,@CookieValue(value = "killPhone",required = false) Long phone){
        if (phone==null){
            return  new SeckillResult<SeckillExecution>(false,"未注册");
        }
        SeckillResult<SeckillExecution>result;
        try {
            SeckillExecution execution = seckillService.executeSeckill(seckillId,phone,md5);
            return  new SeckillResult<SeckillExecution>(true,execution);
        }catch (RepeatKillException e){
            SeckillExecution execution=new SeckillExecution(seckillId, SeckillStatEnum.REPEAT_KILL);
            return  new SeckillResult<SeckillExecution>(false,execution);
        }catch (SeckillCloseException e){
            SeckillExecution execution=new SeckillExecution(seckillId, SeckillStatEnum.END);
            return  new SeckillResult<SeckillExecution>(false,execution);
        }
        catch (Exception e) {
            logger.error(e.getMessage(),e);
            //TODO
            SeckillExecution execution=new SeckillExecution(seckillId, SeckillStatEnum.INNER_ERROR);
            return  new SeckillResult<SeckillExecution>(false,execution);
        }
    }

    @RequestMapping(value = "/time/now",method = RequestMethod.GET)
    public SeckillResult<Long> time(){
        Date now=new Date();
        return new SeckillResult(true,now.getTime());
    }
}
~~~

## 高并发

### 优化分析

红色代表可能高并发的地方，绿色代表没有影响

![image-20220423073510436](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130831923-1455414740.png)

### 问题

1. 为什么要单独获取系统时间

   ![image-20220423073910045](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130833158-33944642.png)

2. 获取系统时间不用优化

   ![image-20220423074108908](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130834210-1757340468.png)

3. 秒杀地址接口分析

   ![image-20220423074224322](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130835591-1460263035.png)

4. 秒杀地址接优化

   ![image-20220423074304195](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130836444-622146131.png)

5. 秒杀操作优化分析

   ![image-20220423074400224](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130837638-449827075.png)

6. 其他方案分析

   - 方案一：

     ![image-20220423074608430](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130839467-1892063890.png)

   - 成本：

     ![image-20220423074657794](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130840900-528446292.png)

   - 

7. 为什么不用MySQL解决

   ![image-20220423074918026](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130843330-1495734838.png)

   ![image-20220423075220052](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130844115-1221009342.png)

   - 优化分析：

     ![image-20220423075357765](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130845497-536127530.png)

     ![image-20220423075428761](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130850248-572798307.png)

     

   ![image-20220423075617857](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130852565-405898489.png)

   ![image-20220423075827985](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130853812-981066665.png)

### CDN

![image-20220423074015117](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130855541-1543212637.png)

### 优化总结

![image-20220423080034439](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130857093-886522508.png)

### Redis优化

#### 依赖项

![image-20220423104921281](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130857681-2137996970.png)

#### 实现类

~~~java
package org.seckill.dao.cache;

import io.protostuff.LinkedBuffer;
import io.protostuff.ProtostuffIOUtil;
import io.protostuff.runtime.RuntimeSchema;
import org.seckill.entity.Seckill;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

/**
 * @author admin
 */
public class RedisDao {
    private final JedisPool jedisPool;
    private final Logger logger= LoggerFactory.getLogger(this.getClass());

    public RedisDao(String ip,int port){
        jedisPool=new JedisPool(ip,port);
    }

    private RuntimeSchema<Seckill> schema=RuntimeSchema.createFrom(Seckill.class);

    public Seckill getSeckill(long seckillId){
        //Redis操作逻辑
        try {
            Jedis jedis=jedisPool.getResource();
            try {
                String key="seckill: "+seckillId;
                //并没有实现内部序列化操作
                //get->byte[]->反序列化->Object(Seckill)
                //采用自定义序列化
                //protostuff:pojo
                byte[] bytes = jedis.get(key.getBytes());
                //缓存重获取到
                if (bytes!=null){
                    //空对象
                    Seckill seckill=schema.newMessage();
                    ProtostuffIOUtil.mergeFrom(bytes,seckill,schema);
                    //seckill被反序列
                    return seckill;
                }
            } finally {
                jedis.close();
            }
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
        }
        return null;
    }

    public String putSeckill(Seckill seckill){
        //set Object(Seckill)->序列化->byte[]
        try {
            Jedis jedis=jedisPool.getResource();
            try {
                String key="seckill: "+seckill.getSeckillId();
                byte[] bytes = ProtostuffIOUtil.toByteArray(seckill, schema, LinkedBuffer.allocate(LinkedBuffer.DEFAULT_BUFFER_SIZE));
                //超时缓存
                int timeout=60*60;  //一小时
                String result = jedis.setex(key.getBytes(), timeout, bytes);
                return result;
            } finally {
                jedis.close();
            }
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
        }
        return null;
    }
}
~~~

#### 改进后的impl

~~~java
package org.seckill.service.impl;

import org.seckill.dao.SeckillDao;
import org.seckill.dao.SuccessKillDao;
import org.seckill.dao.cache.RedisDao;
import org.seckill.dto.Exposer;
import org.seckill.dto.SeckillExecution;
import org.seckill.entity.Seckill;
import org.seckill.entity.SuccessKilled;
import org.seckill.enums.SeckillStatEnum;
import org.seckill.exception.RepeatKillException;
import org.seckill.exception.SeckillCloseException;
import org.seckill.exception.SeckillException;
import org.seckill.service.SeckillService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.DigestUtils;

import java.util.Date;
import java.util.List;

/**
 * @author admin
 */
@Service
public class SeckillServiceImpl implements SeckillService {
    private Logger logger= LoggerFactory.getLogger(this.getClass());

    private RedisDao redisDao;

    @Autowired
    public void setRedisDao(RedisDao redisDao) {
        this.redisDao = redisDao;
    }

    //注入service依赖
    @Autowired
    public void setSeckillDao(SeckillDao seckillDao) {
        this.seckillDao = seckillDao;
    }

    //注入service依赖
    @Autowired
    public void setSuccessKillDao(SuccessKillDao successKillDao) {
        this.successKillDao = successKillDao;
    }


    private SeckillDao seckillDao;

    private SuccessKillDao successKillDao;

    //md5盐值字符串,用于混淆md5
    private final String slat="saadadsndwhhewkadniwndalkdamwsad#@$%TR$^@!~";

    @Override
    public List<Seckill> getSeckillList() {
        return seckillDao.queryAll(0,4);
    }

    @Override
    public Seckill getById(long seckillId) {
        return seckillDao.queryById(seckillId);
    }

    @Override
    public Exposer exportSeckillUrl(long seckillId) {
        //优化点:缓存优化;超时的基础上维护一致性
        /**
         * if null
         *    get db
         * else
         *  put cache
         *locgoin
         */
        //1. 访问redis
        Seckill seckill=redisDao.getSeckill(seckillId);

        if (seckill==null){
            //2.访问数据库
            seckill=seckillDao.queryById(seckillId);
            if (seckill==null){
                return new Exposer(false,seckillId);
            }else{
                //3. 放入redis
                redisDao.putSeckill(seckill);
            }
        }
        Date startTime=seckill.getStartTime();
        Date endTime = seckill.getEndTime();
        //系统当前时间
        Date nowTime=new Date();

        if (nowTime.getTime()<startTime.getTime() || nowTime.getTime()>endTime.getTime()){
            return new Exposer(false,seckillId,nowTime.getTime(),startTime.getTime(),endTime.getTime());
        }
        //转化特定字符串的过程,不可逆
        String md5=getMd5(seckillId);
        return new Exposer(true,md5,seckillId);
    }

    @Override
    @Transactional
    /**
     * 使用注解控制事务方法的优点:
     * 1. 开发团队达成一致约定,明确标注事务方法的编程风格
     * 2. 保证事务方法的执行时间尽可能短, 不要穿插其他网络操作RPC/HTTP请求或者剥离到事务方法外部
     * 3. 不是所有的方法都需要事务, 如只有一条修改操作, 只读操作不需要事务控制
     */
    public SeckillExecution executeSeckill(long seckillId, long userPhone, String md5) throws SeckillException, RepeatKillException, SeckillCloseException {
        if(md5==null || !md5.equals(getMd5(seckillId))){
            throw new SeckillException("seckill data rewrite");
        }

        //执行秒杀逻辑: 减库存+记录购买行为
        Date nowTime=new Date();

        try {
            //减库存
            int updateCount=seckillDao.reduceNumber(seckillId,nowTime);
            if(updateCount<=0){
                //没有更新到记录, 秒杀结束
                throw new SeckillCloseException("seckill is close");
            }else{
                //记录购买行为
                int insertCount=successKillDao.insertSuccessKilled(seckillId,userPhone);
                //唯一:seckillId,userPhone
                if (insertCount<=0){
                    //重复秒杀
                    throw new RepeatKillException("seckill repeated");
                }else {
                    SuccessKilled successKilled = successKillDao.queryByIdWithSecKill(seckillId, userPhone);
                    return new SeckillExecution(seckillId, SeckillStatEnum.SUCCESS,successKilled);
                }

            }
        }catch (SeckillCloseException e1){
            throw e1;
        }catch (RepeatKillException e2){
            throw e2;
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            //所有编译期异常 转化为运行期异常
            throw new SeckillException("seckill inner error"+e.getMessage());
        }
    }

    private String getMd5(long seckillId){
        String base=seckillId+"/"+slat;
        String md5= DigestUtils.md5DigestAsHex(base.getBytes());
        return md5;
    }
}
~~~

#### spring配置文件

![image-20220423105130255](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130857946-1876095490.png)

### 秒杀操作-并发优化

#### 原操作

![image-20220423105748467](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130858936-712092570.png)

#### 简单优化

![image-20220423105824617](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130900554-2037186152.png)

##### 代码

~~~java
    @Override
    @Transactional
    /**
     * 使用注解控制事务方法的优点:
     * 1. 开发团队达成一致约定,明确标注事务方法的编程风格
     * 2. 保证事务方法的执行时间尽可能短, 不要穿插其他网络操作RPC/HTTP请求或者剥离到事务方法外部
     * 3. 不是所有的方法都需要事务, 如只有一条修改操作, 只读操作不需要事务控制
     */
    public SeckillExecution executeSeckill(long seckillId, long userPhone, String md5) throws SeckillException, RepeatKillException, SeckillCloseException {
        if(md5==null || !md5.equals(getMd5(seckillId))){
            throw new SeckillException("seckill data rewrite");
        }

        //执行秒杀逻辑: 减库存+记录购买行为
        Date nowTime=new Date();

        try {
            //记录购买行为
            int insertCount=successKillDao.insertSuccessKilled(seckillId,userPhone);
            //唯一:seckillId,userPhone
            if (insertCount<=0){
                //重复秒杀
                throw new RepeatKillException("seckill repeated");
            }else {
                //减库存,热点商品竞争
                int updateCount=seckillDao.reduceNumber(seckillId,nowTime);
                if(updateCount<=0){
                    //没有更新到记录, 秒杀结束,rollback
                    throw new SeckillCloseException("seckill is close");
                }else{
                    //秒杀成功, commit
                    SuccessKilled successKilled = successKillDao.queryByIdWithSecKill(seckillId, userPhone);
                    return new SeckillExecution(seckillId, SeckillStatEnum.SUCCESS,successKilled);
                }
            }


        }catch (SeckillCloseException e1){
            throw e1;
        }catch (RepeatKillException e2){
            throw e2;
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            //所有编译期异常 转化为运行期异常
            throw new SeckillException("seckill inner error"+e.getMessage());
        }
    }
~~~

#### 深度优化

事务在MySQL端执行（存储过程）

~~~mysql
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
~~~

#### 调用存储过程

![image-20220423124002747](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130900917-546925967.png)

![image-20220423124029083](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130902960-526879873.png)

![image-20220423124154345](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130903851-1642791913.png)

### 大型系统架构部署

![image-20220423125232058](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130904469-219610401.png)

![image-20220423125507488](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130906919-310972882.png)

![image-20220423125550206](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130907912-1018086909.png)

### 课程总结

#### 数据层

![image-20220423125703643](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130909407-130169997.png)

#### 业务层

![image-20220423125748545](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130910625-17117697.png)

#### Web技术

![image-20220423125835922](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130912261-1396341037.png)

#### 并发优化

![image-20220423125935652](https://img2022.cnblogs.com/blog/2648201/202204/2648201-20220423130913406-1944876664.png)

