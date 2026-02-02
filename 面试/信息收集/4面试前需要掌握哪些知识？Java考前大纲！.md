# 面试前需要掌握哪些知识？Java考前大纲！

## 1.Java 基础

### 集合★★★★★

HashMap、ArrayList、inkedist、HashSet、ConcurrentHashMap

1.掌握ArrayList 和 LinkedList的源码，区别，使用场景

2.掌握HashSet 的底层实现，使用场景，优势

3.掌握HashMap，ConcurrentHashMap 的底层原理，区别，使用场景，Hash冲突解决方式等

### 字符串★★★★

String，StringBuilder, StringBuffer

Java的String底层是用什么实现的？可变还是不可变？（这个百度考过我）

String, StringBuilder, StringBuffer区别，使用场景

String 的 equals() 和 == 的区别, hashCode（）重写规则

常见字符串操作方法（如 split、substring、join），这个很多算法题会用到，想不起来g了。

### 泛型★★★★

1.概念。用途（类型安全、避免强制转换)

2.泛型擦除？（缩译期擦除为原生类型，运行时无泛型信息，解决方法)

3.泛型类、泛型接口、泛型方法的定义与使用

4.通配符 ?、?extends T、? super T 的区别与使用场景（概率低， 选择性学习)

5.泛型的限制（不能用于基本类型int，long等、不能实例化泛型数组等）（概率低，选择性学习）

### 面向对象★★★

封装、继承、多态。下面这些都挺重要的

1.面向对象三大特性的概念、实现方式

2.重写与重载的区别（参数列表、返回值、异常、访问修饰符）

3.抽象类与接口的区别

4.final关键字的用法（修饰类、方法、变量）

5.static关键字的用法（静态变量、静态方法、静态代码块、静态内部类）

6.值传递与引用传递的区别，Java是哪种？（举例说明）

### 异常★★（概率低，选择性学习）

Exception、Error、RuntimeException

1.异常体系结构（Throwable子类：Error、Exception及细分）

2.try-catch-finally的执行顺序，finally一定执行吗？（特殊情况）

3.throw与 throws 的区别

4.自定义异常的实现与使用场景

### 其他基础★★

1.基本数据类型与包装类的区别，自动装箱与拆箱（原理、空指针问题）

2.枚举Enum的定义、使用场景及底层实现

3.注解Annotation的概念、分类（内置注解、元注解）及自定义注解

4.Java版本新特性（11,17,21）了解



## 2.JUC 并发编程

### 并发基础★★★★★

1.进程与线程的区别，线程的状态及转换

2.并发的优房与问题（上下文切换、死锁、线程安全、资源竞争）

3.线程的创建方式（继承Thread、实现Runnable、Calable+Future、线程池）

4.Thread 类的核心方法 (start、run、sleep、wait、notify、join、yield 等)

5.线程的中断机测(intemuptl)、isintemupted()、intermupted()(概率低。选择性学习)

### 同步机制★★★★★全部是重点！！！

synchronized, volatle, Lck

synchronized 的底层实现(对象头、Monitor、偏向锁/轻量级锁/重量级锁升级)

synchronized 修饰方法、代确缺的区别，锁的对激是什么？

wolatile 的作用（可见性、禁止指令重排序)，不能保证原子性的原因

volatile 的底层实现 (内存屏障)

synchronized 与 volatile 的区别

Lock 接口及实现类（AeemtrantLock、ReentranReacWriteLock)的使用

synchronized 与 ReentrantiLock 的区别（公平锁、可中断、条件变量等）

Java 中的原子类(Atomiclnteger、AlomicReference 等) 及 CAS 原理, ABA问题

### 线程池★★★★★全部是重点！！！

ThreadPoolExoct、Exutors
1.线程池的核心参数(核心线程裁、最大线程数、空闲时间、工作队列等)

2.线程池的工作原理 (任务提交后的执行流程)

3.常见的线程池类型（FixcdThreadPool、CachodThreadPool、ScheduledThreadPaol 等）及问题

4.线程池的拒绝策略（AboriPolicy、CalerRunsPolicy 等）及使用场景

5.如何合理配置线程池参数? (CPU 密集型、IO 密集型区别)

### 并发工具类★★★

CountDownLatch、CyclicBarrier、Semephore 的原理与使用场景（这个有可能让手撕）

ConcumentHashMap的底层实现（JDK7分段锁，JDK8数组+链表+红黑树+Synchronized)

ThreadLocal 的原理、使用场景及内存泄漏问题(弱引用的作用)

CopyOnWriteAray儿ist、CopyOnwrineArraySet 的原理、优缺点及使用场景

BlockingQueue 接口及实现类（ArayBlockingQueue、LinkedBlockingQueue 等）的使用

### 并发问题★★★

