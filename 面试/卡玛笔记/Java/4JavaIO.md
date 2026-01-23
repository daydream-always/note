![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/_Java.IOgongjubao_77.png)

## IO流基本认识

1、 IO 流的概念

- IO（Input/Output）流是 Java 用来 **处理数据输入和输出** 的机制。
- 所有数据读写操作在 Java 中都抽象为“流”（Stream）。
- **输入流（InputStream/Reader）**：从数据源读取数据到程序中。
- **输出流（OutputStream/Writer）**：把数据从程序写出到目标。

------

2、 按处理的数据类型划分

- **字节流（InputStream / OutputStream）**
  - 以 **字节（8 位）** 为单位传输数据。
  - 适合处理二进制数据，如图片、音频、视频。
- **字符流（Reader / Writer）**
  - 以 **字符（16 位 Unicode）** 为单位传输数据。
  - 适合处理文本数据，如 txt、xml。

------

3、 按流向划分

- **输入流**：从外部（文件、网络、键盘）读数据到内存。
- **输出流**：把内存中的数据写到外部（文件、网络、控制台）。

------

4、 常见类

- **字节流**：`FileInputStream`、`FileOutputStream`。
- **字符流**：`FileReader`、`FileWriter`。
- **缓冲流**：`BufferedReader`、`BufferedWriter`、`BufferedInputStream`、`BufferedOutputStream`。
- **转换流**：`InputStreamReader`、`OutputStreamWriter`，用于字节流和字符流之间的转换。

------

5、 总结 （面试好用）

Java 的 IO 流体系本质上是 **对数据读写的抽象**，通过 **字节流/字符流 + 输入/输出** 四种基本维度组合，提供了统一而灵活的 API 来处理各种数据传输场景。

## I/O模型

1. BIO(Blocking I/O阻塞I/O模型)：

**BIO 属于同步阻塞 IO 模型**，读取或写入数据时，线程将一直等待，直到数据准备就绪或者写入操作完成， 但在高并发环境下可能导致性能问题，因为线程在等待 I/O 操作完成时被阻塞，无法执行其他任务。

1. NIO(**Non-blocking I/O**):

在非阻塞 I/O 模型中，线程执行一个 I/O 操作时不会等待，而是继续执行其他任务, 这需要通过轮询（polling）或者使用回调函数等机制来检查 I/O 操作是否完成。

这种模型相对于阻塞 I/O 可以更好地支持并发，但轮询的方式可能会导致 CPU 资源的浪费。

1. IO多路复用

I/O 多路复用模型使用了操作系统提供的选择器（Selector）机制，例如 Java 中的 `Selector` 类。通过选择器，一个线程可以监听多个通道上的 I/O 事件，从而在单线程中处理多个连接。

1. AIO（Asynchronous I/O）

异步I/O允许程序在执行I/O操作时继续执行其他任务，而不需要等待I/O操作完成。在Java中，AIO主要是通过Java NIO.2中的`AsynchronousChannel`和`CompletionHandler`接口来实现的。

AIO 允许程序发起一个I/O操作，并在操作完成时得到通知。在这个过程中，程序可以继续执行其他任务而无需等待I/O操作完成，当操作完成之后，进行回调。

## 什么是Java中的BIO、NIO和AIO？有哪些区别？（考点：Java I/O模型） 【中等】

**BIO（Blocking I/O）**

- **概念**：传统的Java I/O模型，基于流（Stream）进行数据的读写操作。

- 特点：

  -  阻塞式：每个I/O操作都会阻塞线程，直到操作完成。

  - 简单易用，适用于连接数较少的场景。

- **应用场景**：适合处理较少并发连接的应用，如传统的文件读取或简单的服务器。

**NIO（Non-blocking I/O）**

- **概念**：Java 1.4引入的非阻塞I/O模型，基于通道（Channel）和缓冲区（Buffer）进行数据传输。

- 特点：

  - 非阻塞式：线程可以在等待I/O操作时执行其他任务。

  - 支持选择器（Selector），可同时处理多个通道。
  - 更高的性能和扩展性，适合高并发场景。

- **应用场景**：适用于需要处理大量并发连接的服务器，如高性能网络服务器。

**AIO（Asynchronous I/O）**

- **概念**：Java 7引入的异步I/O模型，允许I/O操作以异步方式进行，线程无需等待操作完成。

- 特点：

  - 完全异步：I/O操作完成后，通过回调或Future机制通知应用程序。

  - 更高的资源利用率，适合极高并发和低延迟的应用。
  - 复杂度较高，实现难度大于BIO和NIO。

- **应用场景**：适用于需要极高性能和资源利用率的系统，如大型分布式系统和实时数据处理。

**主要区别**

