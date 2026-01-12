# Mybatis-04、POJO、DAO接口和Mapper文件

2025年 12月 10日 星期三 21:43:55 CST



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

```

```











