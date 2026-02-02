# 19 技术点-mybatisplus-curd操作2

## 物理删除

数据不易恢复

## 逻辑删除

表添加逻辑删除标志位字段

在对应实体类添加逻辑删除标志属性，在属性上面添加注解v

在配置文件指定逻辑删除规则，mp默认0没有删除，1删除

细节问题：查询时候，只会查询到没有删除的数据（mp封装）

```sql
==>  Preparing: UPDATE user SET deleted=1 WHERE id=? AND deleted=0
==> Parameters: 2(Long)
<==    Updates: 1
```

重新查询

```sql
==>  Preparing: SELECT id,name,age,email,deleted FROM user WHERE deleted=0
==> Parameters: 
<==    Columns: id, name, age, email, deleted
<==        Row: 3, Tom, 28, test3@baomidou.com, 0
<==        Row: 4, Sandy, 21, test4@baomidou.com, 0
<==        Row: 5, Billie, 24, test5@baomidou.com, 0
<==        Row: 1997662992099971073, 东方不败, 30, dfbb@atguigu.com, 0
<==      Total: 4
```

