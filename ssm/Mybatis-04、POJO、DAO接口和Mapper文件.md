# Mybatis-04、POJO、DAO接口和Mapper文件

2025年 12月 10日 星期三 21:43:55 CST

2025年 12月 10日 星期三 22:30:12 CST



pojo数据类型，使用包装类，因为可以赋null值，方便进行异常处理

- 定义pojo

```Java
//实体类
public class BookInfo {

    private Integer id;

    private String name;

    private String author;

    private String bookdesc;

    private Double price;

    public Integer getId() {
        return id;
    }

    public BookInfo() {
    }

    public BookInfo(Integer id, String name, String author, String bookdesc, Double price) {
        this.id = id;
        this.name = name;
        this.author = author;
        this.bookdesc = bookdesc;
        this.price = price;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getBookdesc() {
        return bookdesc;
    }

    public void setBookdesc(String bookdesc) {
        this.bookdesc = bookdesc;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }
}
```

- 定义接口

```Java
//dao层接口
public interface IBook {
    public List<BookInfo> getBooks() throws Exception;
}
```

- 定义映射文件

```xml
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper
  PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
  "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="com.atguigu.dao.IBook">
  <select id="getBooks" resultType="com.atguigu.pojo.BookInfo">
    select * from bookinfo
  </select>
</mapper>
```

- 小配置修改为映射文件的url路径

```xml
    <mappers>
        <mapper resource="com/atguigu/mapper/IBook.xml"/>
    </mappers>
```



思维逻辑链路畅通，语言表达逻辑链路畅通

每一行数据映射到每一个实体对象，每一个字段都映射到每一个Java 属性

select * from bookinfo本质上查出来的是行，对应着Java实体对象

namespace="com.atguigu.dao.IBook" 指定了这个映射文件对应的 DAO 接口。

id="getBooks"，id是唯一标识，方法名唯一标识了接口的某个方法（要调用哪个方法）

resultType="com.atguigu.pojo.BookInfo"，结果映射到对应实体类（结果要映射到哪里）



mapper/IBook.xml映射文件

mapper/IBook.xml，是一个映射文件，这个文件能够将数据库查询到的数据映射到对应实

体类上，即将查询结果通过反射机制自动映射成 BookInfo 对象列表。



这段代码背后对应的请求流程是怎么样的，从pojo、dao、mapper层去分析

BookInfo 是一个简单的 Java 类，用于封装数据库表 bookinfo 中的数据。

IBook 是一个接口，定义了数据访问的方法（例如 getBooks()）。这个接口的具体实现由 

MyBatis 动态代理生成，开发者无需编写实际的实现类。

接口中的方法对应于 XML 文件中 ，该 XML 文件是 MyBatis 的核心配置之一，它将 SQL 查

询语句与 DAO 接口方法关联起来。

开发者在服务层调用 IBook.getBooks() 方法发起请求。

MyBatis 根据 IBook.xml 配置找到匹配的 SQL 语句，并执行以下操作：执行 <select> 标签内的 SQL 查询：select * from bookinfo，将查询结果通过反射机制自动映射成 BookInfo 对象列表。

最终查询结果会被封装成 List<BookInfo> 并返回给调用方。

总结来说，这是一个典型的基于 MyBatis 的数据查询流程，利用 XML 配置将接口方法绑定

到具体的 SQL 实现上，实现了松耦合和易于维护的设计目标。





反射机制，简要介绍一下反射机制是什么，有什么作用

反射（Reflection）是Java语言的一个重要特性，它允许程序在运行时动态地获取类的信息

并操作类或对象的内部属性和方法。

在运行时获取类的属性、方法、构造函数等信息。可以操作任意对象，即使在编译时不知道

具体类型。

通过 Class.forName() 动态加载类，使用 newInstance() 或构造函数创建对象实例

获取 Method 对象并调用相应方法，可以访问私有方法（通过 setAccessible(true)）

获取 Field 对象来读取或设置字段值，包括私有字段的访问。

在你提供的 IBook.xml 配置中，MyBatis正是利用反射机制来实现对象关系映射：

当执行 `<select id="getBooks" resultType="com.atguigu.pojo.BookInfo">` 

查询时，MyBatis通过反射获取 BookInfo 类的结构信息

自动将数据库查询结果映射到 BookInfo 对象的对应属性上

无需开发者手动编写映射代码，提高了开发效率

种机制使得MyBatis能够灵活处理各种不同的POJO类，而不需要针对每个类编写特定的映射

代码。





松耦合是什么意思，有什么作用

松耦合（Loose Coupling）是指软件系统中各个组件之间的依赖关系较弱，组件之间相对独

立，相互影响较小的设计原则。

提高可维护性，组件间依赖减少，修改一个组件不会对其他组件造成较大影响，便于定位和修复问题

增强可扩展性，可以独立地添加或替换组件，支持系统的功能扩展和升级

提升可测试性，组件可以独立进行单元测试

改善代码复用性，独立的组件更容易在不同项目中复用

在当前MyBatis代码中的体现

DAO接口与实现分离：IBook 接口定义了数据访问方法，但不包含具体实现

SQL映射与业务逻辑分离：SQL语句写在XML配置文件中，与Java业务代码解耦

对象映射自动化：通过 resultType 属性，MyBatis自动完成 BookInfo 对象与数据库记录的映射，无需手动编码

