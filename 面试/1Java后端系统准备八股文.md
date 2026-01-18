# Java后如何系统准备八股文-30d（小林coding）

附：
我个人觉得急于面试的话，可以把javase、spring、mysql、redis、jvm、计网先看了，再准备自己的项目和场景题。

## 一、整体策略：按「高频考点优先级」分层突击

核心原则
抓大放小：优先攻克大厂高频模块（Java 并发、JVM、Spring、MySQL、Redis），这些模块占面试题的 70%+
真题驱动：每个模块先刷「追问型真题」（如 “讲讲 AQS 原理→那 ReentrantLock 怎么用 AQS 实现的？→锁升级过程是怎样的？”），培养深度答题思维
输出倒逼输入：每天用「费曼学习法」口述 3 道题答案，用手机录音回听，修正逻辑漏洞

## 二、30 天详细时间规划（附每日任务表）

阶段一：核心模块攻坚（第 1-18 天，每天 1.5 小时）
目标：掌握 Java 核心 + 框架 + 数据库的 80% 高频题，形成答题模板

### 第一周、（Java基础和Java集合） 

Day1-2：Java 基础（数据类型、异常体系、反射）

- 刷 10 道基础题，重点背「自动装箱拆箱原理」「String/StringBuilder/StringBuffer 区别」
Day3-4：集合框架（List/Set/Map 底层实现）
- 对比 ArrayList 与 LinkedList 适用场景，手写 HashMap.put () 流程（JDK1.8）
Day5-6：并发容器（ConcurrentHashMap、CopyOnWriteArrayList）
- 背 ConcurrentHashMap 分段锁→CAS→红黑树的演进逻辑
Day7：周末复盘，用表格总结「集合类线程安全对比」「常用方法时间复杂度」

### 第二周、（Java并发和JVM） 

 Day8-9：线程与锁（synchronized/ReentrantLock/AQS）

- 背「synchronized 锁升级过程」「AQS 双向链表 + 状态位设计」
Day10-11：并发工具类（CountDownLatch/CyclicBarrier/Semaphore）
- 对比三者适用场景，用 “多线程下载文件合并” 举例说明 CountDownLatch 用法
Day12-13：JVM 内存模型（堆 / 栈 / 方法区）
- 重点背「对象创建过程」「GC 分代回收机制」「STW 发生场景」
Day14：JVM 调优（GC 日志分析、OOM 排查）
- 记常用命令（jmap/jstack/jstat），背 “线上 OOM 排查步骤”

### 第三周、（Spring和MySQL） 

 Day15-16：Spring 基础（IOC/AOP 原理）

- 背 “BeanFactory 与 ApplicationContext 区别”“AOP 实现方式（JDK 动态代理 / CGLIB）”
Day17-18：Spring 进阶（事务管理、Bean 生命周期）
- 手写 “@Transactional 失效场景” 清单，背 “Bean 实例化→初始化→销毁” 全流程
Day19-20：MySQL 基础（索引类型、事务隔离级别）
- 重点背 “索引失效条件”“可重复读如何避免幻读（MVCC 原理）”
Day21-22：MySQL 优化（慢查询分析、分库分表）
- 记 “explain 执行计划关键字段（type/key/rows）”，背 “分库分表路由策略（哈希 / 范围 / 组合）”

阶段二：扩展模块突破（第 19-26 天，每天 1 小时）

###  第四周（Redis和操作os/计网）

Day23-24：Redis 数据结构（String/Hash/List/ZSet）

- 背 “ZSet 跳表实现原理”“Redis 持久化（RDB/AOF）对比”
Day25-26：Redis 进阶（分布式锁、缓存穿透 / 击穿 / 雪崩）
- 记 “Redisson 实现分布式锁的步骤”“缓存雪崩解决方案（加随机 TTL / 多级缓存）”
Day27：操作系统（进程 / 线程、内存管理）
- 重点背 “进程间通信方式”“虚拟内存原理”
Day28：计算机网络（TCP 三次握手 / 四次挥手、HTTP 协议）
- 画 “TCP 状态转换图”，背 “HTTPS 加密过程（对称 + 非对称加密结合）”

### 第五周、（消息队列/分布式）

Day29：消息队列（Kafka/RocketMQ 选型、消息幂等性）

- 背 “Kafka 分区策略”“如何保证消息不丢失（生产者 ACK / 消费者 offset）”
Day30：分布式（CAP 定理、分布式事务）
- 记 “CAP 三进二选择”“TCC 事务模式流程”