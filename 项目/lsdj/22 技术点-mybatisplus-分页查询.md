# 22 技术点-mybatisplus-分页查询

2025年 12月 08日 星期一 16:55:29 CST

mp自带分页插件，只需要简单配置，方便实现分页查询操作

创建配置类，配置分页插件

```java
@Configuration
public class MpConfig {

    //配置分页插件
    /**
     * 分页插件
     */
    @Bean
    public MybatisPlusInterceptor optimisticLockerInnerInterceptor(){
        MybatisPlusInterceptor interceptor = new MybatisPlusInterceptor();
        //向Mybatis过滤器链中添加分页拦截器
        interceptor.addInnerInterceptor(new PaginationInnerInterceptor(DbType.MYSQL));
        return interceptor;
    }

}
```

被 @Configuration 标记的类会被 Spring 容器自动扫描并加载，其中定义的 @Bean 方法会

被执行

**@Bean到底是什么，通俗概括其本质**

用于向 Spring 容器注册和创建对象实例

对象创建: 被 @Bean 标记的方法会创建并返回一个对象实例

容器管理: 返回的对象会被 Spring 容器接管，成为 Spring 管理的 Bean

生命周期控制: Spring 负责该 Bean 的初始化、依赖注入和销毁等生命周期管理



方法名 optimisticLockerInnerInterceptor: 定义 Bean 的名称，虽然方法名暗示乐观锁，但实际配置的是分页功能

MybatisPlusInterceptor: MyBatis-Plus 的核心拦截器，用于注册各种插件功能

PaginationInnerInterceptor: 分页拦截器，用于实现数据库分页查询功能



SQL拦截: 分页拦截器会拦截 MyBatis 执行的 SQL 语句

SQL改写: 分页插件会自动改写 SQL 语句，如拦截 SELECT 语句，获取 Page 对象中的分页

信息（当前页、每页大小），添加 LIMIT 、OFFSET子句实现分页





调用mapper里面方法进行分页查询

```Java
//分页查询
@Test
public void selectPage() {
    //创建page对象，传递分页参数：当前页和每页显示记录数
    Page<User> page = new Page<>(1,3);
    
    //调用mapper里面方法实现分页查询，返回Page对象，Page对象里面包含分页之后所有数据
    IPage<User> pageModel = userMapper.selectPage(page, null);
    List<User> list = pageModel.getRecords();
    list.forEach(user->{
        System.out.println(user.getName()+"::"+user.getAge());
    });
    long total = pageModel.getTotal();
    System.out.println(total);
}
```

```sql
Page<User> page = new Page<>(1,3);
==>  Preparing: SELECT id,name,age,email,deleted FROM user WHERE deleted=0 LIMIT ?
limit 0,3(limit 3)
==> Parameters: 3(Long)
Page<User> page = new Page<>(2,3);
==>  Preparing: SELECT id,name,age,email,deleted FROM user WHERE deleted=0 LIMIT ?,?
==> Parameters: 3(Long), 3(Long)
limit 3,3
Page<User> page = new Page<>(2,4);
==>  Preparing: SELECT id,name,age,email,deleted FROM user WHERE deleted=0 LIMIT ?,?
==> Parameters: 4(Long), 4(Long)
limit 4,4
#从第几条开始，显示多少条
```

Page<User> page = new Page<>(1,3);

IPage<User>

userMapper.selectPage(page, null);

pageModel.getRecords();，当前页记录数

pageModel.getTotal();，总共记录数



接口实现类

page实现类实现了Ipage接口，所以page返回值可以用Ipage接收



2025年 12月 08日 星期一 17:33:43 CST

2025年 12月 08日 星期一 17:48:51 CST