![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/2025-09-03_13-01-13.jpg)

**如果能做完[手写RPC框架（第六版）](https://programmercarl.com/other/project_rpc.html)这个项目，不仅可以在简历上添加一个项目，Java语法，以及负载均衡、并发、限流、网络通信等，相关知识基本活学活用了,为后续学习微服务打下基础**

# Java 并发

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/_Synchronizedguanjianzi_sufeng.png)

## Java创建线程有几种方式

1. 继承自`Thread`类

通过继承 `Thread` 类，可以创建一个新的线程。为了实现线程的执行逻辑，需要重写 `run()` 方法。

```
class MyThread extends Thread {
    public void run() {
        // 线程执行的逻辑
        System.out.println("MyThread is running...");
    }
}

// 创建并启动线程
MyThread myThread = new MyThread();
myThread.start();
```

1. 实现`Runnable`接口

```
class MyRunnable implements Runnable {
    public void run() {
        // 线程执行的逻辑
        System.out.println("MyRunnable is running...");
    }
}

// 创建并启动线程
Thread myThread = new Thread(new MyRunnable());
myThread.start();
```

1. 使用 Executor 框架

`Executor` 框架是 Java 并发编程中的高级工具，它提供了一种更为灵活的方式来管理和执行线程。通过 `Executor`，可以将任务提交给线程池，由线程池来管理线程的生命周期和执行。

```
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

class MyTask implements Runnable {
    public void run() {
        // 线程执行的逻辑
        System.out.println("MyTask is running...");
    }
}

// 创建线程池并提交任务
Executor executor = Executors.newFixedThreadPool(3);
executor.execute(new MyTask());
```

### 线程的生命周期

1. 新建（`New`)

线程对象被创建，但尚未启动。使用 `new Thread()` 创建线程对象后，线程处于新建状态。

1. 就绪（`Runnable`)

线程已经被启动，等待系统资源（如 CPU 时间）以便运行, 调用 `start()` 方法后，线程进入就绪状态。

1. 运行（`Running`)

就绪状态的线程获得 CPU 时间，开始执行 `run()` 方法中的代码。正在执行的线程处于运行状态。

1. **阻塞（Blocked）：**

线程因为某些原因放弃了 CPU 使用权，暂时停止运行。可能是等待某个资源、等待 I/O 操作完成、或者调用 `sleep()` 方法等。

1. **等待（Waiting）：**

线程进入等待状态，等待其他线程的通知唤醒。可以通过 `Object.wait()`、`Thread.join()`、`LockSupport.park()` 等方式进入等待状态。

1. **超时等待（Timed Waiting）：**

线程等待一段时间，当时间到达或者其他条件满足时，线程会重新进入就绪状态。通过 `Thread.sleep()`、`Object.wait(timeout)`、`Thread.join(timeout)`、`LockSupport.parkNanos()` 等方式可进入超时等待状态。

1. **终止（Terminated）：**

线程执行完 `run()` 方法或者因异常退出后，进入终止状态。一个终止的线程不能再进入任何状态。

**Java线程的状态转换和操作系统中进程的状态转换关系**

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/_Javabingfa_weikunkun_02.png)

Java中将操作系统中的

- 就绪状态/运行状态转化为一个状态Runnable
- 阻塞状态 细分为了三种
  - BlOCKED
  - WAITING
  - TIMED_WAITING

## 什么是Java中的并发和并行？它们之间有什么区别？（考点：并发与并行的基本概念）【简单】

1、 并发：只有一个cpu核心，cpu来回处理多个线程，cpu调度处理这多个线程 

2、 并行：有多个cpu核心，可以同时处理多个线程

## 解释一下Java中的线程和进程的区别。（考点：线程与进程的区别）【简单】

1：线程：轻量级的进程，一个进程分为多个线程，线程是cpu调度的基本单位，线程共享进程的资源，线程之间切换开销较小 2：进程：进程是资源分配的基本单位，进程之间切换开销较大

## 线程 start 和 run 的区别？（考点：多线程编程）【简单】

1：start 方法用在多线程中，代表启用了一个新线程，将该线程由new状态变为runnable状态，最终会调用线程的run方法 2：run方法，如果直接调用的话跟普通方法一样，没有启用新线程

## Java中如何创建线程？有哪些方式？（考点：线程的创建方式）【中等】

在 `Java` 中，创建线程有四种方式，分别是 `继承Thread类`，`实现Runnable接口`，实现`Callable`接口、使用线程池、使用`CompletableFuture`类等。

