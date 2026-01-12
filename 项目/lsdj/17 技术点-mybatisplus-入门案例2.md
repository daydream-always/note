# 17 技术点-mybatisplus-入门案例2

测试代码

```java
@SpringBootTest
public class MpDemo1 {
    
    //注入mapper
    @Autowired
    private UserMapper userMapper;

    //查询所有记录
    @Test
    public void findAll() {
        List<User> list = userMapper.selectList(null);
        list.forEach(user->{
            System.out.println(user.getName()+":"+user.getAge());
        });
    }
}
```

//注入mapper

@Autowired

private UserMapper userMapper;

userMapper，会报错，但可以忽略不影响运行，解决就是mapper接口加@Mapper注解





