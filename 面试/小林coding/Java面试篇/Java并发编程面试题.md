# Java并发编程面试题

## 多线程

Java 的内存模型(JMM）介绍一下

java多线程是什么？需要注意什么?

java里面的线程和操作系统的线程一样吗？使用多线程要注意哪些问题?

保证数据的一致性有哪些方案呢?

线程的创建方式有哪些?



怎么启动线程？

如何停止一个线程的运行？

调用 interrupt 是如何让线程抛出异常的？

Java线程的状态有哪些?

sleep 和 wait的区别是什么?



sleep会释放cpu吗?

blocked和waiting有啥区别

wait 状态下的线程如何进行恢复到 running状态?

notify 和 notifyAll 的区别?

notify 选择哪个线程？不同的线程之间如何通信？



线程间通信方式有哪些?

如何停止一个线程？

Go 的协程和 Java 的线程有啥区别？

## 并发安全

juc包下你常用的类?怎么保证多线程安全?

Java中有哪些常用的锁，在什么场景下使用？

怎么在实践中用锁的？

Java 并发工具你知道哪些?

CountDownLatch 是做什么的讲一讲？



synchronized 和 reentrantlock及其应用场景？

除了用synchronized，还有什么方法可以实现线程同步?

synchronized锁 静态方法和普通方法区别?

synchronized 和 reentrantlock区别?

怎么理解可重入锁?



synchronized 支持重入吗？如何实现的？

syncronized锁升级的过程讲一下

JVM对Synchornized的优化？

介绍一下AQS

CAS 和 AQS 有什么关系?



如何用 AQS 实现一个可重入的公平锁？

Threadlocal作用，原理，具体里面存的keyvalue是啥，会有什么问题，如何解决？

悲观锁和乐观锁的区别?

Java中想实现一个乐观锁，都有哪些方式?

CAS 有什么缺点?



为什么不能所有的锁都用CAS?

CAS 有什么问题，Java是怎么解决的?

volatile 关键字有什么作用？

指令重排序的原理是什么?

volatile 和 sychronized比较?



什么是公平锁和非公平锁?

非公平锁吞吐量为什么比公平锁大？

Synchronized是公平锁吗？

ReentrantLock是怎么实现公平锁的?

什么情况会产生死锁问题？如何解决？

## 线程池

线程池怎么使用？

介绍一下线程池的工作原理

线程池的参数有哪些?

线程池工作队列满了有哪些拒接策略？

有线程池参数设置的经验吗？



核心线程数设置为0可不可以？

线程池种类有哪些？

线程池一般是怎么用的？

线程池和三个线程同时并发比有什么优势？

线程池用了哪些设计模式?

线程池中shutdown() ，shutdownNow（）这两个方法有什么作用？

提交给线程池中的任务可以被撤回吗？

## 场景

多线程打印奇偶数，怎么控制打印的顺序

单例模型既然已经用了synchronized，为什么还要在加volatile?

3个线程并发执行，1个线程等待这三个线程全部执行完在执行，怎么实现？

假设两个线程并发读写同一个整型变量，初始值为零，每个线程加 50次，结果可能是什么?







