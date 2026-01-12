# 16 技术点-mybatisplus-入门案例1

官方网站：http://baomidou.com

创建数据库和表

数据库mybatis_plus

表

```sql
CREATE TABLE user
(
    id BIGINT(20) NOT NULL COMMENT '主键ID',
    name VARCHAR(30) NULL DEFAULT NULL COMMENT '姓名',
    age INT(11) NULL DEFAULT NULL COMMENT '年龄',
    email VARCHAR(50) NULL DEFAULT NULL COMMENT '邮箱',
    PRIMARY KEY (id)
);

INSERT INTO user (id, name, age, email) VALUES
(1, 'Jone', 18, 'test1@baomidou.com'),
(2, 'Jack', 20, 'test2@baomidou.com'),
(3, 'Tom', 28, 'test3@baomidou.com'),
(4, 'Sandy', 21, 'test4@baomidou.com'),
(5, 'Billie', 24, 'test5@baomidou.com');
```

创建springBoot工程，引入mp相关依赖

```xml
<?xml version="1.0" encoding="UTF-8"?>


<!--instance实例-->
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
   
    
    <!-- 模型版本 -->
    <modelVersion>4.0.0</modelVersion>

    
    <!-- 公司或组织唯一标识，域名倒置 -->
    <groupId>com.atguigu</groupId>
    <!-- 项目唯一标识 -->
    <artifactId>mybatis_plus_demo</artifactId>
    <!-- 快照 -->
    <version>1.0-SNAPSHOT</version>

    
<!--
<parent> 标签在 Maven 的 pom.xml 文件中用于指定当前项目的父项目。
它的主要作用包括：
继承配置：子项目会继承父项目的配置，如 <groupId>、<artifactId>、<version> 等基本信息以及 <properties>、<dependencies> 等配置。
依赖管理：通过 <dependencyManagement> 统一管理依赖版本，避免子项目重复定义版本号。
插件管理：通过 <pluginManagement> 统一管理插件配置。
该 <parent> 标签表示当前项目继承自 Spring Boot 的官方 starter parent

<relativePath/>：表示从本地仓库或远程仓库查找父 POM，而不是相对路径。
这意味着该项目是一个基于 Spring Boot 3.0.5 版本的项目，并且可以利用 Spring Boot 提供的各种便利配置和默认设置。
-->
    <parent>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-parent</artifactId>
        <version>3.0.5</version>
        <relativePath/> <!-- lookup parent from repository -->
    </parent>

    
<!--
<maven.compiler.source>: 指定源代码的 Java 版本为 17，告诉 Maven 编译器使用 Java 17 的语法规范来编译源代码
<maven.compiler.target>: 指定编译后生成的字节码的目标 Java 版本为 17，确保编译出的 .class 文件能在 Java 17 虚拟机上运行
-->
    <properties>
        <maven.compiler.source>17</maven.compiler.source>
        <maven.compiler.target>17</maven.compiler.target>
    </properties>

    
    <dependencies>
<!--
这是 Spring Boot 的核心启动器依赖。
<groupId>: org.springframework.boot - 定义了依赖的组织ID
<artifactId>: spring-boot-starter - 定义了依赖的项目ID
未显式指定版本号，因为继承自 spring-boot-starter-parent 父项目，会自动使用父项目中定义的版本
提供自动配置、日志、YAML 配置文件支持等功能
-->
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter</artifactId>
        </dependency>

<!--
这个标签用于声明项目的测试依赖项，具体是 Spring Boot 的测试启动器。
scope: test - 依赖范围
测试框架集合: 包含了常用的测试框架和工具，如 JUnit、Mockito、Hamcrest 等
SpringBoot测试支持: 提供对 Spring Boot 应用的测试支持，包括 @SpringBootTest 等注解
-->
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-test</artifactId>
            <scope>test</scope>
        </dependency>

        <!--mybatis-plus-->
        <dependency>
            <groupId>com.baomidou</groupId>
            <artifactId>mybatis-plus-boot-starter</artifactId>
            <version>3.5.3.1</version>
        </dependency>

        <!--mysql-->
        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <version>8.0.30</version>
        </dependency>

<!--
未指定 version - 因为继承自 spring-boot-starter-parent 父项目，会使用父项目管理的版本
简化 Java 代码: Lombok 通过注解自动生成常见的样板代码，如 getter、setter、toString、equals 和 hashCode 方法
编译时处理: 在编译阶段自动生成相应的方法，不影响运行时性能
-->
        <!--lombok用来简化实体类-->
        <dependency>
            <groupId>org.projectlombok</groupId>
            <artifactId>lombok</artifactId>
        </dependency>
    </dependencies>

    
</project>
```

 创建springBoot应用配置文件，指定数据库路径

```properties
#mysql数据库连接
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.datasource.url=jdbc:mysql://localhost:3306/mybatis_plus?serverTimezone=GMT%2B8&useSSL=false
spring.datasource.username=root
spring.datasource.password=root
#mybatis日志
mybatis-plus.configuration.log-impl=org.apache.ibatis.logging.stdout.StdOutImpl
```

 创建springBoot启动类

```java
@SpringBootApplication
public class DemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class,args);
    }
}
```

创建实体类

```Java
@Data
//@TableName("user")
public class User {
    private Long id;
    private String name;
    private Integer age;
    private String email;
}
/**
//@TableName("user")，默认映射规则User->user，故可以省略不写
public class User {
//@TableField("name")，相同就不需要
private String name;
@TableField("username")，不相同就需要
private String name;

@TableField(exist =false)，实体类的新属性，表中不存在
private String others;
*/
```

创建mapper，继承BaseMapper

```Java
public interface UserMapper extends BaseMapper<User> {
}
```

添加mapperscan

```java
@SpringBootApplication
@MapperScan("com.atguigu.mapper")
public class DemoApplication {
    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class,args);
    }
}
/**
@Mapper 注解
这个注解扫描到mapper动态创建的对象，
统一管理映射器: 通过指定包路径 "com.atguigu.mapper"，Spring Boot 会自动扫描该包下所有的 Mapper 接口，并将其纳入 Spring 容器管理，机让 Spring Boot 自动扫描并注册这些接口为 Spring Bean
一个好处是简化了 Mapper 接口的配置，避免了在每个Mapper接口上重复添加注解。
*/
```





#mybatis日志

mybatis-plus.configuration.log-impl=org.apache.ibatis.logging.stdout.StdOutImpl



@Data：对数据的设置和获取

BaseMapper<User>

@SpringBootApplication

@MapperScan("com.atguigu.mapper")

SpringApplication.run(DemoApplication.class,args);