|   特性   |       BIO        |             NIO              |                  AIO                  |
| :------: | :--------------: | :--------------------------: | :-----------------------------------: |
|   模型   |      阻塞式      |           非阻塞式           |             异步非阻塞式              |
| 线程使用 | 每个连接一个线程 | 单线程或少量线程处理多个连接 |          线程无需等待I/O完成          |
|  复杂度  |       简单       |             中等             |                 较高                  |
|   性能   |    适合低并发    |         适合中高并发         |         适合极高并发和低延迟          |
| API支持  |    java.io包     |          java.nio包          | java.nio.channels.AsynchronousChannel |

- Java中BufferedReader比BufferedInputStream快吗？为什么？（考点：I/O性能优化） 【简单】

**比较BufferedReader和BufferedInputStream的性能**

- BufferedReader：- 主要用于字符输入，基于字符流（Reader）。
  - 内部使用缓冲区来减少实际读取操作的次数，提高读取字符数据的效率。
- BufferedInputStream：- 主要用于字节输入，基于字节流（InputStream）。
  - 同样使用缓冲区来优化读取字节数据的性能。

**性能差异**

- **用途不同**：BufferedReader用于处理字符数据，而BufferedInputStream用于处理字节数据。它们的性能取决于具体的使用场景和数据类型。
- **字符处理**：在处理文本数据时，BufferedReader通常表现得更快，因为它优化了字符读取和转换的过程，减少了字符编码转换的开销。
- **字节处理**：对于纯字节数据，BufferedInputStream可能更高效，因为它避免了字符转换的额外开销。

**结论** 在处理字符数据时，**BufferedReader**通常比**BufferedInputStream**更快，因为它专为字符流优化，减少了不必要的转换开销。然而，在处理字节数据时，BufferedInputStream更为合适和高效。

## NIO的实现原理

Java NIO的实现原理主要涉及到以下几个核心概念和组件：

- **Channel（通道）：** `Channel` 是 NIO 中的一个抽象概念，它类似于传统的流，但更加灵活。`Channel` 可以是读、写或者读写的，并且可以异步地进行 I/O 操作。Channel有好几种类型，其中比较常用的有FileChannel、DatagramChannel、SocketChannel、ServerSocketChannel等，这些通道涵盖了UDP和TCP网络IO以及文件IO。
- Buffer（缓冲区）：`Buffer` 是 NIO 中用于存储数据的容器。`Channel` 从 `Buffer` 中读取数据，将数据写入到 `Buffer` 中。`Buffer` 提供了对数据的结构化访问，使得读写操作更为灵活和高效。Java NIO里关键的Buffer实现有CharBuffer、ByteBuffer、ShortBuffer、IntBuffer、LongBuffer、FloatBuffer、DoubleBuffer。这些Buffer覆盖了你能通过IO发送的基本数据类型，即byte、short、int、long、float、double、char。Buffer对象包含三个重要的属性，分别是capacity、position、limit。
- **Selector（选择器）：** `Selector` 是 NIO 的关键组件之一。它允许一个线程同时监控多个 `Channel`，当其中的某个 `Channel` 发生读或写事件时，可以通过 `Selector` 得到通知。这样一个线程可以有效地管理多个网络连接。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/3B9B608579DA2CD4624EDF11CFD343CF.png)

工作原理可以分为以下几个步骤：

- **打开 Channel：** 通过 `FileChannel`、`SocketChannel`、`ServerSocketChannel` 等类的静态方法 `open()` 打开一个通道。
- **创建 Buffer：** 创建一个或多个 `Buffer`，用于读取或写入数据。
- **将数据写入 Channel：** 将数据写入 `Buffer`，然后将 `Buffer` 中的数据写入 `Channel`。
- **从 Channel 读取数据：** 将 `Channel` 中的数据读取到 `Buffer` 中。
- **注册 Channel 到 Selector：** 通过 `Selector` 监听一个或多个 `Channel`，当 `Channel` 上发生感兴趣的事件时，`Selector` 将通知程序。
- **处理事件：** 在一个循环中调用 `Selector` 的 `select()` 方法，该方法会阻塞直到至少一个注册的 `Channel` 发生了感兴趣的事件。然后通过迭代 `selectedKeys()` 获取 `SelectionKey`，从而得知哪个 `Channel` 上发生了事件。

## 介绍一下Java的序列化与反序列化

序列化机制可以将对象转换成字节序列，这些字节序列可以保存在磁盘上，也可以在网络中传输，并允许程序将这些字节序列再次恢复成原来的对象。其中，对象的序列化（Serialize），是指将一个Java对象写入IO流中，对象的反序列化（Deserialize），则是指从IO流中恢复该Java对象。

若对象要支持序列化机制，则它的类需要实现Serializable接口，该接口是一个标记接口，它没有提供任何方法，只是标明该类是可以序列化的，Java的很多类已经实现了Serializable接口，如包装类、String、Date等。

若要实现序列化，则需要使用对象流ObjectInputStream和ObjectOutputStream。其中，在序列化时需要调用ObjectOutputStream对象的writeObject()方法，以输出对象序列。在反序列化时需要调用ObjectInputStream对象的readObject()方法，将对象序列恢复为对象。