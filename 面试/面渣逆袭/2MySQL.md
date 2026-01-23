## [MySQL 基础](https://javabetter.cn/sidebar/sanfene/mysql.html#mysql-基础)

### [0.🌟什么是 MySQL？](https://javabetter.cn/sidebar/sanfene/mysql.html#_0-🌟什么是-mysql)

MySQL 是一个开源的关系型数据库，现在隶属于 Oracle 公司。是我们国内使用频率最高的一种数据库，我在本地安装的是最新的 8.3 版本。

#### [怎么删除/创建一张表？](https://javabetter.cn/sidebar/sanfene/mysql.html#怎么删除-创建一张表)

可以使用 `DROP TABLE` 来删除表，使用 `CREATE TABLE` 来创建表。

创建表的时候，可以通过 `PRIMARY KEY` 设定主键。

#### [请写一个升序/降序的 SQL 语句？](https://javabetter.cn/sidebar/sanfene/mysql.html#请写一个升序-降序的-sql-语句)

在 SQL 中，可以使用 `ORDER BY` 子句来对查询结果进行升序或者降序。默认情况下，查询结果是升序的，如果需要降序，可以通过 `DESC` 关键字来实现。

比如说在员工表中，我们要按工资降序，就可以使用 `ORDER BY salary DESC` 来完成：

```
SELECT id, name, salary
FROM employees
ORDER BY salary DESC;
```

如果需对多个字段进行排序，例如按工资降序，按名字升序，就可以 `ORDER BY salary DESC, name ASC` 来完成：

```
SELECT id, name, salary
FROM employees
ORDER BY salary DESC, name ASC;
```

#### [MySQL出现性能差的原因有哪些？](https://javabetter.cn/sidebar/sanfene/mysql.html#mysql出现性能差的原因有哪些)

可能是 SQL 查询使用了全表扫描，也可能是查询语句过于复杂，如多表 JOIN 或嵌套子查询。

也有可能是单表数据量过大。

通常情况下，添加索引就能解决大部分性能问题。对于一些热点数据，还可以通过增加 Redis 缓存，来减轻数据库的访问压力。

**总结：1、MySQL性能差可能是查询语句过于复杂，也有可能是单表数据量过大。2、添加索引就能解决大部分性能问题。对于一些热点数据，还可以通过增加 Redis 缓存，来减轻数据库的访问压力。**

### [1.两张表怎么进行连接？](https://javabetter.cn/sidebar/sanfene/mysql.html#_1-两张表怎么进行连接)

可以通过内连接 `inner join`、外连接 `outer join`、交叉连接 `cross join` 来合并多个表的查询结果。

#### [什么是内连接？](https://javabetter.cn/sidebar/sanfene/mysql.html#什么是内连接)

内连接用于返回两个表中有匹配关系的行。假设有两张表，用户表和订单表，想查询有订单的用户，就可以使用内连接 `users INNER JOIN orders`，按照用户 ID 关联就行了。

只有那些在两个表中都存在 user_id 的记录才会出现在查询结果中。

#### [什么是外连接？](https://javabetter.cn/sidebar/sanfene/mysql.html#什么是外连接)

和内连接不同，外连接不仅返回两个表中匹配的行，还返回没有匹配的行，用 `null` 来填充。

外连接又分为左外连接 `left join` 和右外连接 `right join`。

left join 会保留左表中符合条件的所有记录，如果右表中有匹配的记录，就返回匹配的记录，否则就用 null 填充，常用于某表中有，但另外一张表中可能没有的数据的查询场景。

假设要查询所有用户及他们的订单，即使用户没有下单，就可以使用左连接：

右连接就是左连接的镜像，right join 会保留右表中符合条件的所有记录，如果左表中有匹配的记录，就返回匹配的记录，否则就用 null 填充。

#### [什么是交叉连接？](https://javabetter.cn/sidebar/sanfene/mysql.html#什么是交叉连接)

交叉连接会返回两张表的笛卡尔积，也就是将左表的每一行与右表的每一行进行组合，返回的行数是两张表行数的乘积。

假设有 A 表和 B 表，A 表有 2 行数据，B 表有 3 行数据，那么交叉连接的结果就是 2 ✖️ 3 = 6 行。

### [2.内连接、左连接、右连接有什么区别？](https://javabetter.cn/sidebar/sanfene/mysql.html#_2-内连接、左连接、右连接有什么区别)

MySQL 的连接主要分为内连接和外连接，外连接又可以分为左连接和右连接。

内连接可以用来找出两个表中共同的记录，相当于两个数据集的交集。

左连接和右连接可以用来找出两个表中不同的记录，相当于两个数据集的并集。两者的区别是，左连接会保留左表中符合条件的所有记录，右连接则刚好相反。