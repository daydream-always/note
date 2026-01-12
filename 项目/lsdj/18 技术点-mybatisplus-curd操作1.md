# 18 技术点-mybatisplus-curd操作1

2025年 12月 07日 星期日 21:36:40 CST

```java
    //2 添加操作insert
    @Test
    public void addUser() {
        //创建对象，设置值
        User user = new User();
        user.setName("东方不败");
        user.setAge(30);
        user.setEmail("dfbb@atguigu.com");
        //调用方法
        int rows = userMapper.insert(user);
        System.out.println(rows);
        System.out.println(user);
    }

    //3 根据id查询
    @Test
    public void getUserById() {
        User user = userMapper.selectById(1L);
        System.out.println(user);
    }

    //4 修改操作
    @Test
    public void updateUser() {
        //根据id查询
        User user = userMapper.selectById(1L);

        //设置修改值
        user.setName("岳不群");
        user.setAge(50);

        //调用方法完成修改
        int rows = userMapper.updateById(user);
        System.out.println(rows);
    }
	
	//5 删除操作
    @Test
    public void deleteUser() {
        userMapper.deleteById(2L);
    }

```



System.out.println(user);
User(id=1997662992099971073, name=东方不败, age=30, email=dfbb@atguigu.com)

1997662992099971073：mp给我们生产的唯一的一个id，一种主键策略



修改操作

先根据id查出并拿到这个对象，再修改这个对象，再返回新对象

selectById

updateById

deleteById	



2025年 12月 07日 星期日 21:59:26 CST