1. **继承Thread类**： 通过创建`Thread`类的子类，并重写其`run`方法来定义线程执行的任务。
2. **实现Runnable接口**： 创建一个实现了`Runnable`接口的类，并实现其`run`方法。然后创建该类的实例，并将其作为参数传递给`Thread` 对象。
3. **使用Callable和Future接口**：创建一个实现了`Callable`接口的类，并实现其`call`方法，该方法可以返回结果并抛出异常。使用`ExecutorService`来管理线程池，并提交`Callable`任务获取`Future`对象，以便在未来某个时刻获取Callable任务的计算结果。
4. **使用线程池**：通过使用`Executors`类创建线程池，并通过线程池来管理线程的创建和复用。

不过，这些方式其实并没有真正创建出线程。准确点来说，这些都属于是在 Java 代码中使用多线程的方法。 严格来说，Java 就只有一种方式可以创建线程，那就是通过`new Thread().start()`创建。不管是哪种方式，最终还是依赖于`new Thread().start()`。

## 什么是Java中的线程生命周期？它包含哪些状态？（考点：线程的生命周期和状态）【中等】

- New、Runnable、Running、Blocked、Waiting、Time Waiting、Terminated
- new：当Thread被创建，但是没有start
- Runnable：调用了start方法，线程进入可运行状态
- Running：线程正在执行run方法中的代码
- Blocked：线程试图获取一个已经被其他线程占用的监视器锁，会进入阻塞状态
- Waiting：调用Object.wait、Thread.join方法
- Time Waiting：类似等待，会有一个超时时间限制
- Terminated：线程完成了

## Java中的synchronized关键字是如何工作的？它有哪些使用场景？（考点：synchronized关键字的原理和使用场景）【中等】

- synchronized的工作机制：
  - 锁机制：当一个线程进入被synchronized修饰的方法或代码块时，会获取到对象锁。如果另外一个线程进入到同步区域，该线程将会被阻塞。
  - 互斥性：synchronized保证在同一时刻只有一个线程可以执行同步代码块，保持数据一致性
  - 内存可见性：当一个线程修改了共享变量之后，其他线程能看到这个更新的值

## 解释一下volatile关键字的作用和使用场景。（考点：volatile关键字的内存可见性和使用场景）【中等】

