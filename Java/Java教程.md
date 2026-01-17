# Java 教程

# Java 简介

# Java 开发环境配置

# Java AI 编程助手

# Java 基础语法

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

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/662E827A-FA32-4464-B0BD-40087F429E98.jpg)

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

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/java-HelloWorld.gif)

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

------

## Java 数组

数组是储存在堆上的对象，可以保存多个同类型变量。在后面的章节中，我们将会学到如何声明、构造以及初始化一个数组。

------

## Java 枚举

Java 5.0引入了枚举，枚举限制变量只能是预先设定好的值。使用枚举可以减少代码中的 bug。

例如，我们为果汁店设计一个程序，它将限制果汁为小杯、中杯、大杯。这就意味着它不允许顾客点除了这三种尺寸外的果汁。

### 实例

class FreshJuice {   enum FreshJuiceSize{ SMALL, MEDIUM , LARGE }   FreshJuiceSize size; }  public class FreshJuiceTest {   public static void main(String[] args){      FreshJuice juice = new FreshJuice();      juice.size = FreshJuice.FreshJuiceSize.MEDIUM  ;   } }

**注意：**枚举可以单独声明或者声明在类里面。方法、变量、构造函数也可以在枚举中定义。

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

------

## 继承

在 Java 中，一个类可以由其他类派生。如果你要创建一个类，而且已经存在一个类具有你所需要的属性或方法，那么你可以将新创建的类继承该类。

利用继承的方法，可以重用已存在类的方法和属性，而不用重写这些代码。被继承的类称为超类（super class），派生类称为子类（sub class）。

------

## 接口

在 Java 中，接口可理解为对象间相互通信的协议。接口在继承中扮演着很重要的角色。

接口只定义派生要用到的方法，但是方法的具体实现完全取决于派生类。

------

## Java 源程序与编译型运行区别

如下图所示：

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/ZSSDMld.png)

下一节介绍 Java 编程中的类和对象。之后你将会对 Java 中的类和对象有更清楚的认识。

# Java 注释

# Java 对象和类

Java 作为一种面向对象的编程语言，支持以下基本概念：

1、**类（Class）**：

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

**5、多态（Polymorphism）**：

- 对象可以表现为多种形态，主要通过方法重载和方法重写实现。
- 示例：
  - 方法重载：`public int add(int a, int b) { ... }` 和 `public double add(double a, double b) { ... }`
  - 方法重写：`@Override public void makeSound() { System.out.println("Meow"); }`

**6、抽象（Abstraction）**：

- 使用抽象类和接口来定义必须实现的方法，不提供具体实现。
- 示例：
  - 抽象类：`public abstract class Shape { abstract void draw(); }`
  - 接口：`public interface Animal { void eat(); }`

**7、接口（Interface）**：

- 定义类必须实现的方法，支持多重继承。
- 示例：`public interface Drivable { void drive(); }`

**8、方法（Method）**：

- 定义类的行为，包含在类中的函数。
- 示例：`public void displayInfo() { System.out.println("Info"); }`

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

本节我们重点研究对象和类的概念。

- **对象**：对象是类的一个实例（**对象不是找个女朋友**），有状态和行为。例如，一条狗是一个对象，它的状态有：颜色、名字、品种；行为有：摇尾巴、叫、吃等。
- **类**：类是一个模板，它描述一类对象的行为和状态。

下图中**男孩（boy）**、**女孩（girl）**为**类（class）**，而具体的每个人为该类的**对象（object）**：

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/object-class.jpg)

下图中**汽车**为**类（class）**，而具体的每辆车为该**汽车**类的**对象（object）**，对象包含了汽车的颜色、品牌、名称等。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/class-object2020-10-27.png)

------

## Java中的对象



现在让我们深入了解什么是对象。看看周围真实的世界，会发现身边有很多对象，车，狗，人等等。所有这些对象都有自己的状态和行为。

拿一条狗来举例，它的状态有：名字、品种、颜色，行为有：叫、摇尾巴和跑。

对比现实对象和软件对象，它们之间十分相似。

软件对象也有状态和行为。软件对象的状态就是属性，行为通过方法体现。

在软件开发中，方法操作对象内部状态的改变，对象的相互调用也是通过方法来完成。

## Java 中的类

类可以看成是创建 Java 对象的模板。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/20210105-java-object-1.png)

通过上图创建一个简单的类来理解下 Java 中类的定义：

public class Dog {    String breed;    int size;    String colour;    int age;     void eat() {    }     void run() {    }     void sleep(){    }     void name(){    } }

一个类可以包含以下类型变量：

- **局部变量**：在方法、构造方法或者语句块中定义的变量被称为局部变量。变量声明和初始化都是在方法中，方法结束后，变量就会自动销毁。
- **成员变量**：成员变量是定义在类中，方法体之外的变量。这种变量在创建对象的时候实例化。成员变量可以被类中方法、构造方法和特定类的语句块访问。
- **类变量**：类变量也声明在类中，方法体之外，但必须声明为 static 类型。

一个类可以拥有多个方法，在上面的例子中：eat()、run()、sleep() 和 name() 都是 Dog 类的方法。

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

# Java 基本数据类型

# Java 变量类型

# Java 变量命名规则

# Java 修饰符

# Java 运算符

# Java 循环结构

# Java 条件语句

# Java switch case

# Java Number & Math 类

## Java Number

一般地，当需要使用数字的时候，我们通常使用内置数据类型，如：**byte、int、long、double** 等。

## 实例

int a = 5000; float b = 13.65f; byte c = 0x4a;

然而，在实际开发过程中，我们经常会遇到需要使用对象，而不是内置数据类型的情形。为了解决这个问题，Java 语言为每一个内置数据类型提供了对应的包装类。

所有的包装类**（Integer、Long、Byte、Double、Float、Short）**都是抽象类 Number 的子类。

| 类名       | 对应基本类型 | 描述                         |
| :--------- | :----------- | :--------------------------- |
| Byte       | byte         | 字节型包装类                 |
| Short      | short        | 短整型包装类                 |
| Integer    | int          | 整型包装类                   |
| Long       | long         | 长整型包装类                 |
| Float      | float        | 单精度浮点型包装类           |
| Double     | double       | 双精度浮点型包装类           |
| BigInteger | -            | 不可变任意精度整数           |
| BigDecimal | -            | 不可变任意精度有符号十进制数 |

![Java Number类](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/OOP_WrapperClass.png)

这种由编译器特别支持的包装称为装箱，所以当内置数据类型被当作对象使用的时候，编译器会把内置类型装箱为包装类。相似的，编译器也可以把一个对象拆箱为内置类型。

Number 类属于 java.lang 包。

Number 是一个抽象类，主要作用是为各种数值类型提供统一的转换方法：

## 实例

**public** **abstract** **class** Number **implements** Serializable {
  *// 抽象方法*
  **public** **abstract** **int** intValue();
  **public** **abstract** **long** longValue();
  **public** **abstract** **float** floatValue();
  **public** **abstract** **double** doubleValue();
  
  *// Java 8 新增*
  **public** **byte** byteValue() {
    **return** (**byte**)intValue();
  }
  **public** **short** shortValue() {
    **return** (**short**)intValue();
  }
}

下面是一个使用 Integer 对象的实例：

## Test.java 文件代码：

public class Test{    public static void main(String[] args){      Integer x = 5;      x =  x + 10;      System.out.println(x);    } }

以上实例编译运行结果如下：

```
15
```

当 x 被赋为整型值时，由于x是一个对象，所以编译器要对x进行装箱。然后，为了使x能进行加运算，所以要对x进行拆箱。

### 常用方法示例

#### 基本类型转换

## 实例

Number num = 1234.56; *// 实际是Double类型*

System.out.println(num.intValue());   *// 1234 (截断小数)*
System.out.println(num.longValue());  *// 1234*
System.out.println(num.floatValue()); *// 1234.56*
System.out.println(num.doubleValue()); *// 1234.56*

#### 数值比较

## 实例

java
Integer x = 10;
Double y = 10.0;

*// 正确比较方式：转换为同一类型后比较*
System.out.println(x.doubleValue() == y.doubleValue()); *// true*

### 特殊数值处理

#### 处理大数

## 实例

BigInteger bigInt = **new** BigInteger("12345678901234567890");
BigDecimal bigDec = **new** BigDecimal("1234567890.1234567890");

*// 大数运算*
BigInteger sum = bigInt.add(**new** BigInteger("1"));
BigDecimal product = bigDec.multiply(**new** BigDecimal("2"));

#### 数值格式化

## 实例

NumberFormat nf = NumberFormat.getInstance();
nf.setMaximumFractionDigits(2);

System.out.println(nf.format(1234.5678)); *// "1,234.57"*

### 自动装箱与拆箱

Java 5+ 支持自动转换：

## 实例

*// 自动装箱*
Integer autoBoxed = 42; *// 编译器转换为 Integer.valueOf(42)*

*// 自动拆箱*
**int** autoUnboxed = autoBoxed; *// 编译器转换为 autoBoxed.intValue()*

------

## Java Math 类

Math 类是 Java 提供的数学工具类，位于 java.lang 包中，包含执行基本数值运算的静态方法。

Java 的 Math 包含了用于执行基本数学运算的属性和方法，如初等指数、对数、平方根和三角函数。

Math 的方法都被定义为 static 形式，通过 Math 类可以在主函数中直接调用。

## Test.java 文件代码：

