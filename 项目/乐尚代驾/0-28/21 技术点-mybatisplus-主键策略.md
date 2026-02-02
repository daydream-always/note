# 21 技术点-mybatisplus-主键策略

2025年 12月 08日 星期一 15:52:20 CST



## 插入操作时的主键策略

第一个策略：ASSIGN_ID

生成唯一的值，包含数字，表对应字段类型bigint或者varchar类型，实体类属性类型Long或Sring

第二个策略：ASSIGN_UUID

生成唯一的值，包含数字和字母，表对应字段类型varchar类型，实体类属性类型Sring

```Java
id varchar(100) NOT NULL COMMENT '主键ID',

@TableId(type = IdType.ASSIGN_UUID)
private String id;
```

第三个策略：AUTO

主键自动增长效果，表字段auto_increment

```java
//增加自增属性前提条件：表中不能有数据，或者id字段的值都是唯一的
ALTER TABLE user MODIFY id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID';
ALTER TABLE user CHANGE id id BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID';
ALTER TABLE user AUTO_INCREMENT = 1;//重新设置自增起始值

@TableId(type = IdType.AUTO)
private Long id;
```

```java
==>  Preparing: INSERT INTO user ( name, age, email ) VALUES ( ?, ?, ? )
==> Parameters: 南方不败(String), 30(Integer), dfbb@atguigu.com(String)
<==    Updates: 1

User(id=1997662992099971075, name=南方不败, age=30, email=dfbb@atguigu.com, deleted=null)
```

第四个策略：INPUT

需要手动设置id值



执行插入操作时 user 对象的 id 分配机制

根据 User 类中 @TableId(type = IdType.AUTO) 的配置，id 字段采用数据库自增策略

执行 userMapper.insert(user) 时，MyBatis-Plus 会将不含 id 值的对象插入数据库

数据库根据自增规则生成新的 id 值

MyBatis-Plus 将数据库生成的 id 值回写到 user 对象中

插入完成后，原先 id 为 null 的 user 对象会被自动填充上数据库生成的自增主键值

因此，id 是由数据库自动生成并由 MyBatis-Plus 框架自动回填到 user 对象中的



我们返回给前端的数据是从数据库查到的并映射到实体类对象上的，即实体类对象的一个个属性



2025年 12月 08日 星期一 16:53:12 CST