![img](https://file1.kamacoder.com/i/bagu/_volitileguanjianzi_sufeng.png)

想象一下，你在和几个朋友一起做一个项目。你们有一块**共享的白板**（主内存），但为了快点干活，每个人面前还有一张**小纸条**（线程自己的缓存）。

1. **没有 `volatile` 的问题：**
   - 你在你的小纸条上写了个新想法，但你可能忘了或者过了一会儿才去更新到中间那块大白板上。
   - 这时候，你的朋友看的是他自己的小纸条，或者他看大白板时，你还没更新上去。他就不知道你的新想法。
2. **`volatile` 做了什么：**
   - 如果你们约定某个信息（比如“项目是否完成”这个状态）写在白板上时要用特别显眼的红笔（这就是 `volatile`）：
     - 只要有人用红笔更新了这个信息，他会立刻大声告诉所有人：“我更新了红笔信息！”并且保证白板上是最新的。
     - 其他人每次要看这个红笔信息时，都不会只看自己的小纸条，而是**必须直接去看白板上最新的内容**。
   - **所以，`volatile` 关键字主要保证一件事：一个线程修改了某个变量的值，其他线程能立刻看到这个最新的值。这叫“可见性”。**

------

**`volatile` 主要用在这样的简单场景：**

- 开关状态：比如一个线程控制一个循环是否继续跑。

  ```
  volatile boolean keepRunning = true;
  // 线程A
  void stop() {
      keepRunning = false; // 告诉大家别跑了
  }
  // 线程B
  void run() {
      while (keepRunning) { // 每次都会检查最新的状态
          // ...干活...
      }
      // 线程A把keepRunning改成false后，这里能很快看到并停下来
  }
  ```

  线程A把keepRunning改成false，线程B能很快看到这个变化，然后停止循环。

------

**`volatile` 不能做什么（重要！）：**

- 它不能保证复杂操作的原子性。比如count++(把一个数加1)。
  - 这操作其实是三步：1. 读取 `count` 的值；2. 把值加1；3. 把新值写回 `count`。
  - 如果两个线程同时对一个 `volatile` 的 `count` 做 `count++`，它们可能同时读取到旧值，然后各自加1，最后结果只增加了1，而不是2。
  - 这种复杂操作需要更强的工具，比如 `synchronized` 或者 `AtomicInteger`。

**简单说，`volatile` 就是一个“喇叭”，一个线程改了值，它会确保其他线程能“听见”（看见）最新的值。但它不管多个线程同时改的秩序问题。**

## volatile 与synchronized 的对比。（考点：锁类型比较）【中等】

- `volatile`只能用来修饰变量，每次使用这个变量只能去主内存中读取;`synchronized`可以用来修饰代码块和方法，本质上就是给这段代码块或者方法加锁，要想执行，必须先获得锁
- 由于指令的执行顺序是不可预知的，可能会发生指令重排问题，用`volatile`可以避免指令重排;`synchronized`是一种同步机制，可以用来解决线程安全问题
- `volatile`能够保证数据的可见性，但不能保证数据的原子性；`synchronized`两者都能保证

------

- 可见性（Visibility）：变量修改对其他线程的实时可见
- 原子性（Atomicity）：操作不可被中断的完整性

## 你知道Java中有哪些锁吗？（如synchronized, ReentrantLock等），并比较它们的性能差异。（考点：锁机制，锁类型比较）【中等】

- ```
  synchronized（关键字，JVM实现）
  ```

  - 特性：可重入、自动释放、非公平锁
  - 优势：代码简洁，低竞争时性能优异

- ```
  ReentrantLock（类，JUC包，基于AQS）
  ```

  - 特性：可重入、手动释放（`finally`中`unclock()`）、提供限时等待、支持公平\非公平锁
  - 优势：高竞争场景（非公平模式）性能略优（减少线程切换）

- ```
  ReadWriteLock（如ReentrantReadWriteLock）
  ```

  - 特性：读锁共享，写锁互斥
  - 优势：读操作并发高，写操作互斥保持数据一致性

- ```
  StampedLock（JDK8+，优化读写锁）
  ```

  - 特性：支持乐观读（无锁读取，验证版本号，冲突时降级为读锁），三种模式（读、写、乐观读）
  - 优势：乐观读的性能远远优于读写锁（无锁竞争），适合用于极低写频率场景（如统计系统）

------

【公平锁/非公平锁】

**公平锁：** 线程按申请锁的顺序获取锁，先请求的线程先获得，保证公平，避免线程饥饿

**非公平锁：** 线程可以插队获取锁，吞吐量更高但可能导致饥饿

## 说说你对 synchronized的理解？（考点：锁机制）【中等】

`synchronized`是Java中的一个关键字，主要是用来保证多线程并发访问共享资源时候的线程安全。

- **基本作用：** 当一个方法或代码块被 `synchronized` 修饰时，它将成为一个临界区，同一时刻只能由一个线程访问。其他线程必须等待当前线程退出临界区才能进入。确保多个线程在访问共享资源时不会产生冲突

- **使用方式：**`synchronized` 可以应用于方法或代码块。

  - `synchronized` 修饰实例方法时，锁对象是当前实例（`this`）。

  ```
  public synchronized void method() {
      // 临界区
  }
  ```

  - 静态方法：`synchronized` 修饰静态方法时，锁对象是当前类的 `Class` 对象。

  ```
  public static synchronized void staticMethod() {
      // 临界区
  }
  ```

  - 当它应用于代码块时，只有该代码块被锁定。这样做的好处是，可以选择性地锁定对象的一部分，而不是整个方法。

  ```
  public void method() {
      synchronized (lockObject) {
          // 临界区
      }
  }
  ```

- **锁的获取与释放：**当线程进入 `synchronized` 修饰的代码块或方法时，会尝试获取锁。如果锁已被其他线程持有，当前线程会进入阻塞状态，直到锁被释放。

- **可重入性：**`synchronized` 是可重入的，同一线程可以多次获取同一个锁。例如，一个线程在持有锁的情况下，可以再次进入被 `synchronized` 修饰的代码块或方法。

- **锁的可见性：**`synchronized` 保证了内存的可见性。一个线程对共享变量的修改，对其他线程是可见的。这是因为 `synchronized` 会在释放锁时将本地内存中的变量刷新到主内存，并在获取锁时从主内存读取最新值。

- **与 volatile 的比较：**

  - `synchronized`：
    - 保证原子性、可见性和有序性。
    - 适用于需要互斥访问的场景。
  - `volatile`：
    - 仅保证可见性和有序性，不保证原子性。
    - 适用于单个变量的读写操作，且不需要互斥的场景。

- **锁优化：**

  - `synchronized` 实现的机理依赖于软件层面上的`JVM`，因此其性能会随着Java版本的不断升级而提高。 到了 `Java1.6`，`synchronized` 进行了很多的优化，有适应自旋、锁消除、锁粗化、轻量级锁及偏向锁等，效率有了本质上的提高。在之后推出的 `Java1.7` 与 `1.8` 中，均对该关键字的实现机理做了优化。
  - JVM 对 `synchronized` 的优化：
    - **锁粗化**：将多个连续的锁操作合并为一个，减少锁的获取和释放次数。
    - **锁消除**：通过逃逸分析，移除不必要的锁。
    - **偏向锁**：在无竞争情况下，偏向第一个获取锁的线程，减少锁的开销。
    - **轻量级锁**：在竞争不激烈时，使用 CAS 操作代替重量级锁。
    - **重量级锁**：在竞争激烈时，升级为重量级锁，线程进入阻塞状态。

- **与其他同步工具的对比：**

  - `ReentrantLock`：
    - 与 `synchronized` 类似，但提供了更灵活的锁机制。
    - 支持公平锁、可中断锁、超时锁等功能。
    - 需要手动释放锁。
  - `ReadWriteLock`：
    - 支持读写分离，读操作可以并发执行，写操作需要互斥。
    - 适用于读多写少的场景。
  - `synchronized`优势：
    - 使用简单，无需手动释放锁。
    - JVM 内置支持，性能优化较好。

- 尽管 `Java` 实现的锁机制有很多种，并且有些锁机制性能比 `synchronized` 高，但还是推荐在多线程应用程序中使用`synchronized`，实现方便，后续工作由 `JVM` 来完成，可靠性高。只有在确定锁机制是当前多线程程序的性能瓶颈时，才考虑使用其他机制，如 `ReentrantLock` 等。

## 解释一下什么是线程安全？如何保证线程安全？（考点：线程安全的概念和保证线程安全的方法）【中等】

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/_Javaxianchenganquan_tongzhuoDenis.png)

