##  Java 教程 

[Java 教程](https://www.runoob.com/java/java-tutorial.html)

[Java 简介](https://www.runoob.com/java/java-intro.html)

[Java 开发环境配置](https://www.runoob.com/java/java-environment-setup.html)

[Java AI 编程助手](https://www.runoob.com/java/fitten-code-java.html)

## Java 基础语法

[Java 注释](https://www.runoob.com/java/java-comments.html)

[Java 对象和类](https://www.runoob.com/java/java-object-classes.html)

[Java 基本数据类型](https://www.runoob.com/java/java-basic-datatypes.html)

[Java 变量类型](https://www.runoob.com/java/java-variable-types.html)

[Java 变量命名规则](https://www.runoob.com/java/java-variable-naming-rules.html)

[Java 修饰符](https://www.runoob.com/java/java-modifier-types.html)

[Java 运算符](https://www.runoob.com/java/java-operators.html)

[Java 循环结构](https://www.runoob.com/java/java-loop.html)

[Java 条件语句](https://www.runoob.com/java/java-if-else-switch.html)

[Java switch case](https://www.runoob.com/java/java-switch-case.html)

[Java Number & Math 类](https://www.runoob.com/java/java-number.html)

[Java Character 类](https://www.runoob.com/java/java-character.html)

[Java String 类](https://www.runoob.com/java/java-string.html)

[Java StringBuffer](https://www.runoob.com/java/java-stringbuffer.html)

[Java 数组](https://www.runoob.com/java/java-array.html)

[Java 日期时间](https://www.runoob.com/java/java-date-time.html)

[Java 正则表达式](https://www.runoob.com/java/java-regular-expressions.html)

[Java 方法](https://www.runoob.com/java/java-methods.html)

[Java 构造方法](https://www.runoob.com/java/java-constructor.html)

[Java Stream、File、IO](https://www.runoob.com/java/java-files-io.html)

[Java Scanner 类](https://www.runoob.com/java/java-scanner-class.html)

[Java 异常处理](https://www.runoob.com/java/java-exceptions.html)

## Java 面向对象

[Java 继承](https://www.runoob.com/java/java-inheritance.html)

[Java Override/Overload](https://www.runoob.com/java/java-override-overload.html)

[Java 多态](https://www.runoob.com/java/java-polymorphism.html)

[Java 抽象类](https://www.runoob.com/java/java-abstraction.html)

[Java 封装](https://www.runoob.com/java/java-encapsulation.html)

[Java 接口](https://www.runoob.com/java/java-interfaces.html)

[Java 枚举](https://www.runoob.com/java/java-enum.html)

[Java 包(package)](https://www.runoob.com/java/java-package.html)

[Java 反射](https://www.runoob.com/java/java-reflection.html)

## Java 高级教程

[Java 数据结构](https://www.runoob.com/java/java-data-structures.html)

[Java 集合框架](https://www.runoob.com/java/java-collections.html)

[Java ArrayList](https://www.runoob.com/java/java-arraylist.html)

[Java LinkedList](https://www.runoob.com/java/java-linkedlist.html)

[Java HashSet](https://www.runoob.com/java/java-hashset.html)

[Java HashMap](https://www.runoob.com/java/java-hashmap.html)

[Java Iterator](https://www.runoob.com/java/java-iterator.html)

[Java Object](https://www.runoob.com/java/java-object-class.html)

[Java NIO Files](https://www.runoob.com/java/java-nio-file.html)

[Java 泛型](https://www.runoob.com/java/java-generics.html)

[Java 序列化](https://www.runoob.com/java/java-serialization.html)

[Java 网络编程](https://www.runoob.com/java/java-networking.html)

[Java 发送邮件](https://www.runoob.com/java/java-sending-email.html)

[Java 多线程编程](https://www.runoob.com/java/java-multithreading.html)

[Java Applet 基础](https://www.runoob.com/java/java-applet-basics.html)

[Java 文档注释](https://www.runoob.com/java/java-documentation.html)

[Java 实例](https://www.runoob.com/java/java-examples.html)

[Java 8 新特性](https://www.runoob.com/java/java8-new-features.html)

[Java MySQL 连接](https://www.runoob.com/java/java-mysql-connect.html)

[Java 9 新特性](https://www.runoob.com/java/java9-new-features.html)

[Java 测验](https://www.runoob.com/quiz/java-quiz.html)

[Java 常用类库](https://www.runoob.com/java/java-libs.html)



深入探索

编译

在线编程课程

编程实例学习

Java 高级教程

Java编程训练营

javac

Java微服务架构

Java开发工具

Java 面向对象

# Java 基础语法

一个 Java 程序可以认为是一系列对象的集合，而这些对象通过调用彼此的方法来协同工作。下面简要介绍下类、对象、方法和实例变量的概念。

- **对象**：对象是类的一个实例，有状态和行为。例如，一条狗是一个对象，它的状态有：颜色、名字、品种；行为有：摇尾巴、叫、吃等。
- **类**：类是一个模板，它描述一类对象的行为和状态。
- **方法**：方法就是行为，一个类可以有很多方法。逻辑运算、数据修改以及所有动作都是在方法中完成的。
- **实例变量**：每个对象都有独特的实例变量，对象的状态由这些实例变量的值决定。

------

## 第一个Java程序

下面看一个简单的 Java 程序，它将输出字符串 *Hello World*

## 实例

public class HelloWorld {    /* 第一个Java程序     * 它将输出字符串 Hello World     */    public static void main(String[] args) {        System.out.println("Hello World"); // 输出 Hello World    } }

[运行实例 »](https://www.runoob.com/try/runcode.php?filename=HelloWorld2&type=java)

![img](https://www.runoob.com/wp-content/uploads/2013/12/662E827A-FA32-4464-B0BD-40087F429E98.jpg)

下面将逐步介绍如何保存、编译以及运行这个程序：

- 打开代码编辑器，把上面的代码添加进去；
- 把文件名保存为：HelloWorld.java；
- 打开 cmd 命令窗口，进入目标文件所在的位置，假设是 C:\
- 在命令行窗口输入 **javac HelloWorld.java** 按下回车键编译代码。如果代码没有错误，cmd 命令提示符会进入下一行（假设环境变量都设置好了）。
- 再键输入 **java HelloWorld** 按下回车键就可以运行程序了

你将会在窗口看到 Hello World

```
$ javac HelloWorld.java
$ java HelloWorld 
Hello World
```

如果遇到编码问题，我们可以使用 **-encoding** 选项设置 **utf-8** 来编译：

```
javac -encoding UTF-8 HelloWorld.java 
java HelloWorld 
```

Gif 图演示：

![img](https://www.runoob.com/wp-content/uploads/2013/12/java-HelloWorld.gif)

------

## 基本语法

编写 Java 程序时，应注意以下几点：

- **大小写敏感**：Java 是大小写敏感的，这就意味着标识符 Hello 与 hello 是不同的。
- **类名**：对于所有的类来说，类名的首字母应该大写。如果类名由若干单词组成，那么每个单词的首字母应该大写，例如 **MyFirstJavaClass** 。
- **方法名**：所有的方法名都应该以小写字母开头。如果方法名含有若干单词，则后面的每个单词首字母大写。
- **源文件名**：源文件名必须和类名相同。当保存文件的时候，你应该使用类名作为文件名保存（切记 Java 是大小写敏感的），文件名的后缀为 **.java**。（如果文件名和类名不相同则会导致编译错误）。
- **主方法入口**：所有的 Java 程序由 **public static void main(String[] args)** 方法开始执行。

------

## Java 标识符

Java 所有的组成部分都需要名字。类名、变量名以及方法名都被称为标识符。

关于 Java 标识符，有以下几点需要注意：

- 所有的标识符都应该以字母（A-Z 或者 a-z）,美元符（$）、或者下划线（_）开始
- 首字符之后可以是字母（A-Z 或者 a-z）,美元符（$）、下划线（_）或数字的任何字符组合
- 关键字不能用作标识符
- 标识符是大小写敏感的
- 合法标识符举例：age、$salary、_value、__1_value
- 非法标识符举例：123abc、-salary

------

## Java修饰符

像其他语言一样，Java可以使用修饰符来修饰类中方法和属性。主要有两类修饰符：

- 访问控制修饰符 : default, public , protected, private
- 非访问控制修饰符 : final, abstract, static, synchronized

在后面的章节中我们会深入讨论 Java 修饰符。

------

## Java 变量

Java 中主要有如下几种类型的变量

- 局部变量
- 类变量（静态变量）
- 成员变量（非静态变量）



/**

局部变量、类变量（静态变量）、成员变量（非静态变量）

局部变量、类变量（静态变量）、成员变量（非静态变量）

局部变量、类变量（静态变量）、成员变量（非静态变量）

局部变量、类变量（静态变量）、成员变量（非静态变量）

*/



------

## Java 数组

数组是储存在堆上的对象，可以保存多个同类型变量。在后面的章节中，我们将会学到如何声明、构造以及初始化一个数组。



/**

储存在堆上的对象、保存多个同类型变量

储存在堆上的对象、保存多个同类型变量

储存在堆上的对象、保存多个同类型变量

储存在堆上的对象、保存多个同类型变量

*/



------

## Java 枚举

Java 5.0引入了枚举，枚举限制变量只能是预先设定好的值。使用枚举可以减少代码中的 bug。

例如，我们为果汁店设计一个程序，它将限制果汁为小杯、中杯、大杯。这就意味着它不允许顾客点除了这三种尺寸外的果汁。



/**

枚举限制变量，只能是预先设定好的值

枚举限制变量，只能是预先设定好的值

枚举限制变量，只能是预先设定好的值

枚举限制变量，只能是预先设定好的值

*/



## 实例

```Java
class FreshJuice {
   enum FreshJuiceSize{ SMALL, MEDIUM , LARGE }
   FreshJuiceSize size;
}
 
public class FreshJuiceTest {
   public static void main(String[] args){
      FreshJuice juice = new FreshJuice();
      juice.size = FreshJuice.FreshJuiceSize.MEDIUM  ;
   }
}
```

**注意：**枚举可以单独声明或者声明在类里面。方法、变量、构造函数也可以在枚举中定义。



/**

枚举可以单独声明，或者声明在类里面

枚举可以单独声明，或者声明在类里面

枚举可以单独声明，或者声明在类里面

枚举可以单独声明，或者声明在类里面

方法、变量、构造函数也可以在枚举中定义

方法、变量、构造函数也可以在枚举中定义

方法、变量、构造函数也可以在枚举中定义

方法、变量、构造函数也可以在枚举中定义

*/



------

## Java 关键字

下面列出了 Java 关键字。这些保留字不能用于常量、变量、和任何标识符的名称。

| 类别                 | 关键字                         | 说明                 |
| :------------------- | :----------------------------- | :------------------- |
| 访问控制             | private                        | 私有的               |
| protected            | 受保护的                       |                      |
| public               | 公共的                         |                      |
| default              | 默认                           |                      |
| 类、方法和变量修饰符 | abstract                       | 声明抽象             |
| class                | 类                             |                      |
| extends              | 扩充、继承                     |                      |
| final                | 最终值、不可改变的             |                      |
| implements           | 实现（接口）                   |                      |
| interface            | 接口                           |                      |
| native               | 本地、原生方法（非 Java 实现） |                      |
| new                  | 创建                           |                      |
| static               | 静态                           |                      |
| strictfp             | 严格浮点、精准浮点             |                      |
| synchronized         | 线程、同步                     |                      |
| transient            | 短暂                           |                      |
| volatile             | 易失                           |                      |
| 程序控制语句         | break                          | 跳出循环             |
| case                 | 定义一个值以供 switch 选择     |                      |
| continue             | 继续                           |                      |
| do                   | 运行                           |                      |
| else                 | 否则                           |                      |
| for                  | 循环                           |                      |
| if                   | 如果                           |                      |
| instanceof           | 实例                           |                      |
| return               | 返回                           |                      |
| switch               | 根据值选择执行                 |                      |
| while                | 循环                           |                      |
| 错误处理             | assert                         | 断言表达式是否为真   |
| catch                | 捕捉异常                       |                      |
| finally              | 有没有异常都执行               |                      |
| throw                | 抛出一个异常对象               |                      |
| throws               | 声明一个异常可能被抛出         |                      |
| try                  | 捕获异常                       |                      |
| 包相关               | import                         | 引入                 |
| package              | 包                             |                      |
| 基本类型             | boolean                        | 布尔型               |
| byte                 | 字节型                         |                      |
| char                 | 字符型                         |                      |
| double               | 双精度浮点                     |                      |
| float                | 单精度浮点                     |                      |
| int                  | 整型                           |                      |
| long                 | 长整型                         |                      |
| short                | 短整型                         |                      |
| 变量引用             | super                          | 父类、超类           |
| this                 | 本类                           |                      |
| void                 | 无返回值                       |                      |
| 保留关键字           | goto                           | 是关键字，但不能使用 |
| const                | 是关键字，但不能使用           |                      |

**注意：**Java 的 null 不是关键字，类似于 true 和 false，它是一个字面常量，不允许作为标识符使用。

------

## Java注释

类似于 C/C++、Java 也支持单行以及多行注释。

注释中的字符将被 Java 编译器忽略。

public class HelloWorld {   /* 这是第一个Java程序    * 它将输出 Hello World    * 这是一个多行注释的示例    */    public static void main(String[] args){       // 这是单行注释的示例       /* 这个也是单行注释的示例 */       System.out.println("Hello World");     } }

更多内容可以参考：[Java 注释](https://www.runoob.com/java/java-comments.html)。



------

## Java 空行

空白行或者有注释的行，Java 编译器都会忽略掉。



/**

空白行或者有注释的行，Java 编译器都会忽略掉

空白行或者有注释的行，Java 编译器都会忽略掉

空白行或者有注释的行，Java 编译器都会忽略掉

*/



------

## 继承

在 Java 中，一个类可以由其他类派生。如果你要创建一个类，而且已经存在一个类具有你所需要的属性或方法，那么你可以将新创建的类继承该类。

利用继承的方法，可以重用已存在类的方法和属性，而不用重写这些代码。被继承的类称为超类（super class），派生类称为子类（sub class）。



/**

一个类可以由其他类派生

利用继承的方法，可以重用已存在类的方法和属性，而不用重写这些代码

被继承的类称为超类（super class），派生类称为子类（sub class）

*/

/**

一个类可以由其他类派生

利用继承的方法，可以重用已存在类的方法和属性，而不用重写这些代码

被继承的类称为超类（super class），派生类称为子类（sub class）

*/



------

## 接口

在 Java 中，接口可理解为对象间相互通信的协议。接口在继承中扮演着很重要的角色。

接口只定义派生要用到的方法，但是方法的具体实现完全取决于派生类。



/**

对象间相互通信的协议

接口在继承中扮演着很重要的角色

接口只定义派生要用到的方法，但是方法的具体实现完全取决于派生类

*/

/**

对象间相互通信的协议

接口在继承中扮演着很重要的角色

接口只定义派生要用到的方法，但是方法的具体实现完全取决于派生类

*/



------

## Java 源程序与编译型运行区别

如下图所示：

![img](https://www.runoob.com/wp-content/uploads/2013/12/ZSSDMld.png)

下一节介绍 Java 编程中的类和对象。之后你将会对 Java 中的类和对象有更清楚的认识。



/**
Java源程序.java=》编译=》字节码程序.class=》解释执行=》解释器=》操作系统

Java源程序.java=》编译=》字节码程序.class=》解释执行=》解释器=》操作系统

Java源程序.java=》编译=》字节码程序.class=》解释执行=》解释器=》操作系统

*/



# Java 注释

在计算机语言中，注释是计算机语言的一个重要组成部分，用于在源代码中解释代码的作用，可以增强程序的可读性，可维护性。

Java 注释是一种在 Java 程序中用于提供代码功能说明的文本。

注释不会被编译器包含在最终的可执行程序中，因此不会影响程序的运行。

注释是良好的编程习惯，它们帮助程序员更容易地理解代码的用途和功能，并且在团队协作中非常有用。

Java 注释主要有三种类型：

- 单行注释
- 多行注释
- 文档注释



/**

增强程序的可读性，可维护性

用于提供代码功能说明的文本

注释不会被编译器包含在最终的可执行程序中

帮助程序员更容易地理解代码的用途和功能，在团队协作中非常有用

*/

/**

增强程序的可读性，可维护性

用于提供代码功能说明的文本

注释不会被编译器包含在最终的可执行程序中

帮助程序员更容易地理解代码的用途和功能，在团队协作中非常有用

*/



## 单行注释

单行注释以双斜杠 **//** 开始：

## 实例

// 这是一个单行注释 int x = 10; // 初始化一个变量x为10

## 多行注释

多行注释以 **/\***开始，以 ***/**结束：

## 实例

/* 这是一个多行注释 可以用来注释多行代码 */ int y = 20; // 初始化一个变量y为20

## 文档注释

文档注释以 **/\**** 开始，以 ***/** 结束，通常出现在类、方法、字段等的声明前面，用于生成代码文档，这种注释可以被工具提取并生成 API 文档，如 JavaDoc。



/**

在类、方法、字段等的声明前面

可以被工具提取并生成 API 文档，如 JavaDoc

*/

/**

在类、方法、字段等的声明前面

可以被工具提取并生成 API 文档，如 JavaDoc

*/



## 实例

/** * 这是一个文档注释示例 * 它通常包含有关类、方法或字段的详细信息 */ public class MyClass {    // 类的成员和方法 }



/**

文档注释：类、方法、字段详细说明

*/

/**

文档注释：类、方法、字段详细说明

*/



文档注释的格式通常包含一些特定的标签，如 **@param** 用于描述方法参数，**@return** 用于描述返回值，**@throws** 用于描述可能抛出的异常等等，这些标签有助于生成清晰的API文档，以便其他开发者能够更好地理解和使用你的代码。

更多文档注释的内容可以参考：[Java 文档注释](https://www.runoob.com/java/java-documentation.html)。



/**

文档注释的格式通常包含一些特定的标签

**@param** 用于描述方法参数

**@return** 用于描述返回值

**@throws** 用于描述可能抛出的异常等等

这些标签有助于生成清晰的API文档，以便其他开发者能够更好地理解和使用你的代码

*/

/**

文档注释的格式通常包含一些特定的标签

**@param** 用于描述方法参数

**@return** 用于描述返回值

**@throws** 用于描述可能抛出的异常等等

这些标签有助于生成清晰的API文档，以便其他开发者能够更好地理解和使用你的代码

*/

# Java 对象和类

Java 作为一种面向对象的编程语言，支持以下基本概念：

**1、类（Class）：**

- 定义对象的蓝图，包括属性和方法。
- 示例：`public class Car { ... }`

**2、对象（Object）**：

- 类的实例，具有状态和行为。
- 示例：`Car myCar = new Car();`

**3、继承（Inheritance）**：

- 一个类可以继承另一个类的属性和方法。
- 示例：`public class Dog extends Animal { ... }`



**4、封装（Encapsulation）**：

- 将对象的状态（字段）私有化，通过公共方法访问。

- 示例：

  ```
  private String name; 
  public String getName() { return name; }
  ```



/**

对象的状态（字段）私有化，通过公共方法访问

对象的状态（字段）私有化，通过公共方法访问

对象的状态（字段）私有化，通过公共方法访问

对象的状态（字段）私有化，通过公共方法访问

对象的状态（字段）私有化，通过公共方法访问

*/



**5、多态（Polymorphism）**：

- 对象可以表现为多种形态，主要通过方法重载和方法重写实现。
- 示例：
  - 方法重载：`public int add(int a, int b) { ... }` 和 `public double add(double a, double b) { ... }`
  - 方法重写：`@Override public void makeSound() { System.out.println("Meow"); }`



/**

对象可以表现为多种形态，主要通过方法重载和方法重写实现

对象可以表现为多种形态，主要通过方法重载和方法重写实现

对象可以表现为多种形态，主要通过方法重载和方法重写实现

对象可以表现为多种形态，主要通过方法重载和方法重写实现

对象可以表现为多种形态，主要通过方法重载和方法重写实现

*/



**6、抽象（Abstraction）**：

- 使用抽象类和接口来定义必须实现的方法，不提供具体实现。
- 示例：
  - 抽象类：`public abstract class Shape { abstract void draw(); }`
  - 接口：`public interface Animal { void eat(); }`



/**

使用抽象类和接口来定义必须实现的方法，不提供具体实现

使用抽象类和接口来定义必须实现的方法，不提供具体实现

使用抽象类和接口来定义必须实现的方法，不提供具体实现

*/



**7、接口（Interface）**：

- 定义类必须实现的方法，支持多重继承。
- 示例：`public interface Drivable { void drive(); }`



/**

定义类必须实现的方法，支持多重继承。

定义类必须实现的方法，支持多重继承。

定义类必须实现的方法，支持多重继承。

定义类必须实现的方法，支持多重继承。

*/



**8、方法（Method）**：

- 定义类的行为，包含在类中的函数。
- 示例：`public void displayInfo() { System.out.println("Info"); }`



/**

定义类的行为

定义类的行为

定义类的行为

*/



**9、方法重载（Method Overloading）**：

- 同一个类中可以有多个同名的方法，但参数不同。

- 示例：

  ```
  public class MathUtils {
      public int add(int a, int b) {
          return a + b;
      }
  
      public double add(double a, double b) {
          return a + b;
      }
  }
  ```



/**

多个同名的方法，但参数不同

多个同名的方法，但参数不同

多个同名的方法，但参数不同

*/





本节我们重点研究对象和类的概念。

- **对象**：对象是类的一个实例（**对象不是找个女朋友**），有状态和行为。例如，一条狗是一个对象，它的状态有：颜色、名字、品种；行为有：摇尾巴、叫、吃等。
- **类**：类是一个模板，它描述一类对象的行为和状态。

下图中**男孩（boy）**、**女孩（girl）**为**类（class）**，而具体的每个人为该类的**对象（object）**：

![img](https://www.runoob.com/wp-content/uploads/2013/12/object-class.jpg)

下图中**汽车**为**类（class）**，而具体的每辆车为该**汽车**类的**对象（object）**，对象包含了汽车的颜色、品牌、名称等。

![img](https://www.runoob.com/wp-content/uploads/2013/12/class-object2020-10-27.png)

------

## Java中的对象

现在让我们深入了解什么是对象。看看周围真实的世界，会发现身边有很多对象，车，狗，人等等。所有这些对象都有自己的状态和行为。

拿一条狗来举例，它的状态有：名字、品种、颜色，行为有：叫、摇尾巴和跑。

对比现实对象和软件对象，它们之间十分相似。

软件对象也有状态和行为。软件对象的状态就是属性，行为通过方法体现。

在软件开发中，方法操作对象内部状态的改变，对象的相互调用也是通过方法来完成。

## Java 中的类

类可以看成是创建 Java 对象的模板。

![img](https://www.runoob.com/wp-content/uploads/2013/12/20210105-java-object-1.png)

通过上图创建一个简单的类来理解下 Java 中类的定义：

public class Dog {    String breed;    int size;    String colour;    int age;     void eat() {    }     void run() {    }     void sleep(){    }     void name(){    } }

一个类可以包含以下类型变量：

- **局部变量**：在方法、构造方法或者语句块中定义的变量被称为局部变量。变量声明和初始化都是在方法中，方法结束后，变量就会自动销毁。
- **成员变量**：成员变量是定义在类中，方法体之外的变量。这种变量在创建对象的时候实例化。成员变量可以被类中方法、构造方法和特定类的语句块访问。
- **类变量**：类变量也声明在类中，方法体之外，但必须声明为 static 类型。

一个类可以拥有多个方法，在上面的例子中：eat()、run()、sleep() 和 name() 都是 Dog 类的方法。



/**



*/



------

## 构造方法

每个类都有构造方法。如果没有显式地为类定义构造方法，Java 编译器将会为该类提供一个默认构造方法。

在创建一个对象的时候，至少要调用一个构造方法。构造方法的名称必须与类同名，一个类可以有多个构造方法。

下面是一个构造方法示例：

public class Puppy{    public Puppy(){    }     public Puppy(String name){        // 这个构造器仅有一个参数：name    } }

------

## 创建对象

对象是根据类创建的。在Java中，使用关键字 new 来创建一个新的对象。创建对象需要以下三步：

- **声明**：声明一个对象，包括对象名称和对象类型。
- **实例化**：使用关键字 new 来创建一个对象。
- **初始化**：使用 new 创建对象时，会调用构造方法初始化对象。

下面是一个创建对象的例子：

public class Puppy{   public Puppy(String name){      //这个构造器仅有一个参数：name      System.out.println("小狗的名字是 : " + name );    }   public static void main(String[] args){      // 下面的语句将创建一个Puppy对象      Puppy myPuppy = new Puppy( "tommy" );   } }

编译并运行上面的程序，会打印出下面的结果：

```
小狗的名字是 : tommy
```

------

## 访问实例变量和方法

通过已创建的对象来访问成员变量和成员方法，如下所示：

/* 实例化对象 */ Object referenceVariable = new Constructor(); /* 访问类中的变量 */ referenceVariable.variableName; /* 访问类中的方法 */ referenceVariable.methodName();

使用 Object 类型声明变量只能在编译时访问 Object 类中的方法和属性，但在运行时，你可以通过强制类型转换将其转换为特定类型，以便访问特定类型的方法和属性。

------

## 实例

下面的例子展示如何访问实例变量和调用成员方法：

## Puppy.java 文件代码：

public class Puppy {    private int age;    private String name;     // 构造器    public Puppy(String name) {        this.name = name;        System.out.println("小狗的名字是 : " + name);    }     // 设置 age 的值    public void setAge(int age) {        this.age = age;    }     // 获取 age 的值    public int getAge() {        return age;    }     // 获取 name 的值    public String getName() {        return name;    }     // 主方法    public static void main(String[] args) {        // 创建对象        Puppy myPuppy = new Puppy("Tommy");         // 通过方法来设定 age        myPuppy.setAge(2);         // 调用另一个方法获取 age        int age = myPuppy.getAge();        System.out.println("小狗的年龄为 : " + age);         // 也可以直接访问成员变量（通过 getter 方法）        System.out.println("变量值 : " + myPuppy.getAge());    } }

编译并运行上面的程序，产生如下结果：

```
小狗的名字是 : tommy
小狗的年龄为 : 2
变量值 : 2
```

------

## 源文件声明规则

在本节的最后部分，我们将学习源文件的声明规则。当在一个源文件中定义多个类，并且还有 import 语句和 package 语句时，要特别注意这些规则。

- 一个源文件中只能有一个 public 类
- 一个源文件可以有多个非 public 类
- 源文件的名称应该和 public 类的类名保持一致。例如：源文件中 public 类的类名是 Employee，那么源文件应该命名为Employee.java。
- 如果一个类定义在某个包中，那么 package 语句应该在源文件的首行。
- 如果源文件包含 import 语句，那么应该放在 package 语句和类定义之间。如果没有 package 语句，那么 import 语句应该在源文件中最前面。
- import 语句和 package 语句对源文件中定义的所有类都有效。在同一源文件中，不能给不同的类不同的包声明。

类有若干种访问级别，并且类也分不同的类型：抽象类和 final 类等。这些将在访问控制章节介绍。

除了上面提到的几种类型，Java 还有一些特殊的类，如：[内部类](https://www.runoob.com/java/java-inner-class.html)、[匿名类](https://www.runoob.com/java/java-anonymous-class.html)。

------

## Java 包

包主要用来对类和接口进行分类。当开发 Java 程序时，可能编写成百上千的类，因此很有必要对类和接口进行分类。

## import 语句

在 Java 中，如果给出一个完整的限定名，包括包名、类名，那么 Java 编译器就可以很容易地定位到源代码或者类。import 语句就是用来提供一个合理的路径，使得编译器可以找到某个类。

例如，下面的命令行将会命令编译器载入 java_installation/java/io 路径下的所有类

```
import java.io.*;
```

------

## 一个简单的例子

在该例子中，我们创建两个类：**Employee** 和 **EmployeeTest**。

首先打开代码编辑器，把下面的代码粘贴进去，将文件保存为 **Employee.java**。

Employee 类有四个成员变量：name、age、designation 和 salary，该类显式声明了一个构造方法，该方法只有一个参数。

## Employee.java 文件代码：

import java.io.*;  public class Employee {    private String name;    private int age;    private String designation;    private double salary;     // Employee 类的构造器    public Employee(String name) {        this.name = name;    }     // 设置 age 的值    public void setAge(int age) {        this.age = age;    }     // 获取 age 的值    public int getAge() {        return age;    }     // 设置 designation 的值    public void setDesignation(String designation) {        this.designation = designation;    }     // 获取 designation 的值    public String getDesignation() {        return designation;    }     // 设置 salary 的值    public void setSalary(double salary) {        this.salary = salary;    }     // 获取 salary 的值    public double getSalary() {        return salary;    }     // 打印信息    public void printEmployee() {        System.out.println(this);    }     // 重写 toString 方法    @Override    public String toString() {        return "名字: " + name + "\n" +               "年龄: " + age + "\n" +               "职位: " + designation + "\n" +               "薪水: " + salary;    } }

Java 程序都是从 **main** 方法开始执行，为了能运行这个程序，必须包含 main 方法并且创建一个实例对象。

下面给出 EmployeeTest 类，该类实例化 2 个 Employee 类的实例，并调用方法设置变量的值。

将下面的代码保存在 EmployeeTest.java文件中。

## EmployeeTest.java 文件代码：

import java.io.*;  public class EmployeeTest {    public static void main(String[] args) {        // 使用构造器创建两个对象        Employee empOne = new Employee("RUNOOB1");        Employee empTwo = new Employee("RUNOOB2");         // 调用这两个对象的成员方法        empOne.setAge(26);        empOne.setDesignation("高级程序员");        empOne.setSalary(1000);        empOne.printEmployee();         empTwo.setAge(21);        empTwo.setDesignation("菜鸟程序员");        empTwo.setSalary(500);        empTwo.printEmployee();    } }

编译这两个文件并且运行 EmployeeTest 类，可以看到如下结果：

```
$ javac EmployeeTest.java Employee.java
$ java EmployeeTest 
名字:RUNOOB1
年龄:26
职位:高级程序员
薪水:1000.0
名字:RUNOOB2
年龄:21
职位:菜鸟程序员
薪水:500.0
```