1.死锁的产生条件、如何避免与排查(jstack 命令)

2.线程安全的定义，如何保证线程安全（无状态、不可变、同步机制等）

3.上下文切换的额念及优化方式



## 3.JVM 虚拟机

### 垃圾回收（GC）★★★★★

GC的作用区域（堆和方法区）

判断对象可回收的算法（引用计数法、可达性分析算法）及引用类型

常见的垃圾收集算法（标记-清除、标记-复制、标记-整理、分代收集）

垃圾收集器（SerialGC、ParallelGC、CMS、G1、ZGC) 的特点与适用场景

CMS 收集器的工作流程（初始标记、并发标记、重新标记、并发清除）及缺点

G1收集器的核心特点（区域化分代式、Mixed GC、可预测停顿时间)

内存泄漏的定义、常见场景

### JVM内存模型★★★★

1.JVM整体架构（类加载子系统、运行时数据区、执行引攀、本地方法接口）

2.运行时数据区细分（程序计数器、虚拟机栈、本地方法栈、堆、方法区）及作用

3.堆内存的细分（新生代：Eden、S0、S1；老年代；永久代/元空间）

4.各内存区域的00M异常及产生原因

5.栈的组成（局部变量表、操作数栈、动态链接、方法返回地址）（概率低，选择性学习）

### 类加载机制★★★

类加载的生命周期（加载、验证、准备、解析、初始化、使用、卸载）（概率低，选择性学习)
类加载器的分类（四种）(概率低，造择性学习）

委派模型的原理、优势及打破方式

类初始化的触发条件（主动引用Vs 被动引用）（概率低，选择性学习)

### 性能调优★★★★有的面试官喜欢问

JVM 调优的流程与目标（降低GC频率、减少停顿时间等）

常用 JvM 调优工具(ijps、istat、jinfo、jmap、istack、jconsole、visualvm)

常见调优场景（堆内存调整、垃圾收集器选择、线程池配合等）

### 执行引擎★（概率低，选择性学习）

JVM执行字节码的方式（解释执行、即时缩译）

JIT 缩译的原理及优势

方法的调用机制（静态分派、动态分派、单分派、多分涨》



## 4.Spring

### Spring 核心概念★★★★★

IOC,DI,AOP

Spring 的核心优势（解耦、依赖注入、面向切面编程、事务管理等）

I0C（控制反转）的概念、作用及实现原理（容器负责对象创建与依赖管理）

DI （依赖注入）的概念、注入方式（构造器注入、setter 注入、字段注入）及优缺点

AOP（面向切面编程）的概念、作用（日志、事务、权限等横切逻辑）及核心术语【切面、通知、连接点、切入点、目标对象）

IOC与 AOP的底层实现技术（反射、动态代理)

### Spring I0C 容器★★★一般不咋问，了解下即可

Spring 客器的极心接口（BeanFactory、ApplicationContext）及区别

ApplicationContext 的常见实现类(ClassPathXmlAplicationContext、
FileSystemXmlApplicationContext、AnnotationConfigApplicationContext)

Bean 的生命同期（实例化、属性注入、初始化、销毁）及关键回调方法（Initiaizing Bean、DisposableBean、@PostConstruct、@PreDestroy)

Bean 的作用域（singleton、prototype、request、session、globalSession）及使用场景，singleton与prototype 的区别

Bean 的装配方式（XML 配置、注解配置：@Component、@Service、@Controller、@Repository、Java配置类 @Configuration + @Bean)

Bean 的依赖解决（@Autowired、@Resource、@Qualifier 的区别与使用）

Spring 容器初始化过程（资源定位、加载、注册、刷新)

### Spring AOP★★★一般不咋问，了解下即可

AOP 的实现原理（JDK动态代理 VS CGLIB 代理的区别、适用场景)

Spring AOP 的通知类型（前叠通知、后置通知、返回通知、异常通知、环绕通知）及执行顺序

切入点表达式（execution、within、this、target、args）的写法与使用场景

切面的优先级控制（@Order注解）

Spring AOP 与 Aspect 的区别与联系

AOP 的实际应用场景（事务管理、日意记录、接口权限校验、性能监控）

### 核心问题与优化★★★★★问的比较多

Spring 循环依赖的产生原因及解决方式（三级级存：singletonObjocts、earlySingletonObjects、singletonFactories)

@Autowired 与 @Resource 的区别(来源、注入方式、匹配规则)

Spring Bean 是线程安全的吗? 如何保证线程安全？ (无状态 Bean、ThreadiLocal、同步机制)

Spring 性能优化手段（Bean懒加载、连接池配置、缓存机制、减少反射开销）



## 5.MySQL

### 数据库基础★★★★

 MySQL 架构（连接层、服务层、引擎层、存储层）（概率低，选择性学习)

