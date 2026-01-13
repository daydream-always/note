# ssm

SSM框架

Spring框架

SpringMVC框架

Mybatis框架



Mybatis框架，它屏蔽了底层连接数据库的细节。我们没有主动的去创建连接，也没有去创建命令对象，甚至也没有读取数据的句柄（ResultSet），结果我们还是从DB数据库中获取到了所有图书的集合。Mybatis的工作机制是，通过解析mybatis-config.xml文件，获取到一个可以操作数据的入口，其实就是一个和数据库进行会话的组件（SqlSession），我们可以将sql指令交给他去执行。SQL又会带回一个结果集，结果集中的每一个对象的类型我们通过resultType设置。1、那么这样的话我们就可以拿到一个图书集合了。

Spring是一个针对Bean进行管理的一个框架，Spring相当于一个大的容器，管理着各种不同职能的Bean。

AOP：面向切面编程，终极目标就是为了实现方法增强。入库单和销售单，主业务进行的时候，我希望可以有分支业务（日志记录）对主业务代码进行增强，可以使用AOP技术。



Mybatis：持久层框架，数据从程序持久化到DB中

Spring框架：大的一个Bean管理容器，可以管理各种Bean。Controller。

SpringMVC：表示层框架，请求的派发的。一个字符串请求可以映射到一个后台的一个Controller，得益于前端控制器。