线程安全问题主要是说多个线程访问同一资源，尤其是写操作，这时候会产生冲突

Java采用 *同步机制* 解决线程安全问题。同步机制的原理，其实就相当于给某段代码加“锁”，任何线程想要执行这段代码，都要先获得“锁”。引入synchronized关键字修饰代码块或方法

**常用线程安全类：**

- concurrent 包中的类：如 ConcurrentHashMap、CopyOnWriteArrayList 等。
- Atomic 包中的类：如 AtomicInteger、AtomicLong 等，提供原子操作。

## AQS

![img](https://file1.kamacoder.com/i/bagu/_AQSsiweidaotu_Young.png)

**1、概念：**

AQS，一个用来构建锁和同步器的框架，许多的经典的同步器都是基于AQS构建出来的，譬如CountDownLatch、Semaphored。

其内部使用同步队列帮我们解决了实现同步器时的一些细节问题，譬如何时阻塞线程，如何按照顺序唤醒线程。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/_AQS_weikunkun_01.png)

**2、核心思想：**

AQS通过一个被volatile修饰的int类型的成员变量表示同步状态（共享资源），然后使用cas对这个同步状态进行修改，从而保证线程安全。

如果被请求的共享资源空闲，则将当前的请求线程设置为有效的工作线程，然后将对应的共享资源设置为锁定状态。

如果共享资源被占用，则通过CLH同步队列将暂时用不到的线程封装成一个节点加入到队列中，同时在适当的时候对其进行阻塞和唤醒。

基于AQS实现的应用（目前接触到的）

（1）lock

区别于synchronozed的锁，同时还支持了更加的灵活丰富操作，譬如可定时的尝试获取锁（避免了死锁的发生）、可中断的获取锁。

（2）CountDownLatch

一个或一组操作等其他操作执行结束之后，继续执行。

（3）Semaphore

用于多个共享资源的互斥，或者用于控制并发数量

**3、内部细节：**

1. 目前理解是通过waitStatus来标志线程的阻塞、唤醒等状态，但是每个节点的waitStatus状态不是通过自身设置的，而是通过其后继节点设置的。
2. 内部的同步队列采用的数据结构是双向链表，同时Head节点属于dummy节点，不存储信息，仅表示当前持有锁的线程，同时还会负责后续阻塞线程的唤醒
3. exclusiveOwnerThread变量，标志当前持有锁的线程，防止错误的释放锁，这种思想在Redis分布式锁中也有体现
4. state是用volatile修饰的int型变量，这样其除了能够实现独占锁之外，还能实现Semaphore、CountDownLatch这样的同步工具
5. 对外提供了使用protected修饰的方法tryAcquire、tryRelease等，这样在实现的子类中，能够通过这些方法，实现一些我们自定义的内容，譬如锁的可重入，公平与非公平锁。

**基于ReentrantLock的独占式共享锁的整个流程：**

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/_AQS_weikunkun_02.png)