常见的存储引l擎（InnoDB、MyISAM）的区别（事务、锁、索引l、适用场景)

事务的ACID 特性及实现原理（原子性：undo log；一致性：业务逻辑；隔离性：锁；持久性：redo log)

事务的隔离级别（读未提交、读已提交、可重复读、串行化）及对应问题（脏读、不可重复读、幻读)

MySQL 的默认隔离级别，如何实现可重复读？（MVCC)

### 索引★★★★★全部是重点！！！B+树索引、哈希索引

索引的概念、作用及优缺点

B+树索引I的结构（叶子节点有序且相连）及查询原理，为何不用B 树或红黑树？

索引的分类(主键索引1、二级索引1、联合索引]、唯一索引I)

联合索引的最左匹配原则，如何合理设计联合索引？

索引失效的场景（函数操作、类型转换、不等于、模糊查询左匹配等）

覆盖索引、回表查询、索引引下推的概念及作用

哈希索引的特点及适用场景， InnoDB 的自适应哈希索引

索引设计的原则（适合索引的字段、避免过度索引等）

### SQL 优化★★★

Explain 命令的使用(各字段含义：id、select_type、type、key、rows 等)

常见 SQL 语句的优化 (SELECT、INSERT、UPDATE、DELETE)

子查询与关联查询（JOIN）的优化，JOIN 的类型及区别（概率低，选择性学习)

排序优化（filesort 的产生与解决）（概率低，选择性学习）

分页查询优化（limit大偏移量问题，如何解决？）

### 避免索引失效的编写规范锁机制★★★★

MySQL 锁的分类(表锁、行锁、页锁)

InnoDB 的行锁类型（共享锁 S、排他锁 ×）及加锁方式

意向锁（意向共享锁IS、意向排他锁IX）的作用

间隙锁(Gap Lock）、临键锁(Next-Key Lock）的产生原因及作用(解决幻读)

死锁的产生与解决(预防、检测、处理)

乐观锁与悲观锁的实现方式及适用场景（版本号、CAS)

### 日志与恢复★★★★★

MySQL 常见日志（binlog、redo log、undo log)的作用与区别

binlog 的格式（STATEMENT、ROW、MIXED） 及用途（主从复制、数据恢复）（概率低，选择性学习)

redo log与binlog的关系，两阶段提交的原理（保证事务一致性）

MySQL 的数据恢复方式（基于 binlog 恢复、基于备份恢复）

### 其他核心问题★★

主从复制的原理（三个线程：binlog dump、IO 线程、SQL 线程）及延迟问题

分库分表的概念、原因及实现方式(水平分表、垂直分表、水平分库、垂直分库)

分库分表的中间件 (Sharding-JDBC、MyCat)

MySQL 的慢查询日志配置



## 6.Redis

### Redis基础★★★★★全部是重点！！！

Redis 的概念、特点(内存数据库、高性能、支持多种数据结构、持久化等)

Redis 的应用场景（缓存、分布式锁、消息队列、计数器、排行榜等)

Redis 的数据结构及底层实现 (String、Hash、List、Set、Sorted Set)

Redis 的过期键删除策略（惰性删除、定期删除）及内存淘汰机制（LRU、LFU 等)

### 持久化★★★★★全部是重点！！！

RDB，AOF，写时复制

RDB 的原理（快照方式）、触发时机（手动：save/bgsave；自动配置）、优缺点

AOF 的原理（记录写命令）、同步策略（appendfsync：always、everysec、no）、优缺点

RDB与AOF的区别及选择建议

AOF重写的原理与触发时机（手动：bgrewriteaof；自动配置）

Redis的数据恢复流程（RDB与AOF同时存在时的优先级）

### 缓存问题★★★★★缓存三剑客，重点！！！

1.缓存穿透的概念、原因及解决方案（布隆过滤器、空值缓存等）

2.缓存击穿的概念、原因及解决方案（互斥锁、热点数据永不过期等）

3.缓存雪崩的概念、原因及解决方案(过期时间随机化、集群部署、热点数据永不过期等)

4.缓存与数据库的一致性问题（更新策略：先更数据库再删缓存、延迟双删等）

5.缓存的更新策略（LRU、LFU等）及适用场景

### 高可用★★★★主从复制、哨兵、集群

Redis 主从复制的原理（全量复制、增量复制）、作用及配置

哨兵（Sentinel）的作用（监控、通知、自动故障转移）及工作原理

Redis Cluster 集群的架构（分片、主从复制）、数据分布方式（哈希槽)

Redis Cluster 的故障检测与恢复机制

Redis 高可用方案的对比与选择

### 其他核心问题★★★一般出现在追问

Redis 的事务实现(MULTI、EXEC、DISCARD、WATCH）及特点(不支持回滚)

Redis 的分布式锁实现（SET NX EX 命令、Redlock 算法）及注意事项

Redis 的管道（Pipeline）机制及作用（减少网络开销)

