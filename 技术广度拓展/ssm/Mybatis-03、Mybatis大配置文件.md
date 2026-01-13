# Mybatis-03、Mybatis大配置文件

https://mybatis.net.cn/

XML 配置文件中包含了对 MyBatis 系统的核心设置，

包括获取数据库连接实例的数据源（DataSource）

以及决定事务作用域和控制方式的事务管理器（TransactionManager）。

后面会再探讨 XML 配置文件的详细内容，这里先给出一个简单的示例：   

```xml
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE configuration
  PUBLIC "-//mybatis.org//DTD Config 3.0//EN"
  "http://mybatis.org/dtd/mybatis-3-config.dtd">
<configuration>
  <environments default="development"><!--开发环境-->
    <environment id="development">
      <transactionManager type="JDBC"/><!--事务管理器-->
      <dataSource type="POOLED">
        <property name="driver" value="com.mysql.cj.jdbc.Driver"/>
        <property name="url" value="jdbc:mysql: //localhost:3306/book"/>
        <property name="username" value="root"/>
        <property name="password" value="root"/>
      </dataSource>
    </environment>
  </environments>
  <mappers>
    <mapper resource="org/mybatis/example/BlogMapper.xml"/>
  </mappers>
</configuration>
```

   