public class Test {      public static void main (String []args)      {          System.out.println("90 度的正弦值：" + Math.sin(Math.PI/2));          System.out.println("0度的余弦值：" + Math.cos(0));          System.out.println("60度的正切值：" + Math.tan(Math.PI/3));          System.out.println("1的反正切值： " + Math.atan(1));          System.out.println("π/2的角度值：" + Math.toDegrees(Math.PI/2));          System.out.println(Math.PI);      }   }

以上实例编译运行结果如下：

```
90 度的正弦值：1.0
0度的余弦值：1.0
60度的正切值：1.7320508075688767
1的反正切值： 0.7853981633974483
π/2的角度值：90.0
3.141592653589793
```

### 高级数学运算

#### 1. 指数对数运算

## 实例

Math.exp(1);   *// e^1 ≈ 2.718*
Math.log(Math.E); *// ln(e) = 1*
Math.log10(100); *// log10(100) = 2*

#### 2. 随机数生成

## 实例

*// 生成[0.0, 1.0)之间的随机数*
**double** random = Math.random();

*// 生成[1, 100]的随机整数*
**int** randomInt = (**int**)(Math.random() * 100) + 1;

#### 3. 其他运算

## 实例

Math.hypot(3, 4); *// 计算sqrt(x²+y²) → 5.0*
Math.IEEEremainder(10, 3); *// IEEE余数 → 1.0*

#### 4. 常量字段

## 实例

Math.PI;   *// π ≈ 3.141592653589793*
Math.E;   *// 自然对数底数e ≈ 2.718281828459045*

------

## Number & Math 类方法

下面的表中列出的是 Number & Math 类常用的一些方法：