Redis 6.0 的新特性(多线程 IO、ACL 权限控制等)

Redis 的内存优化策略（数据结构选择、过期键清理等)



## 7.MQ (消息队列)

### MQ基础

MQ 的概念、作用及应用场景(异步通信、解耦、流量削峰、日志收集等)

使用 MQ 的优缺点（系统复杂度增加、一致性问题等)

常见 MQ 产品的对比（RabbitMQ、Kafka、RocketMQ 的特点与适用场景)

你的项目有考虑过选型吗？

### MQ核心问题☆☆☆☆全部是重点！！！重中之重

1.消息的可靠性投递（如何确保消息不丢失：生产端、MQ端、消费端）

2.消息的重复消费问题 (原因及解决方案：幂等性处理)

3.消息的顺序性问题 (原因及解决方案：分区有序、全局有序)

4.MQ的消息积压问题（原因及解决方案：扩容、优化消费速度等）

5.MQ的分布式事务解决方案（本地消息表、事务消息、TCC等）

RabbitMQ, RocketMQ, Kafka 特性这个根据自己项目中使用的来学习
可以去 B站，或者买书来具体学习但一般知道MQ核心问题也够了



## 8.设计模式（大都属于开放性问题，作为加分点）

### 设计模式原则（六大原则）一般不主动问，可以自己提起作为亮点

SOLID 原则(单一职责、开放封闭、里氏替换、接口隔离、依赖倒置)

迪米特法则 (最少知道原则）

### 你项目中用到了什么设计模式？为了解决什么问题？

### 重点设计模式

单例模式 (可能考手撕)

代理模式（动态代理，静态代理）

工厂模式

建造者模式

策略模式



## 9.计算机网络

### 网络分层模型★★★

1.OSI七层模型（物理层、数据链路层、网络层、传输层、会话层、表示层、应用层）

2.TCP/IP四层模型（网络接口层、网络层、传输层、应用层）及各层协议

### 网络层★★★

IP 协议的作用。IPv4 地址的分类与子网掩码

ICMP 协议的作用（ping、traceroute 命令的原理)（概率低，选择性学习)

IPv6 与 IPv4 的区别 (概率低， 选择性学习)

### 传输层★★★★★重点！！

TCP, UDP

TCP 与 UDP 的区别（连接、可性、有序性、流量控制、拥塞控制、适用场景)

TCP的三次握手过程及各阶段状态变化，为什么是三次？（防止历史连接）

TCP 的四次挥手过程及各阶段状态变化，为什么是四次？（半关闭状态)

TCP 的可靠性保障机制（确认应答、序列号、重传机制、滑动窗口、拥塞控制)

TCP的滑动窗口协议（流量控制原理）

TCP 的拥塞控制算法（慢开始、拥塞避免、快速重传、快速恢复)

TCP 的 TIME_WAIT 状态的作用及优化方式

常见的端口号及对应协议（80:HTTP、443:HTTPS、22:SSH、3306:MySQL等）

### 应用层★★★★

HTTP、HTTPS、DNS

HTTP 协议的特点（无连接、无状态）及解决无状态的方案（Cookie、Session）

HTTP请求报文与响应报文的结构（请求行/响应行、请求头/响应头、请求体/响应体)

HTTP 常见请求方法（GET、POST、PUT、DELETE、PATCH）的区别与使用场景

HTTP 常见状态码的分类及含义（1xx信息、2xx成功、3xx重定向、4xX客户端错误、5xx服务端错误）

HTTPS的原理（HTTP+SSL/TLS），与HTTP的区别（安全性、端口、性能）

DNS协议的作用（域名解析），解析过程（本地缓存、本地DNS、根服务器等）

HTTP 1.0、1.1、2.0、3.0 的区别（长连接、管绒化、多路复用、QUIC等）



## 10.操作系统

### 进程管理★★★★★

1.进程与线程的区别

2.进程的状态及转换(就绪、运行、阻塞、终止)

3.进程调度算法（先来先服务 FCFS、短作业优先 SJF、时间片轮转 RR、优先级调度、多级反馈队列）

4.进程间通信的方式（管道、消息队列、共享内存、信号量、Socket）及区别

5.线程间通信的方式（锁、信号量、条件变量等）

6.死锁的产生条件、预防、避免、检测与解除

7.协程的概念与特点，与线程的区别

### 内存管理★★★★★

1.内存管理的功能(内存分配、回收、保护、共享)

2.虚拟内存的概念、作用及实现原理 (页面置换)

3.页面置换算法（最佳置换 OPT、先进先出 FIFO、最近最少使用LRU、时钟算法 CLOCK)

4.分页存储与分段存储的区别，段页式存储的原理











