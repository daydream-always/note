# 20 技术点-mybatisplus-curd操作3

2025年 12月 08日 星期一 15:32:24 CST

## 条件查询

```Java
//6 条件查询
//select * from user where name=? and age=?
@Test
public void select1() {
    //封装条件对象
    LambdaQueryWrapper<User> wrapper = new LambdaQueryWrapper<>();
    wrapper.eq(User::getName,"Tom");
    wrapper.eq(User::getAge,28);
    //调用方法
    List<User> list = userMapper.selectList(wrapper);
    list.forEach(user->{
        System.out.println(user.getName()+":"+user.getAge());
    });
}

//select * from user where age>=28
@Test
public void select2() {
    LambdaQueryWrapper<User> wrapper = new LambdaQueryWrapper<>();
    wrapper.ge(User::getAge,28);
    //调用方法
    List<User> list = userMapper.selectList(wrapper);
    list.forEach(user->{
        System.out.println(user.getName()+":"+user.getAge());
    });
}

//select * from user name like ?
@Test
public void select3() {
    LambdaQueryWrapper<User> wrapper = new LambdaQueryWrapper<>();
    wrapper.like(User::getName,"m");
    //调用方法
    List<User> list = userMapper.selectList(wrapper);
    list.forEach(user->{
        System.out.println(user.getName()+":"+user.getAge());
    });
```

```
==>  Preparing: SELECT id,name,age,email,deleted FROM user WHERE deleted=0 AND (name = ? AND age = ?)
==> Parameters: Tom(String), 28(Integer)
<==    Columns: id, name, age, email, deleted
<==        Row: 3, Tom, 28, test3@baomidou.com, 0
<==      Total: 1

==>  Preparing: SELECT id,name,age,email,deleted FROM user WHERE deleted=0 AND (age >= ?)
==> Parameters: 28(Integer)
<==    Columns: id, name, age, email, deleted
<==        Row: 3, Tom, 28, test3@baomidou.com, 0
<==        Row: 1997662992099971073, 东方不败, 30, dfbb@atguigu.com, 0
<==      Total: 2

==>  Preparing: SELECT id,name,age,email,deleted FROM user WHERE deleted=0 AND (name LIKE ?)
==> Parameters: %m%(String)
<==    Columns: id, name, age, email, deleted
<==        Row: 3, Tom, 28, test3@baomidou.com, 0
<==      Total: 1
```

LambdaQueryWrapper<User>

wrapper.eq(User::getName,"Tom");

wrapper.ge(User::getAge,28);

wrapper.like(User::getName,"m");

List<User>

list.forEach(user->{});



2025年 12月 08日 星期一 15:50:42 CST