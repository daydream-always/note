# Mybatis-05、接口实现类

2025年 12月 12日 星期五 21:31:53 CST

2025年 12月 12日 星期五 21:52:13 CST



```java
public class BookInfoDAOImpl implements IBook {

    @Override
    public List<BookInfo> getBooks() throws Exception {
        InputStream is= Resources.getResourceAsStream("mybatis-config.xml");
        //01、SqlSessionFactoryBuilder 工厂的构建器
        SqlSessionFactoryBuilder builder=new SqlSessionFactoryBuilder();
        //o2、构建SessionFactory工程
        SqlSessionFactory factory = builder.build(is);
        //03、通过工厂构建Session对象
        SqlSession sqlsession = factory.openSession();
        //o4、使用sqlSession的selectList（)进行执行sql
        List<BookInfo> list = sqlsession.selectList("getBooks");
        return list;
    }
}
```