| 序号 | 方法与描述                                                   |
| :--- | :----------------------------------------------------------- |
| 1    | [xxxValue()](https://www.runoob.com/java/number-xxxvalue.html) 将 Number 对象转换为xxx数据类型的值并返回。 |
| 2    | [compareTo()](https://www.runoob.com/java/number-compareto.html) 将number对象与参数比较。 |
| 3    | [equals()](https://www.runoob.com/java/number-equals.html) 判断number对象是否与参数相等。 |
| 4    | [valueOf()](https://www.runoob.com/java/number-valueof.html) 返回一个 Number 对象指定的内置数据类型 |
| 5    | [toString()](https://www.runoob.com/java/number-tostring.html) 以字符串形式返回值。 |
| 6    | [parseInt()](https://www.runoob.com/java/number-parseInt.html) 将字符串解析为int类型。 |
| 7    | [abs()](https://www.runoob.com/java/number-abs.html) 返回参数的绝对值。 |
| 8    | [ceil()](https://www.runoob.com/java/number-ceil.html) 返回大于等于( >= )给定参数的的最小整数，类型为双精度浮点型。 |
| 9    | [floor()](https://www.runoob.com/java/number-floor.html) 返回小于等于（<=）给定参数的最大整数 。 |
| 10   | [rint()](https://www.runoob.com/java/number-rint.html) 返回与参数最接近的整数。返回类型为double。 |
| 11   | [round()](https://www.runoob.com/java/number-round.html) 它表示**四舍五入**，算法为 **Math.floor(x+0.5)**，即将原来的数字加上 0.5 后再向下取整，所以，Math.round(11.5) 的结果为12，Math.round(-11.5) 的结果为-11。 |
| 12   | [min()](https://www.runoob.com/java/number-min.html) 返回两个参数中的最小值。 |
| 13   | [max()](https://www.runoob.com/java/number-max.html) 返回两个参数中的最大值。 |
| 14   | [exp()](https://www.runoob.com/java/number-exp.html) 返回自然数底数e的参数次方。 |
| 15   | [log()](https://www.runoob.com/java/number-log.html) 返回参数的自然数底数的对数值。 |
| 16   | [pow()](https://www.runoob.com/java/number-pow.html) 返回第一个参数的第二个参数次方。 |
| 17   | [sqrt()](https://www.runoob.com/java/number-sqrt.html) 求参数的算术平方根。 |
| 18   | [sin()](https://www.runoob.com/java/number-sin.html) 求指定double类型参数的正弦值。 |
| 19   | [cos()](https://www.runoob.com/java/number-cos.html) 求指定double类型参数的余弦值。 |
| 20   | [tan()](https://www.runoob.com/java/number-tan.html) 求指定double类型参数的正切值。 |
| 21   | [asin()](https://www.runoob.com/java/number-asin.html) 求指定double类型参数的反正弦值。 |
| 22   | [acos()](https://www.runoob.com/java/number-acos.html) 求指定double类型参数的反余弦值。 |
| 23   | [atan()](https://www.runoob.com/java/number-atan.html) 求指定double类型参数的反正切值。 |
| 24   | [atan2()](https://www.runoob.com/java/number-atan2.html) 将笛卡尔坐标转换为极坐标，并返回极坐标的角度值。 |
| 25   | [toDegrees()](https://www.runoob.com/java/number-todegrees.html) 将参数转化为角度。 |
| 26   | [toRadians()](https://www.runoob.com/java/number-toradians.html) 将角度转换为弧度。 |
| 27   | [random()](https://www.runoob.com/java/number-random.html) 返回一个随机数。 |

------

## Math 的 floor,round 和 ceil 方法实例比较

| 参数 | Math.floor | Math.round | Math.ceil |
| :--- | :--------- | :--------- | :-------- |
| 1.4  | 1          | 1          | 2         |
| 1.5  | 1          | 2          | 2         |
| 1.6  | 1          | 2          | 2         |
| -1.4 | -2         | -1         | -1        |
| -1.5 | -2         | -1         | -1        |
| -1.6 | -2         | -2         | -1        |

## floor,round 和 ceil 实例：

public class Main {     public static void main(String[] args) {       double[] nums = { 1.4, 1.5, 1.6, -1.4, -1.5, -1.6 };       for (double num : nums) {         test(num);       }     }       private static void test(double num) {       System.out.println("Math.floor(" + num + ")=" + Math.floor(num));       System.out.println("Math.round(" + num + ")=" + Math.round(num));       System.out.println("Math.ceil(" + num + ")=" + Math.ceil(num));     }    }

以上实例执行输出结果为：

```
Math.floor(1.4)=1.0
Math.round(1.4)=1
Math.ceil(1.4)=2.0
Math.floor(1.5)=1.0
Math.round(1.5)=2
Math.ceil(1.5)=2.0
Math.floor(1.6)=1.0
Math.round(1.6)=2
Math.ceil(1.6)=2.0
Math.floor(-1.4)=-2.0
Math.round(-1.4)=-1
Math.ceil(-1.4)=-1.0
Math.floor(-1.5)=-2.0
Math.round(-1.5)=-1
Math.ceil(-1.5)=-1.0
Math.floor(-1.6)=-2.0
Math.round(-1.6)=-2
Math.ceil(-1.6)=-1.0
```

# Java Character 类

Character 类用于对单个字符进行操作。

Character 类在对象中包装一个基本类型 **char** 的值

## 实例

char ch = 'a';  // Unicode 字符表示形式 char uniChar = '\u039A';   // 字符数组 char[] charArray ={ 'a', 'b', 'c', 'd', 'e' };

然而，在实际开发过程中，我们经常会遇到需要使用对象，而不是内置数据类型的情况。为了解决这个问题，Java语言为内置数据类型char提供了包装类Character类。

Character类提供了一系列方法来操纵字符。你可以使用Character的构造方法创建一个Character类对象，例如：

Character ch = new Character('a');

在某些情况下，Java编译器会自动创建一个Character对象。

例如，将一个char类型的参数传递给需要一个Character类型参数的方法时，那么编译器会自动地将char类型参数转换为Character对象。 这种特征称为装箱，反过来称为拆箱。

## 实例

// 原始字符 'a' 装箱到 Character 对象 ch 中 Character ch = 'a';  // 原始字符 'x' 用 test 方法装箱 // 返回拆箱的值到 'c' char c = test('x');

------

## 转义序列

前面有反斜杠（\）的字符代表转义字符，它对编译器来说是有特殊含义的。

下面列表展示了Java的转义序列：

| 转义序列 | 描述                     |
| :------- | :----------------------- |
| \t       | 在文中该处插入一个tab键  |
| \b       | 在文中该处插入一个后退键 |
| \n       | 在文中该处换行           |
| \r       | 在文中该处插入回车       |
| \f       | 在文中该处插入换页符     |
| \'       | 在文中该处插入单引号     |
| \"       | 在文中该处插入双引号     |
| \\       | 在文中该处插入反斜杠     |

### 实例

当打印语句遇到一个转义序列时，编译器可以正确地对其进行解释。

以下实例转义双引号并输出：

## Test.java 文件代码：

public class Test {    public static void main(String[] args) {      System.out.println("访问\"菜鸟教程!\"");   } }

以上实例编译运行结果如下：

```
访问"菜鸟教程!"
```

------

## Character 方法

下面是Character类的方法：

| 序号 | 方法与描述                                                   |
| :--- | :----------------------------------------------------------- |
| 1    | [isLetter()](https://www.runoob.com/java/character-isletter.html) 是否是一个字母 |
| 2    | [isDigit()](https://www.runoob.com/java/character-isdigit.html) 是否是一个数字字符 |
| 3    | [isWhitespace()](https://www.runoob.com/java/character-iswhitespace.html) 是否是一个空白字符 |
| 4    | [isUpperCase()](https://www.runoob.com/java/character-isuppercase.html) 是否是大写字母 |
| 5    | [isLowerCase()](https://www.runoob.com/java/character-islowercase.html) 是否是小写字母 |
| 6    | [toUpperCase()](https://www.runoob.com/java/character-touppercase.html) 指定字母的大写形式 |
| 7    | [toLowerCase](https://www.runoob.com/java/character-tolowercase.html)() 指定字母的小写形式 |
| 8    | [toString](https://www.runoob.com/java/character-tostring.html)() 返回字符的字符串形式，字符串的长度仅为1 |

对于方法的完整列表，请参考的 [java.lang.Character API](https://www.runoob.com/manual/jdk11api/java.base/java/lang/Character.html) 规范。

# Java String 类

字符串广泛应用 在 Java 编程中，在 Java 中字符串属于对象，Java 提供了 String 类来创建和操作字符串。

------

## 创建字符串

创建字符串最简单的方式如下:

String str = "Runoob";

在代码中遇到字符串常量时，这里的值是 "**Runoob**"，编译器会使用该值创建一个 String 对象。

和其它对象一样，可以使用关键字和构造方法来创建 String 对象。

用构造函数创建字符串：

String str2=new String("Runoob");

String 创建的字符串存储在公共池中，而 new 创建的字符串对象在堆上：

String s1 = "Runoob";              // String 直接创建 String s2 = "Runoob";              // String 直接创建 String s3 = s1;                    // 相同引用 String s4 = new String("Runoob");   // String 对象创建 String s5 = new String("Runoob");   // String 对象创建

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/java-string-1-2020-12-01.png)



String 类有 11 种构造方法，这些方法提供不同的参数来初始化字符串，比如提供一个字符数组参数:

## StringDemo.java 文件代码：

public class StringDemo{   public static void main(String args[]){      char[] helloArray = { 'r', 'u', 'n', 'o', 'o', 'b'};      String helloString = new String(helloArray);        System.out.println( helloString );   } }

以上实例编译运行结果如下：

```
runoob
```

**注意:**String 类是不可改变的，所以你一旦创建了 String 对象，那它的值就无法改变了（详看笔记部分解析）。

如果需要对字符串做很多修改，那么应该选择使用 [StringBuffer & StringBuilder 类](https://www.runoob.com/java/java-stringbuffer.html)。

------

## 字符串长度



用于获取有关对象的信息的方法称为访问器方法。

String 类的一个访问器方法是 length() 方法，它返回字符串对象包含的字符数。

下面的代码执行后，len 变量等于 14:

## StringDemo.java 文件代码：

public class StringDemo {    public static void main(String args[]) {        String site = "www.runoob.com";        int len = site.length();        System.out.println( "菜鸟教程网址长度 : " + len );   } }

以上实例编译运行结果如下：

```
菜鸟教程网址长度 : 14
```

------

## 连接字符串

String 类提供了连接两个字符串的方法：

string1.concat(string2);

返回 string2 连接 string1 的新字符串。也可以对字符串常量使用 concat() 方法，如：

```
"我的名字是 ".concat("Runoob");
```

更常用的是使用'+'操作符来连接字符串，如：

```
"Hello," + " runoob" + "!"
```

结果如下:

```
"Hello, runoob!"
```

下面是一个例子:

## StringDemo.java 文件代码：

public class StringDemo {    public static void main(String args[]) {             String string1 = "菜鸟教程网址：";             System.out.println("1、" + string1 + "www.runoob.com");      } }

以上实例编译运行结果如下：

```
1、菜鸟教程网址：www.runoob.com
```

------

## 创建格式化字符串

我们知道输出格式化数字可以使用 printf() 和 format() 方法。

String 类使用静态方法 format() 返回一个String 对象而不是 PrintStream 对象。

String 类的静态方法 format() 能用来创建可复用的格式化字符串，而不仅仅是用于一次打印输出。

如下所示：

System.out.printf("浮点型变量的值为 " +                  "%f, 整型变量的值为 " +                  " %d, 字符串变量的值为 " +                  "is %s", floatVar, intVar, stringVar);

你也可以这样写

String fs; fs = String.format("浮点型变量的值为 " +                   "%f, 整型变量的值为 " +                   " %d, 字符串变量的值为 " +                   " %s", floatVar, intVar, stringVar);

------

## String 方法

下面是 String 类支持的方法，更多详细，参看 [Java String API](https://www.runoob.com/manual/jdk11api/java.base/java/lang/String.html) 文档:

| SN(序号) | 方法描述                                                     |
| :------- | :----------------------------------------------------------- |
| 1        | [char charAt(int index)](https://www.runoob.com/java/java-string-charat.html) 返回指定索引处的 char 值。 |
| 2        | [int compareTo(Object o)](https://www.runoob.com/java/java-string-compareto.html) 把这个字符串和另一个对象比较。 |
| 3        | [int compareTo(String anotherString)](https://www.runoob.com/java/java-string-compareto.html) 按字典顺序比较两个字符串。 |
| 4        | [int compareToIgnoreCase(String str)](https://www.runoob.com/java/java-string-comparetoignorecase.html) 按字典顺序比较两个字符串，不考虑大小写。 |
| 5        | [String concat(String str)](https://www.runoob.com/java/java-string-concat.html) 将指定字符串连接到此字符串的结尾。 |
| 6        | [boolean contentEquals(StringBuffer sb)](https://www.runoob.com/java/java-string-contentequals.html) 当且仅当字符串与指定的StringBuffer有相同顺序的字符时候返回真。 |
| 7        | [static String copyValueOf(char[\] data)](https://www.runoob.com/java/java-string-copyvalueof.html) 返回指定数组中表示该字符序列的 String。 |
| 8        | [static String copyValueOf(char[\] data, int offset, int count)](https://www.runoob.com/java/java-string-copyvalueof.html) 返回指定数组中表示该字符序列的 String。 |
| 9        | [boolean endsWith(String suffix)](https://www.runoob.com/java/java-string-endswith.html) 测试此字符串是否以指定的后缀结束。 |
| 10       | [boolean equals(Object anObject)](https://www.runoob.com/java/java-string-equals.html) 将此字符串与指定的对象比较。 |
| 11       | [boolean equalsIgnoreCase(String anotherString)](https://www.runoob.com/java/java-string-equalsignorecase.html) 将此 String 与另一个 String 比较，不考虑大小写。 |
| 12       | [byte[\] getBytes()](https://www.runoob.com/java/java-string-getbytes.html)  使用平台的默认字符集将此 String 编码为 byte 序列，并将结果存储到一个新的 byte 数组中。 |
| 13       | [byte[\] getBytes(String charsetName)](https://www.runoob.com/java/java-string-getbytes.html) 使用指定的字符集将此 String 编码为 byte 序列，并将结果存储到一个新的 byte 数组中。 |
| 14       | [void getChars(int srcBegin, int srcEnd, char[\] dst, int dstBegin)](https://www.runoob.com/java/java-string-getchars.html) 将字符从此字符串复制到目标字符数组。 |
| 15       | [int hashCode()](https://www.runoob.com/java/java-string-hashcode.html) 返回此字符串的哈希码。 |
| 16       | [int indexOf(int ch)](https://www.runoob.com/java/java-string-indexof.html) 返回指定字符在此字符串中第一次出现处的索引。 |
| 17       | [int indexOf(int ch, int fromIndex)](https://www.runoob.com/java/java-string-indexof.html) 返回在此字符串中第一次出现指定字符处的索引，从指定的索引开始搜索。 |
| 18       | [int indexOf(String str)](https://www.runoob.com/java/java-string-indexof.html)  返回指定子字符串在此字符串中第一次出现处的索引。 |
| 19       | [int indexOf(String str, int fromIndex)](https://www.runoob.com/java/java-string-indexof.html) 返回指定子字符串在此字符串中第一次出现处的索引，从指定的索引开始。 |
| 20       | [String intern()](https://www.runoob.com/java/java-string-intern.html)  返回字符串对象的规范化表示形式。 |
| 21       | [int lastIndexOf(int ch)](https://www.runoob.com/java/java-string-lastindexof.html)  返回指定字符在此字符串中最后一次出现处的索引。 |
| 22       | [int lastIndexOf(int ch, int fromIndex)](https://www.runoob.com/java/java-string-lastindexof.html) 返回指定字符在此字符串中最后一次出现处的索引，从指定的索引处开始进行反向搜索。 |
| 23       | [int lastIndexOf(String str)](https://www.runoob.com/java/java-string-lastindexof.html) 返回指定子字符串在此字符串中最右边出现处的索引。 |
| 24       | [int lastIndexOf(String str, int fromIndex)](https://www.runoob.com/java/java-string-lastindexof.html)  返回指定子字符串在此字符串中最后一次出现处的索引，从指定的索引开始反向搜索。 |
| 25       | [int length()](https://www.runoob.com/java/java-string-length.html) 返回此字符串的长度。 |
| 26       | [boolean matches(String regex)](https://www.runoob.com/java/java-string-matches.html) 告知此字符串是否匹配给定的正则表达式。 |
| 27       | [boolean regionMatches(boolean ignoreCase, int toffset, String other, int ooffset, int len)](https://www.runoob.com/java/java-string-regionmatches.html) 测试两个字符串区域是否相等。 |
| 28       | [boolean regionMatches(int toffset, String other, int ooffset, int len)](https://www.runoob.com/java/java-string-regionmatches.html) 测试两个字符串区域是否相等。 |
| 29       | [String replace(char oldChar, char newChar)](https://www.runoob.com/java/java-string-replace.html) 返回一个新的字符串，它是通过用 newChar 替换此字符串中出现的所有 oldChar 得到的。 |
| 30       | [String replaceAll(String regex, String replacement)](https://www.runoob.com/java/java-string-replaceall.html) 使用给定的 replacement 替换此字符串所有匹配给定的正则表达式的子字符串。 |
| 31       | [String replaceFirst(String regex, String replacement)](https://www.runoob.com/java/java-string-replacefirst.html)  使用给定的 replacement 替换此字符串匹配给定的正则表达式的第一个子字符串。 |
| 32       | [String[\] split(String regex)](https://www.runoob.com/java/java-string-split.html) 根据给定正则表达式的匹配拆分此字符串。 |
| 33       | [String[\] split(String regex, int limit)](https://www.runoob.com/java/java-string-split.html) 根据匹配给定的正则表达式来拆分此字符串。 |
| 34       | [boolean startsWith(String prefix)](https://www.runoob.com/java/java-string-startswith.html) 测试此字符串是否以指定的前缀开始。 |
| 35       | [boolean startsWith(String prefix, int toffset)](https://www.runoob.com/java/java-string-startswith.html) 测试此字符串从指定索引开始的子字符串是否以指定前缀开始。 |
| 36       | [CharSequence subSequence(int beginIndex, int endIndex)](https://www.runoob.com/java/java-string-subsequence.html)  返回一个新的字符序列，它是此序列的一个子序列。 |
| 37       | [String substring(int beginIndex)](https://www.runoob.com/java/java-string-substring.html) 返回一个新的字符串，它是此字符串的一个子字符串。 |
| 38       | [String substring(int beginIndex, int endIndex)](https://www.runoob.com/java/java-string-substring.html) 返回一个新字符串，它是此字符串的一个子字符串。 |
| 39       | [char[\] toCharArray()](https://www.runoob.com/java/java-string-tochararray.html) 将此字符串转换为一个新的字符数组。 |
| 40       | [String toLowerCase()](https://www.runoob.com/java/java-string-tolowercase.html) 使用默认语言环境的规则将此 String 中的所有字符都转换为小写。 |
| 41       | [String toLowerCase(Locale locale)](https://www.runoob.com/java/java-string-tolowercase.html)  使用给定 Locale 的规则将此 String 中的所有字符都转换为小写。 |
| 42       | [String toString()](https://www.runoob.com/java/java-string-tostring.html)  返回此对象本身（它已经是一个字符串！）。 |
| 43       | [String toUpperCase()](https://www.runoob.com/java/java-string-touppercase.html) 使用默认语言环境的规则将此 String 中的所有字符都转换为大写。 |
| 44       | [String toUpperCase(Locale locale)](https://www.runoob.com/java/java-string-touppercase.html) 使用给定 Locale 的规则将此 String 中的所有字符都转换为大写。 |
| 45       | [String trim()](https://www.runoob.com/java/java-string-trim.html) 返回字符串的副本，忽略前导空白和尾部空白。 |
| 46       | [static String valueOf(primitive data type x)](https://www.runoob.com/java/java-string-valueof.html) 返回给定data type类型x参数的字符串表示形式。 |
| 47       | [contains(CharSequence chars)](https://www.runoob.com/java/java-string-contains.html) 判断是否包含指定的字符系列。 |
| 48       | [isEmpty()](https://www.runoob.com/java/java-string-isempty.html) 判断字符串是否为空。 |



# Java StringBuffer 和 StringBuilder 类



当对字符串进行修改的时候，需要使用 StringBuffer 和 StringBuilder 类。

和 String 类不同的是，StringBuffer 和 StringBuilder 类的对象能够被多次的修改，并且不产生新的未使用对象。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/java-string-20201208.png)

在使用 StringBuffer 类时，每次都会对 StringBuffer 对象本身进行操作，而不是生成新的对象，所以如果需要对字符串进行修改推荐使用 StringBuffer。

StringBuilder 类在 Java 5 中被提出，它和 StringBuffer 之间的最大不同在于 StringBuilder 的方法不是线程安全的（不能同步访问）。

由于 StringBuilder 相较于 StringBuffer 有速度优势，所以多数情况下建议使用 StringBuilder 类。

## 实例

public class RunoobTest{    public static void main(String[] args){        StringBuilder sb = new StringBuilder(10);        sb.append("Runoob..");        System.out.println(sb);          sb.append("!");        System.out.println(sb);         sb.insert(8, "Java");        System.out.println(sb);         sb.delete(5,8);        System.out.println(sb);      } }

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/2021-03-01-java-stringbuffer.svg)

以上实例编译运行结果如下：

```
Runoob..
Runoob..!
Runoob..Java!
RunooJava!
```

然而在应用程序要求线程安全的情况下，则必须使用 StringBuffer 类。

## Test.java 文件代码：

public class Test{  public static void main(String[] args){    StringBuffer sBuffer = new StringBuffer("菜鸟教程官网：");    sBuffer.append("www");    sBuffer.append(".runoob");    sBuffer.append(".com");    System.out.println(sBuffer);    } }

以上实例编译运行结果如下：

```
菜鸟教程官网：www.runoob.com
```

## StringBuffer 方法

以下是 StringBuffer 类支持的主要方法：

| 序号 | 方法描述                                                     |
| :--- | :----------------------------------------------------------- |
| 1    | public StringBuffer append(String s) 将指定的字符串追加到此字符序列。 |
| 2    | public StringBuffer reverse()  将此字符序列用其反转形式取代。 |
| 3    | public delete(int start, int end) 移除此序列的子字符串中的字符。 |
| 4    | public insert(int offset, int i) 将 `int` 参数的字符串表示形式插入此序列中。 |
| 5    | insert(int offset, String str) 将 `str` 参数的字符串插入此序列中。 |
| 6    | replace(int start, int end, String str) 使用给定 `String` 中的字符替换此序列的子字符串中的字符。 |

以下列表列出了 StringBuffer 类的其他常用方法：

| 序号 | 方法描述                                                     |
| :--- | :----------------------------------------------------------- |
| 1    | int capacity() 返回当前容量。                                |
| 2    | char charAt(int index) 返回此序列中指定索引处的 `char` 值。  |
| 3    | void ensureCapacity(int minimumCapacity) 确保容量至少等于指定的最小值。 |
| 4    | void getChars(int srcBegin, int srcEnd, char[] dst, int dstBegin) 将字符从此序列复制到目标字符数组 `dst`。 |
| 5    | int indexOf(String str) 返回第一次出现的指定子字符串在该字符串中的索引。 |
| 6    | int indexOf(String str, int fromIndex) 从指定的索引处开始，返回第一次出现的指定子字符串在该字符串中的索引。 |
| 7    | int lastIndexOf(String str) 返回最右边出现的指定子字符串在此字符串中的索引。 |
| 8    | int lastIndexOf(String str, int fromIndex) 返回 String 对象中子字符串最后出现的位置。 |
| 9    | int length()  返回长度（字符数）。                           |
| 10   | void setCharAt(int index, char ch) 将给定索引处的字符设置为 `ch`。 |
| 11   | void setLength(int newLength) 设置字符序列的长度。           |
| 12   | CharSequence subSequence(int start, int end) 返回一个新的字符序列，该字符序列是此序列的子序列。 |
| 13   | String substring(int start) 返回一个新的 `String`，它包含此字符序列当前所包含的字符子序列。 |
| 14   | String substring(int start, int end) 返回一个新的 `String`，它包含此序列当前所包含的字符子序列。 |
| 15   | String toString() 返回此序列中数据的字符串表示形式。         |

# Java 数组

数组对于每一门编程语言来说都是重要的数据结构之一，当然不同语言对数组的实现及处理也不尽相同。

Java 语言中提供的数组是用来存储固定大小的同类型元素。

你可以声明一个数组变量，如 numbers[100] 来代替直接声明 100 个独立变量 number0，number1，....，number99。

本教程将为大家介绍 Java 数组的声明、创建和初始化，并给出其对应的代码。

------

## 声明数组变量

首先必须声明数组变量，才能在程序中使用数组。下面是声明数组变量的语法：

dataType[] arrayRefVar;   // 首选的方法  或  dataType arrayRefVar[];  // 效果相同，但不是首选方法

**注意:** 建议使用 **dataType[] arrayRefVar** 的声明风格声明数组变量。 dataType arrayRefVar[] 风格是来自 C/C++ 语言 ，在Java中采用是为了让 C/C++ 程序员能够快速理解java语言。

### 实例

下面是这两种语法的代码示例：

double[] myList;         // 首选的方法  或  double myList[];         //  效果相同，但不是首选方法

------

## 创建数组

Java语言使用new操作符来创建数组，语法如下：

```
arrayRefVar = new dataType[arraySize];
```

上面的语法语句做了两件事：

- 一、使用 dataType[arraySize] 创建了一个数组。
- 二、把新创建的数组的引用赋值给变量 arrayRefVar。

数组变量的声明，和创建数组可以用一条语句完成，如下所示：

```
dataType[] arrayRefVar = new dataType[arraySize];
```

另外，你还可以使用如下的方式创建数组。

```
dataType[] arrayRefVar = {value0, value1, ..., valuek};
```

数组的元素是通过索引访问的。数组索引从 0 开始，所以索引值从 0 到 arrayRefVar.length-1。

### 实例

下面的语句首先声明了一个数组变量 myList，接着创建了一个包含 10 个 double 类型元素的数组，并且把它的引用赋值给 myList 变量。

## TestArray.java 文件代码：

public class TestArray {   public static void main(String[] args) {      // 数组大小      int size = 10;      // 定义数组      double[] myList = new double[size];      myList[0] = 5.6;      myList[1] = 4.5;      myList[2] = 3.3;      myList[3] = 13.2;      myList[4] = 4.0;      myList[5] = 34.33;      myList[6] = 34.0;      myList[7] = 45.45;      myList[8] = 99.993;      myList[9] = 11123;      // 计算所有元素的总和      double total = 0;      for (int i = 0; i < size; i++) {         total += myList[i];      }      System.out.println("总和为： " + total);   } }

以上实例输出结果为：

```
总和为： 11367.373
```

下面的图片描绘了数组 myList。这里 myList 数组里有 10 个 double 元素，它的下标从 0 到 9。

![java数组结构说明](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/12-130Q0221Q5602.jpg)

------

## 处理数组

数组的元素类型和数组的大小都是确定的，所以当处理数组元素时候，我们通常使用基本循环或者 For-Each 循环。

### 示例

该实例完整地展示了如何创建、初始化和操纵数组：

## TestArray.java 文件代码：

public class TestArray {   public static void main(String[] args) {      double[] myList = {1.9, 2.9, 3.4, 3.5};       // 打印所有数组元素      for (int i = 0; i < myList.length; i++) {         System.out.println(myList[i] + " ");      }      // 计算所有元素的总和      double total = 0;      for (int i = 0; i < myList.length; i++) {         total += myList[i];      }      System.out.println("Total is " + total);      // 查找最大元素      double max = myList[0];      for (int i = 1; i < myList.length; i++) {         if (myList[i] > max) max = myList[i];      }      System.out.println("Max is " + max);   } }

以上实例编译运行结果如下：

```
1.9
2.9
3.4
3.5
Total is 11.7
Max is 3.5
```

------

## For-Each 循环

JDK 1.5 引进了一种新的循环类型，被称为 For-Each 循环或者加强型循环，它能在不使用下标的情况下遍历数组。

语法格式如下：

```
for(type element: array)
{
    System.out.println(element);
}
```

### 实例

该实例用来显示数组 myList 中的所有元素：

## TestArray.java 文件代码：

public class TestArray {   public static void main(String[] args) {      double[] myList = {1.9, 2.9, 3.4, 3.5};       // 打印所有数组元素      for (double element: myList) {         System.out.println(element);      }   } }

以上实例编译运行结果如下：

```
1.9
2.9
3.4
3.5
```

------

## 数组作为函数的参数

数组可以作为参数传递给方法。

例如，下面的例子就是一个打印 int 数组中元素的方法:

public static void printArray(int[] array) {  for (int i = 0; i < array.length; i++) {    System.out.print(array[i] + " ");  } }

下面例子调用 printArray 方法打印出 3，1，2，6，4 和 2：

printArray(new int[]{3, 1, 2, 6, 4, 2});

------

## 数组作为函数的返回值

public static int[] reverse(int[] list) {  int[] result = new int[list.length];   for (int i = 0, j = result.length - 1; i < list.length; i++, j--) {    result[j] = list[i];  }  return result; }

以上实例中 result 数组作为函数的返回值。

------

## 多维数组

多维数组可以看成是数组的数组，比如二维数组就是一个特殊的一维数组，其每一个元素都是一个一维数组，例如：

String[][] str = new String[3][4];

### 多维数组的动态初始化（以二维数组为例）

1. 直接为每一维分配空间，格式如下：

type[][] typeName = new type[typeLength1][typeLength2];

type 可以为基本数据类型和复合数据类型，typeLength1 和 typeLength2 必须为正整数，typeLength1 为行数，typeLength2 为列数。

例如：

int[][] a = new int[2][3];

解析：

二维数组 a 可以看成一个两行三列的数组。

2. 从最高维开始，分别为每一维分配空间，例如：

String[][] s = new String[2][]; s[0] = new String[2]; s[1] = new String[3]; s[0][0] = new String("Good"); s[0][1] = new String("Luck"); s[1][0] = new String("to"); s[1][1] = new String("you"); s[1][2] = new String("!");

解析：

**s[0]=new String[2]** 和 **s[1]=new String[3]** 是为最高维分配引用空间，也就是为最高维限制其能保存数据的最长的长度，然后再为其每个数组元素单独分配空间 **s0=new String("Good")** 等操作。

### 多维数组的引用（以二维数组为例）

对二维数组中的每个元素，引用方式为 **arrayName[index1][index2]**，例如：

num[1][0];

------

## Arrays 类

java.util.Arrays 类能方便地操作数组，它提供的所有方法都是静态的。

具有以下功能：

- 给数组赋值：通过 fill 方法。
- 对数组排序：通过 sort 方法,按升序。
- 比较数组：通过 equals 方法比较数组中元素值是否相等。
- 查找数组元素：通过 binarySearch 方法能对排序好的数组进行二分查找法操作。

具体说明请查看下表：

| 序号 | 方法和说明                                                   |
| :--- | :----------------------------------------------------------- |
| 1    | **public static int binarySearch(Object[] a, Object key)** 用二分查找算法在给定数组中搜索给定值的对象(Byte,Int,double等)。数组在调用前必须排序好的。如果查找值包含在数组中，则返回搜索键的索引；否则返回 (-(*插入点*) - 1)。 |
| 2    | **public static boolean equals(long[] a, long[] a2)** 如果两个指定的 long 型数组彼此*相等*，则返回 true。如果两个数组包含相同数量的元素，并且两个数组中的所有相应元素对都是相等的，则认为这两个数组是相等的。换句话说，如果两个数组以相同顺序包含相同的元素，则两个数组是相等的。同样的方法适用于所有的其他基本数据类型（Byte，short，Int等）。 |
| 3    | **public static void fill(int[] a, int val)** 将指定的 int 值分配给指定 int 型数组指定范围中的每个元素。同样的方法适用于所有的其他基本数据类型（Byte，short，Int等）。 |
| 4    | **public static void sort(Object[] a)** 对指定对象数组根据其元素的自然顺序进行升序排列。同样的方法适用于所有的其他基本数据类型（Byte，short，Int等）。 |

# Java 日期时间

# Java 日期时间

Java 提供了多套日期时间 API，以下是主要类别的对比和常用方法总结：

| 类别       | 主要类                                                       | 线程安全 | 可变性 | Java 版本 | 特点                   |
| :--------- | :----------------------------------------------------------- | :------- | :----- | :-------- | :--------------------- |
| 传统日期   | [Date](https://www.runoob.com/java/java-date-class.html), [Calendar](https://www.runoob.com/java/java-calendar-class.html)，[GregorianCalendar](https://www.runoob.com/java/java-gregoriancalendar-class.html) | 否       | 可变   | 1.0+      | 设计缺陷多，不推荐使用 |
| 新日期时间 | [LocalDate](https://www.runoob.com/java/java-localdate-class.html), [LocalTime](https://www.runoob.com/java/java-localtime-class.html), [LocalDateTime](https://www.runoob.com/java/java-localdatetime-class.html), [ZonedDateTime](https://www.runoob.com/java/java-zoneddatetime-class.html), [ChronoUnit](https://www.runoob.com/java/java-chronounit-class.html) | 是       | 不可变 | 8+        | 设计良好，推荐使用     |
| 时间戳     | [Instant](https://www.runoob.com/java/java-instant-class.html) | 是       | 不可变 | 8+        | 机器时间，精确到纳秒   |
| 格式化     | [DateTimeFormatter](https://www.runoob.com/java/java-datetimeformatter-class.html) | 是       | 不可变 | 8+        | 线程安全的格式化类     |

------

## LocalDate/DateTimeFormatter

LocalDate/DateTimeFormatter 是 Java 8 引入的日期类，LocalDate 用于表示不带时间的日期（年-月-日），DateTimeFormatter 用于格式化和解析日期时间对象。

## 实例

**import** java.time.LocalDate;
**import** java.time.format.DateTimeFormatter;

**public** **class** RunoobTest {
  **public** **static** **void** main(String[] args) {
    *// 获取当前日期*
    LocalDate today = LocalDate.now();
    System.out.println("当前日期: " + today);
    
    *// 创建特定日期*
    LocalDate nationalDay = LocalDate.of(2025, 10, 1);
    System.out.println("国庆节: " + nationalDay);
    
    *// 日期加减*
    LocalDate tomorrow = today.plusDays(1);
    LocalDate nextMonth = today.plusMonths(1);
    LocalDate lastYear = today.minusYears(1);
    
    System.out.println("明天: " + tomorrow);
    System.out.println("下个月: " + nextMonth);
    System.out.println("去年今天: " + lastYear);
  }
}

以上实例输出结果为：

```
当前日期: 2025-05-01
国庆节: 2025-10-01
明天: 2025-05-02
下个月: 2025-06-01
去年今天: 2024-05-01
```

1. **新项目优先使用 java.time 包** (Java 8+)
2. **避免使用老旧的 Date 和 Calendar 类**
3. **明确区分使用时区**：
   - 不需要时区：LocalDate/LocalTime/LocalDateTime
   - 需要时区：ZonedDateTime
4. **格式化时考虑线程安全**：使用 DateTimeFormatter 而非 SimpleDateFormat
5. **数据库交互**：
   - JDBC 4.2+ 直接支持 java.time 类型
   - 旧版本可转换为 java.sql.Date/Timestamp

**1. LocalDate (日期)**

## 实例

LocalDate today = LocalDate.now();
LocalDate date = LocalDate.of(2023, Month.JUNE, 15);
**int** year = date.getYear(); *// 2023*
Month month = date.getMonth(); *// JUNE*
**int** day = date.getDayOfMonth(); *// 15*
LocalDate nextWeek = today.plusWeeks(1);
**boolean** isLeap = date.isLeapYear(); *// 是否闰年*

**2. LocalTime (时间)**

## 实例

LocalTime now = LocalTime.now();
LocalTime time = LocalTime.of(14, 30, 45); *// 14:30:45*
**int** hour = time.getHour(); *// 14*
**int** minute = time.getMinute(); *// 30*
LocalTime nextHour = time.plusHours(1);

**3. LocalDateTime (日期时间)**

## 实例

LocalDateTime ldt = LocalDateTime.now();
LocalDateTime dt = LocalDateTime.of(2023, 6, 15, 14, 30);
LocalDateTime nextMonth = dt.plusMonths(1);

**4. ZonedDateTime (带时区日期时间)**

## 实例

ZonedDateTime zdt = ZonedDateTime.now(ZoneId.of("Asia/Shanghai"));
ZonedDateTime nyTime = zdt.withZoneSameInstant(ZoneId.of("America/New_York"));
ZoneId zone = zdt.getZone(); *// 获取时区*

**5. Instant (时间戳)**

## 实例

Instant now = Instant.now(); *// 获取当前时间戳*
Instant later = now.plusSeconds(60); *// 60秒后*
**long** epochMilli = now.toEpochMilli(); *// 获取毫秒时间戳*

------

## Date 类

java.util 包提供了 Date 类来封装当前的日期和时间。 Date 类提供两个构造函数来实例化 Date 对象。

第一个构造函数使用当前日期和时间来初始化对象。

Date( )

第二个构造函数接收一个参数，该参数是从 1970 年 1 月 1 日起的毫秒数。

Date(long millisec)

Date 对象创建以后，可以调用下面的方法。

| 序号 | 方法和描述                                                   |
| :--- | :----------------------------------------------------------- |
| 1    | **boolean after(Date date)** 若当调用此方法的Date对象在指定日期之后返回true,否则返回false。 |
| 2    | **boolean before(Date date)** 若当调用此方法的Date对象在指定日期之前返回true,否则返回false。 |
| 3    | **Object clone( )** 返回此对象的副本。                       |
| 4    | **int compareTo(Date date)** 比较当调用此方法的Date对象和指定日期。两者相等时候返回0。调用对象在指定日期之前则返回负数。调用对象在指定日期之后则返回正数。 |
| 5    | **int compareTo(Object obj)** 若obj是Date类型则操作等同于compareTo(Date) 。否则它抛出ClassCastException。 |
| 6    | **boolean equals(Object date)** 当调用此方法的Date对象和指定日期相等时候返回true,否则返回false。 |
| 7    | **long getTime( )** 返回自 1970 年 1 月 1 日 00:00:00 GMT 以来此 Date 对象表示的毫秒数。 |
| 8    | **int hashCode( )**  返回此对象的哈希码值。                  |
| 9    | **void setTime(long time)**   用自1970年1月1日00:00:00 GMT以后time毫秒数设置时间和日期。 |
| 10   | **String toString( )** 把此 Date 对象转换为以下形式的 String： dow mon dd hh:mm:ss zzz yyyy 其中： dow 是一周中的某一天 (Sun, Mon, Tue, Wed, Thu, Fri, Sat)。 |

------

## 获取当前日期时间

Java中获取当前日期和时间很简单，使用 Date 对象的 toString() 方法来打印当前日期和时间，如下所示：

## 实例

import java.util.Date;   public class DateDemo {   public static void main(String[] args) {       // 初始化 Date 对象       Date date = new Date();               // 使用 toString() 函数显示日期时间       System.out.println(date.toString());   } }

[运行实例 »](https://www.runoob.com/try/runcode.php?filename=date_demo&type=java)

以上实例编译运行结果如下:

```
Mon May 04 09:51:52 CDT 2013
```

------

## 日期比较

Java 使用以下三种方法来比较两个日期：

- 使用 getTime() 方法获取两个日期（自1970年1月1日经历的毫秒数值），然后比较这两个值。
- 使用方法 before()，after() 和 equals()。例如，一个月的 12 号比 18 号早，则 **new Date(99, 2, 12).before(new Date (99, 2, 18))** 返回true。
- 使用 compareTo() 方法，它是由 Comparable 接口定义的，Date 类实现了这个接口。

### 1. 使用 getTime() 方法比较

这种方法通过比较日期对象自 1970年1月1日（Unix纪元）以来的毫秒数。

## 实例

**import** java.util.Date;

**public** **class** DateComparison {
  **public** **static** **void** main(String[] args) {
    Date date1 = **new** Date(121, 5, 15); *// 2021年6月15日*
    Date date2 = **new** Date(121, 5, 20); *// 2021年6月20日*
    
    *// 比较毫秒数*
    **if** (date1.getTime() < date2.getTime()) {
      System.out.println("date1 在 date2 之前");
    } **else** **if** (date1.getTime() > date2.getTime()) {
      System.out.println("date1 在 date2 之后");
    } **else** {
      System.out.println("两个日期相同");
    }
  }
}

输出：

```
date1 在 date2 之前
```

### 2. 使用 before(), after() 和 equals() 方法

这些方法是 Date 类自带的比较方法，语义更清晰。

## 实例

**import** java.util.Date;

**public** **class** DateComparison {
  **public** **static** **void** main(String[] args) {
    Date date1 = **new** Date(121, 5, 15); *// 2021年6月15日*
    Date date2 = **new** Date(121, 5, 20); *// 2021年6月20日*
    
    *// 使用 before() 方法*
    System.out.println("date1 在 date2 之前吗？ " + date1.before(date2));
    
    *// 使用 after() 方法*
    System.out.println("date1 在 date2 之后吗？ " + date1.after(date2));
    
    *// 使用 equals() 方法*
    System.out.println("两个日期相同吗？ " + date1.equals(date2));
  }
}

输出：

```
date1 在 date2 之前吗？ true
date1 在 date2 之后吗？ false
两个日期相同吗？ false
```

### 3. 使用 compareTo() 方法

Date 类实现了 Comparable 接口，可以使用 compareTo() 方法进行比较。

## 实例

**import** java.util.Date;

**public** **class** DateComparison {
  **public** **static** **void** main(String[] args) {
    Date date1 = **new** Date(121, 5, 15); *// 2021年6月15日*
    Date date2 = **new** Date(121, 5, 20); *// 2021年6月20日*
    
    **int** result = date1.compareTo(date2);
    
    **if** (result < 0) {
      System.out.println("date1 在 date2 之前");
    } **else** **if** (result > 0) {
      System.out.println("date1 在 date2 之后");
    } **else** {
      System.out.println("两个日期相同");
    }
  }
}

输出：

```
date1 在 date2 之前
```

------

## 使用 SimpleDateFormat 格式化日期

SimpleDateFormat 是一个以语言环境敏感的方式来格式化和分析日期的类。SimpleDateFormat 允许你选择任何用户自定义日期时间格式来运行。例如：

## 实例

import  java.util.*; import java.text.*;  public class DateDemo {   public static void main(String[] args) {       Date dNow = new Date( );      SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss");       System.out.println("当前时间为: " + ft.format(dNow));   } }

[运行实例 »](https://www.runoob.com/try/runcode.php?filename=date_demo1&type=java)

```
SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd hh:mm:ss");
```

这一行代码确立了转换的格式，其中 yyyy 是完整的公元年，MM 是月份，dd 是日期，HH:mm:ss 是时、分、秒。

**注意**:有的格式大写，有的格式小写，例如 MM 是月份，mm 是分；HH 是 24 小时制，而 hh 是 12 小时制。

以上实例编译运行结果如下:

```
当前时间为: 2018-09-06 10:16:34
```

------

## 日期和时间的格式化编码

时间模式字符串用来指定时间格式。在此模式中，所有的 ASCII 字母被保留为模式字母，定义如下：

| **字母** | **描述**                 | **示例**                |
| :------- | :----------------------- | :---------------------- |
| G        | 纪元标记                 | AD                      |
| y        | 四位年份                 | 2001                    |
| M        | 月份                     | July or 07              |
| d        | 一个月的日期             | 10                      |
| h        | A.M./P.M. (1~12)格式小时 | 12                      |
| H        | 一天中的小时 (0~23)      | 22                      |
| m        | 分钟数                   | 30                      |
| s        | 秒数                     | 55                      |
| S        | 毫秒数                   | 234                     |
| E        | 星期几                   | Tuesday                 |
| D        | 一年中的日子             | 360                     |
| F        | 一个月中第几周的周几     | 2 (second Wed. in July) |
| w        | 一年中第几周             | 40                      |
| W        | 一个月中第几周           | 1                       |
| a        | A.M./P.M. 标记           | PM                      |
| k        | 一天中的小时(1~24)       | 24                      |
| K        | A.M./P.M. (0~11)格式小时 | 10                      |
| z        | 时区                     | Eastern Standard Time   |
| '        | 文字定界符               | Delimiter               |
| "        | 单引号                   | `                       |

------

## 使用printf格式化日期

printf 方法可以很轻松地格式化时间和日期。使用两个字母格式，它以 **%t** 开头并且以下面表格中的一个字母结尾。

- %tY：输出四位数的年份，例如：2023
- %ty：输出两位数的年份，例如：23
- %tm：输出两位数的月份，例如：02
- %tB：输出月份的全名，例如：February
- %tb：输出月份的缩写，例如：Feb
- %tA：输出星期的全名，例如：Wednesday
- %ta：输出星期的缩写，例如：Wed
- %td：输出两位数的日期，例如：24
- %te：输出一位或两位数的日期，例如：24 或 02
- %tH：输出24小时制的小时数，例如：23
- %tI：输出12小时制的小时数，例如：11
- %tM：输出分钟数，例如：45
- %tS：输出秒数，例如：30
- %tp：输出上午还是下午，例如：AM 或 PM
- %tZ：输出时区，例如：GMT+08:00

| 转换符 | 说明                        | 示例                             |
| :----- | :-------------------------- | :------------------------------- |
| %tc    | 包括全部日期和时间信息      | 星期六 十月 27 14:21:20 CST 2007 |
| %tF    | "年-月-日"格式              | 2007-10-27                       |
| %tD    | "月/日/年"格式              | 10/27/07                         |
| %tr    | "HH:MM:SS PM"格式（12时制） | 02:25:51 下午                    |
| %tT    | "HH:MM:SS"格式（24时制）    | 14:28:16                         |
| %tR    | "HH:MM"格式（24时制）       | 14:28                            |

更多 **printf** 解析可以参见：[Java 格式化输出 printf 例子](https://www.runoob.com/w3cnote/java-printf-formate-demo.html)

### 实例

## 实例

**import** java.util.Date;
**public** **class** DateFormatExample {
  **public** **static** **void** main(String[] args) {
   Date date = **new** Date();
   System.out.printf("%tY-%tm-%td %tH:%tM:%tS %tZ", date, date, date, date, date, date, date);
  }
}

执行输出结果为：

```
2023-02-24 13:34:45 GMT+08:00
```

## 实例

import java.util.Date;  public class DateDemo {   public static void main(String[] args) {     // 初始化 Date 对象     Date date = new Date();      //c的使用      System.out.printf("全部日期和时间信息：%tc%n",date);              //f的使用      System.out.printf("年-月-日格式：%tF%n",date);      //d的使用      System.out.printf("月/日/年格式：%tD%n",date);      //r的使用      System.out.printf("HH:MM:SS PM格式（12时制）：%tr%n",date);      //t的使用      System.out.printf("HH:MM:SS格式（24时制）：%tT%n",date);      //R的使用      System.out.printf("HH:MM格式（24时制）：%tR",date);    } }

以上实例编译运行结果如下:

```
全部日期和时间信息：星期一 九月 10 10:43:36 CST 2012  
年-月-日格式：2012-09-10  
月/日/年格式：09/10/12  
HH:MM:SS PM格式（12时制）：10:43:36 上午  
HH:MM:SS格式（24时制）：10:43:36  
HH:MM格式（24时制）：10:43  
```

如果你需要重复提供日期，那么利用这种方式来格式化它的每一部分就有点复杂了。因此，可以利用一个格式化字符串指出要被格式化的参数的索引。

索引必须紧跟在 **%** 后面，而且必须以 **$** 结束。例如：

## 实例

import java.util.Date;   public class DateDemo {    public static void main(String[] args) {       // 初始化 Date 对象       Date date = new Date();               // 使用toString()显示日期和时间       System.out.printf("%1$s %2$tB %2$td, %2$tY",                          "Due date:", date);   } }

[运行实例 »](https://www.runoob.com/try/runcode.php?filename=date_demo3&type=java)

以上实例编译运行结果如下:

```
Due date: February 09, 2014
```

或者，你可以使用 < 标志。它表明先前被格式化的参数要被再次使用。例如：

## 实例

import java.util.Date;   public class DateDemo {    public static void main(String[] args) {       // 初始化 Date 对象       Date date = new Date();               // 显示格式化时间       System.out.printf("%s %tB %<te, %<tY",                          "Due date:", date);   } }

[运行实例 »](https://www.runoob.com/try/runcode.php?filename=date_demo4&type=java)

以上实例编译运行结果如下:

```
Due date: February 09, 2014
```

定义日期格式的转换符可以使日期通过指定的转换符生成新字符串。这些日期转换符如下所示：

## 实例

import java.util.*;   public class DateDemo {   public static void main(String[] args) {       Date date=new Date();                                              //b的使用，月份简称          String str=String.format(Locale.US,"英文月份简称：%tb",date);               System.out.println(str);                                                                                      System.out.printf("本地月份简称：%tb%n",date);          //B的使用，月份全称          str=String.format(Locale.US,"英文月份全称：%tB",date);          System.out.println(str);          System.out.printf("本地月份全称：%tB%n",date);          //a的使用，星期简称          str=String.format(Locale.US,"英文星期的简称：%ta",date);          System.out.println(str);          //A的使用，星期全称          System.out.printf("本地星期的简称：%tA%n",date);          //C的使用，年前两位          System.out.printf("年的前两位数字（不足两位前面补0）：%tC%n",date);          //y的使用，年后两位          System.out.printf("年的后两位数字（不足两位前面补0）：%ty%n",date);          //j的使用，一年的天数          System.out.printf("一年中的天数（即年的第几天）：%tj%n",date);          //m的使用，月份          System.out.printf("两位数字的月份（不足两位前面补0）：%tm%n",date);          //d的使用，日（二位，不够补零）          System.out.printf("两位数字的日（不足两位前面补0）：%td%n",date);          //e的使用，日（一位不补零）          System.out.printf("月份的日（前面不补0）：%te",date);     } }

输出结果为：

```
英文月份简称：May
本地月份简称：五月
英文月份全称：May
本地月份全称：五月
英文星期的简称：Thu
本地星期的简称：星期四
年的前两位数字（不足两位前面补0）：20
年的后两位数字（不足两位前面补0）：17
一年中的天数（即年的第几天）：124
两位数字的月份（不足两位前面补0）：05
两位数字的日（不足两位前面补0）：04
月份的日（前面不补0）：4
```

------

## 解析字符串为时间

SimpleDateFormat 类有一些附加的方法，特别是parse()，它试图按照给定的SimpleDateFormat 对象的格式化存储来解析字符串。例如：

## 实例

import java.util.*; import java.text.*;   public class DateDemo {    public static void main(String[] args) {      SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");        String input = args.length == 0 ? "1818-11-11" : args[0];        System.out.print(input + " Parses as ");        Date t;        try {           t = ft.parse(input);           System.out.println(t);       } catch (ParseException e) {           System.out.println("Unparseable using " + ft);       }   } }

[运行实例 »](https://www.runoob.com/try/runcode.php?filename=date_demo5&type=java)

以上实例编译运行结果如下:

```
$ java DateDemo
1818-11-11 Parses as Wed Nov 11 00:00:00 GMT 1818
$ java DateDemo 2007-12-01
2007-12-01 Parses as Sat Dec 01 00:00:00 GMT 2007
```

------

## Java 休眠(sleep)

sleep()使当前线程进入停滞状态（阻塞当前线程），让出CPU的使用、目的是不让当前线程独自霸占该进程所获的CPU资源，以留一定时间给其他线程执行的机会。

你可以让程序休眠一毫秒的时间或者到您的计算机的寿命长的任意段时间。例如，下面的程序会休眠3秒：

## 实例

import java.util.*;   public class SleepDemo {   public static void main(String[] args) {      try {          System.out.println(new Date( ) + "\n");          Thread.sleep(1000*3);   // 休眠3秒         System.out.println(new Date( ) + "\n");       } catch (Exception e) {           System.out.println("Got an exception!");       }   } }

[运行实例 »](https://www.runoob.com/try/runcode.php?filename=date_demo6&type=java)

以上实例编译运行结果如下:

```
Thu Sep 17 10:20:30 CST 2015

Thu Sep 17 10:20:33 CST 2015
```

------

## 测量时间

下面的一个例子表明如何测量时间间隔（以毫秒为单位）：

## 实例

import java.util.*;   public class DiffDemo {    public static void main(String[] args) {      try {         long start = System.currentTimeMillis( );         System.out.println(new Date( ) + "\n");         Thread.sleep(5*60*10);         System.out.println(new Date( ) + "\n");         long end = System.currentTimeMillis( );         long diff = end - start;         System.out.println("Difference is : " + diff);      } catch (Exception e) {         System.out.println("Got an exception!");      }   } }

[运行实例 »](https://www.runoob.com/try/runcode.php?filename=date_demo7&type=java)

以上实例编译运行结果如下:

```
Fri Jan 08 09:48:47 CST 2016

Fri Jan 08 09:48:50 CST 2016

Difference is : 3019
```

------

## Calendar类

我们现在已经能够格式化并创建一个日期对象了，但是我们如何才能设置和获取日期数据的特定部分呢，比如说小时，日，或者分钟? 我们又如何在日期的这些部分加上或者减去值呢? 答案是使用Calendar 类。

Calendar类的功能要比Date类强大很多，而且在实现方式上也比Date类要复杂一些。

Calendar类是一个抽象类，在实际使用时实现特定的子类的对象，创建对象的过程对程序员来说是透明的，只需要使用getInstance方法创建即可。

### 创建一个代表系统当前日期的Calendar对象

```
Calendar c = Calendar.getInstance();//默认是当前日期
```

### 创建一个指定日期的Calendar对象

使用Calendar类代表特定的时间，需要首先创建一个Calendar的对象，然后再设定该对象中的年月日参数来完成。

```
//创建一个代表2009年6月12日的Calendar对象
Calendar c1 = Calendar.getInstance();
c1.set(2009, 6 - 1, 12);
```

### Calendar类对象字段类型

Calendar类中用以下这些常量表示不同的意义，jdk内的很多类其实都是采用的这种思想

| 常量                  | 描述                           |
| :-------------------- | :----------------------------- |
| Calendar.YEAR         | 年份                           |
| Calendar.MONTH        | 月份                           |
| Calendar.DATE         | 日期                           |
| Calendar.DAY_OF_MONTH | 日期，和上面的字段意义完全相同 |
| Calendar.HOUR         | 12小时制的小时                 |
| Calendar.HOUR_OF_DAY  | 24小时制的小时                 |
| Calendar.MINUTE       | 分钟                           |
| Calendar.SECOND       | 秒                             |
| Calendar.DAY_OF_WEEK  | 星期几                         |

### Calendar类对象信息的设置

**Set设置**

如：

```
Calendar c1 = Calendar.getInstance();
```

调用：

```
public final void set(int year,int month,int date)
c1.set(2009, 6, 12);//把Calendar对象c1的年月日分别设这为：2009、6、12
```

利用字段类型设置

如果只设定某个字段，例如日期的值，则可以使用如下set方法：

```
public void set(int field,int value)
```

把 c1对象代表的日期设置为10号，其它所有的数值会被重新计算

```
c1.set(Calendar.DATE,10);
```

把c1对象代表的年份设置为2008年，其他的所有数值会被重新计算

```
c1.set(Calendar.YEAR,2008);
```

其他字段属性set的意义以此类推

**Add设置**

```
Calendar c1 = Calendar.getInstance();
```

把c1对象的日期加上10，也就是c1也就表示为10天后的日期，其它所有的数值会被重新计算

```
c1.add(Calendar.DATE, 10);
```

把c1对象的日期减去10，也就是c1也就表示为10天前的日期，其它所有的数值会被重新计算

```
c1.add(Calendar.DATE, -10);
```

其他字段属性的add的意义以此类推

### Calendar类对象信息的获得

Calendar c1 = Calendar.getInstance(); // 获得年份 int year = c1.get(Calendar.YEAR); // 获得月份 int month = c1.get(Calendar.MONTH) + 1; // 获得日期 int date = c1.get(Calendar.DATE); // 获得小时 int hour = c1.get(Calendar.HOUR_OF_DAY); // 获得分钟 int minute = c1.get(Calendar.MINUTE); // 获得秒 int second = c1.get(Calendar.SECOND); // 获得星期几（注意（这个与Date类是不同的）：1代表星期日、2代表星期1、3代表星期二，以此类推） int day = c1.get(Calendar.DAY_OF_WEEK);

------

## GregorianCalendar类

Calendar类实现了公历日历，GregorianCalendar是Calendar类的一个具体实现。

Calendar 的getInstance（）方法返回一个默认用当前的语言环境和时区初始化的GregorianCalendar对象。GregorianCalendar定义了两个字段：AD和BC。这是代表公历定义的两个时代。

下面列出GregorianCalendar对象的几个构造方法：

| **序号** | **构造函数和说明**                                           |
| -------- | ------------------------------------------------------------ |
| 1        | **GregorianCalendar()** 在具有默认语言环境的默认时区内使用当前时间构造一个默认的 GregorianCalendar。 |
| 2        | **GregorianCalendar(int year, int month, int date)** 在具有默认语言环境的默认时区内构造一个带有给定日期设置的 GregorianCalendar |
| 3        | **GregorianCalendar(int year, int month, int date, int hour, int minute)** 为具有默认语言环境的默认时区构造一个具有给定日期和时间设置的 GregorianCalendar。 |
| 4        | **GregorianCalendar(int year, int month, int date, int hour, int minute, int second)**  为具有默认语言环境的默认时区构造一个具有给定日期和时间设置的 GregorianCalendar。 |
| 5        | **GregorianCalendar(Locale aLocale)** 在具有给定语言环境的默认时区内构造一个基于当前时间的 GregorianCalendar。 |
| 6        | **GregorianCalendar(TimeZone zone)** 在具有默认语言环境的给定时区内构造一个基于当前时间的 GregorianCalendar。 |
| 7        | **GregorianCalendar(TimeZone zone, Locale aLocale)**  在具有给定语言环境的给定时区内构造一个基于当前时间的 GregorianCalendar。 |

这里是GregorianCalendar 类提供的一些有用的方法列表：

| **序号** | **方法和说明**                                               |
| -------- | ------------------------------------------------------------ |
| 1        | **void add(int field, int amount)** 根据日历规则，将指定的（有符号的）时间量添加到给定的日历字段中。 |
| 2        | **protected void computeFields()** 转换UTC毫秒值为时间域值   |
| 3        | **protected void computeTime()** 覆盖Calendar ，转换时间域值为UTC毫秒值 |
| 4        | **boolean equals(Object obj)** 比较此 GregorianCalendar 与指定的 Object。 |
| 5        | **int get(int field)** 获取指定字段的时间值                  |
| 6        | **int getActualMaximum(int field)** 返回当前日期，给定字段的最大值 |
| 7        | **int getActualMinimum(int field)** 返回当前日期，给定字段的最小值 |
| 8        | **int getGreatestMinimum(int field)**  返回此 GregorianCalendar 实例给定日历字段的最高的最小值。 |
| 9        | **Date getGregorianChange()** 获得格里高利历的更改日期。     |
| 10       | **int getLeastMaximum(int field)** 返回此 GregorianCalendar 实例给定日历字段的最低的最大值 |
| 11       | **int getMaximum(int field)** 返回此 GregorianCalendar 实例的给定日历字段的最大值。 |
| 12       | **Date getTime()** 获取日历当前时间。                        |
| 13       | **long getTimeInMillis()** 获取用长整型表示的日历的当前时间  |
| 14       | **TimeZone getTimeZone()** 获取时区。                        |
| 15       | **int getMinimum(int field)** 返回给定字段的最小值。         |
| 16       | **int hashCode()** 重写hashCode.                             |
| 17       | **boolean isLeapYear(int year)** 确定给定的年份是否为闰年。  |
| 18       | **void roll(int field, boolean up)** 在给定的时间字段上添加或减去（上/下）单个时间单元，不更改更大的字段。 |
| 19       | **void set(int field, int value)** 用给定的值设置时间字段。  |
| 20       | **void set(int year, int month, int date)** 设置年、月、日的值。 |
| 21       | **void set(int year, int month, int date, int hour, int minute)** 设置年、月、日、小时、分钟的值。 |
| 22       | **void set(int year, int month, int date, int hour, int minute, int second)** 设置年、月、日、小时、分钟、秒的值。 |
| 23       | **void setGregorianChange(Date date)** 设置 GregorianCalendar 的更改日期。 |
| 24       | **void setTime(Date date)** 用给定的日期设置Calendar的当前时间。 |
| 25       | **void setTimeInMillis(long millis)** 用给定的long型毫秒数设置Calendar的当前时间。 |
| 26       | **void setTimeZone(TimeZone value)** 用给定时区值设置当前时区。 |
| 27       | **String toString()** 返回代表日历的字符串。                 |

### 实例

## 实例

import java.util.*;   public class GregorianCalendarDemo {    public static void main(String[] args) {      String months[] = {      "Jan", "Feb", "Mar", "Apr",      "May", "Jun", "Jul", "Aug",      "Sep", "Oct", "Nov", "Dec"};            int year;      // 初始化 Gregorian 日历      // 使用当前时间和日期      // 默认为本地时间和时区      GregorianCalendar gcalendar = new GregorianCalendar();      // 显示当前时间和日期的信息      System.out.print("Date: ");      System.out.print(months[gcalendar.get(Calendar.MONTH)]);      System.out.print(" " + gcalendar.get(Calendar.DATE) + " ");      System.out.println(year = gcalendar.get(Calendar.YEAR));      System.out.print("Time: ");      System.out.print(gcalendar.get(Calendar.HOUR) + ":");      System.out.print(gcalendar.get(Calendar.MINUTE) + ":");      System.out.println(gcalendar.get(Calendar.SECOND));            // 测试当前年份是否为闰年      if(gcalendar.isLeapYear(year)) {         System.out.println("当前年份是闰年");      }      else {         System.out.println("当前年份不是闰年");      }   } }

[运行实例 »](https://www.runoob.com/try/runcode.php?filename=date_demo8&type=java)

以上实例编译运行结果如下：

```
Date: Apr 22 2009
Time: 11:25:27
当前年份不是闰年
```

关于 Calendar 类的完整列表，你可以参考标准的 [Java文档](https://www.runoob.com/manual/jdk11api/java.base/java/util/Calendar.html)。

# Java 正则表达式 

# Java 方法

# Java 构造方法

# Java Stream、File、IO 

# Java Scanner 类

# Java 异常处理

# Java 面向对象

# Java 继承

# Java Override/Overload

# Java 多态 

# Java 抽象类

# Java 封装 

# Java 接口

# Java 枚举

# Java 包(package)

# Java 反射

Java 高级教程

# Java 数据结构

# Java 集合框架

# Java ArrayList

# Java LinkedList

# Java HashSet

# Java HashMap1

# Java lterator

# Java Object

# Java NIO Files

# Java 泛型

# Java 序列化

# Java 网络编程

# Java 发送邮件

# Java 多线程编程

# Java Applet 基础

# Java 文档注释 

# Java 实例

# Java 8 新特性

# Java MySQL 连接

# Java 9 新特性

# Java 常用类库 