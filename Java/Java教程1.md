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

正则表达式定义了字符串的模式。

正则表达式可以用来搜索、编辑或处理文本。

正则表达式并不仅限于某一种语言，但是在每种语言中有细微的差别。

Java 提供了 java.util.regex 包，它包含了 Pattern 和 Matcher 类，用于处理正则表达式的匹配操作。

### 正则表达式实例

一个字符串其实就是一个简单的正则表达式，例如 **Hello World** 正则表达式匹配 "Hello World" 字符串。

**.**（点号）也是一个正则表达式，它匹配任何一个字符如："a" 或 "1"。

下表列出了一些正则表达式的实例及描述：

| 正则表达式           | 描述                                                         |
| :------------------- | :----------------------------------------------------------- |
| **this is text**     | 匹配字符串 "this is text"                                    |
| **this\s+is\s+text** | 注意字符串中的 **\s+**。匹配单词 "this" 后面的 **\s+** 可以匹配多个空格，之后匹配 is 字符串，再之后 **\s+** 匹配多个空格然后再跟上 text 字符串。可以匹配这个实例：this is text |
| **^\d+(\.\d+)?**     | ^ 定义了以什么开始\d+ 匹配一个或多个数字? 设置括号内的选项是可选的\. 匹配 "."可以匹配的实例："5", "1.5" 和 "2.21"。 |

> 更多正则表达式内容可以参考：[正则表达式 - 教程](https://www.runoob.com/regexp/regexp-tutorial.html)

------

## java.util.regex 包

**java.util.regex** 包是 Java 标准库中用于支持正则表达式操作的包。

java.util.regex 包主要包括以下三个类：

- [Pattern 类](https://www.runoob.com/java/java-regex-pattern.html)：

  pattern 对象是一个正则表达式的编译表示。Pattern 类没有公共构造方法。要创建一个 Pattern 对象，你必须首先调用其公共静态编译方法，它返回一个 Pattern 对象。该方法接受一个正则表达式作为它的第一个参数。

- [Matcher 类](https://www.runoob.com/java/java-regex-macher.html)：

  Matcher 对象是对输入字符串进行解释和匹配操作的引擎。与Pattern 类一样，Matcher 也没有公共构造方法。你需要调用 Pattern 对象的 matcher 方法来获得一个 Matcher 对象。

- PatternSyntaxException：

  PatternSyntaxException 是一个非强制异常类，它表示一个正则表达式模式中的语法错误。

以下实例中使用了正则表达式 **.\*runoob.\*** 用于查找字符串中是否包了 **runoob** 子串：

## 实例

import java.util.regex.*;  class RegexExample1{   public static void main(String[] args){      String content = "I am noob " +        "from runoob.com.";       String pattern = ".*runoob.*";       boolean isMatch = Pattern.matches(pattern, content);      System.out.println("字符串中是否包含了 'runoob' 子字符串? " + isMatch);   } }

实例输出结果为：

字符串中是否包含了 'runoob' 子字符串? true

------

## 捕获组

捕获组是把多个字符当一个单独单元进行处理的方法，它通过对括号内的字符分组来创建。

例如，正则表达式 (dog) 创建了单一分组，组里包含"d"，"o"，和"g"。

捕获组是通过从左至右计算其开括号来编号。例如，在表达式（（A）（B（C））），有四个这样的组：

- ((A)(B(C)))
- (A)
- (B(C))
- (C)

可以通过调用 matcher 对象的 groupCount 方法来查看表达式有多少个分组。groupCount 方法返回一个 int 值，表示matcher对象当前有多个捕获组。

还有一个特殊的组（group(0)），它总是代表整个表达式。该组不包括在 groupCount 的返回值中。

## 实例

下面的例子说明如何从一个给定的字符串中找到数字串：

## RegexMatches.java 文件代码：

import java.util.regex.Matcher; import java.util.regex.Pattern;  public class RegexMatches {    public static void main( String[] args ){       // 按指定模式在字符串查找      String line = "This order was placed for QT3000! OK?";      String pattern = "(\\D*)(\\d+)(.*)";       // 创建 Pattern 对象      Pattern r = Pattern.compile(pattern);       // 现在创建 matcher 对象      Matcher m = r.matcher(line);      if (m.find( )) {         System.out.println("Found value: " + m.group(0) );         System.out.println("Found value: " + m.group(1) );         System.out.println("Found value: " + m.group(2) );         System.out.println("Found value: " + m.group(3) );       } else {         System.out.println("NO MATCH");      }   } }

以上实例编译运行结果如下：

```
Found value: This order was placed for QT3000! OK?
Found value: This order was placed for QT
Found value: 3000
Found value: ! OK?
```

------

## 正则表达式语法

在其他语言中，**\\** 表示：**我想要在正则表达式中插入一个普通的（字面上的）反斜杠，请不要给它任何特殊的意义。**

在 Java 中，**\\** 表示：**我要插入一个正则表达式的反斜线，所以其后的字符具有特殊的意义。**

所以，在其他的语言中（如 Perl），一个反斜杠 **\** 就足以具有转义的作用，而在 Java 中正则表达式中则需要有两个反斜杠才能被解析为其他语言中的转义作用。也可以简单的理解在 Java 的正则表达式中，两个 **\\** 代表其他语言中的一个 **\**，这也就是为什么表示一位数字的正则表达式是 **\\d**，而表示一个普通的反斜杠是 **\\**。

```
System.out.print("\\");    // 输出为 \
System.out.print("\\\\");  // 输出为 \\
```

| 字符          | 说明                                                         |
| :------------ | :----------------------------------------------------------- |
| \             | 将下一字符标记为特殊字符、文本、反向引用或八进制转义符。例如， **n**匹配字符 **n**。**\n** 匹配换行符。序列 **\\\\** 匹配 **\\** ，**\\(** 匹配 **(**。 |
| ^             | 匹配输入字符串开始的位置。如果设置了 **RegExp** 对象的 **Multiline** 属性，^ 还会与"\n"或"\r"之后的位置匹配。 |
| $             | 匹配输入字符串结尾的位置。如果设置了 **RegExp** 对象的 **Multiline** 属性，$ 还会与"\n"或"\r"之前的位置匹配。 |
| *             | 零次或多次匹配前面的字符或子表达式。例如，zo* 匹配"z"和"zoo"。* 等效于 {0,}。 |
| +             | 一次或多次匹配前面的字符或子表达式。例如，"zo+"与"zo"和"zoo"匹配，但与"z"不匹配。+ 等效于 {1,}。 |
| ?             | 零次或一次匹配前面的字符或子表达式。例如，"do(es)?"匹配"do"或"does"中的"do"。? 等效于 {0,1}。 |
| {*n*}         | *n* 是非负整数。正好匹配 *n* 次。例如，"o{2}"与"Bob"中的"o"不匹配，但与"food"中的两个"o"匹配。 |
| {*n*,}        | *n* 是非负整数。至少匹配 *n* 次。例如，"o{2,}"不匹配"Bob"中的"o"，而匹配"foooood"中的所有 o。"o{1,}"等效于"o+"。"o{0,}"等效于"o*"。 |
| {*n*,*m*}     | *m* 和 *n* 是非负整数，其中 *n* <= *m*。匹配至少 *n* 次，至多 *m* 次。例如，"o{1,3}"匹配"fooooood"中的头三个 o。'o{0,1}' 等效于 'o?'。注意：您不能将空格插入逗号和数字之间。 |
| ?             | 当此字符紧随任何其他限定符（*、+、?、{*n*}、{*n*,}、{*n*,*m*}）之后时，匹配模式是"非贪心的"。"非贪心的"模式匹配搜索到的、尽可能短的字符串，而默认的"贪心的"模式匹配搜索到的、尽可能长的字符串。例如，在字符串"oooo"中，"o+?"只匹配单个"o"，而"o+"匹配所有"o"。 |
| .             | 匹配除"\r\n"之外的任何单个字符。若要匹配包括"\r\n"在内的任意字符，请使用诸如"[\s\S]"之类的模式。 |
| (*pattern*)   | 匹配 *pattern* 并捕获该匹配的子表达式。可以使用 **$0…$9** 属性从结果"匹配"集合中检索捕获的匹配。若要匹配括号字符 ( )，请使用"\("或者"\)"。 |
| (?:*pattern*) | 匹配 *pattern* 但不捕获该匹配的子表达式，即它是一个非捕获匹配，不存储供以后使用的匹配。这对于用"or"字符 (\|) 组合模式部件的情况很有用。例如，'industr(?:y\|ies) 是比 'industry\|industries' 更经济的表达式。 |
| (?=*pattern*) | 执行正向预测先行搜索的子表达式，该表达式匹配处于匹配 *pattern* 的字符串的起始点的字符串。它是一个非捕获匹配，即不能捕获供以后使用的匹配。例如，'Windows (?=95\|98\|NT\|2000)' 匹配"Windows 2000"中的"Windows"，但不匹配"Windows 3.1"中的"Windows"。预测先行不占用字符，即发生匹配后，下一匹配的搜索紧随上一匹配之后，而不是在组成预测先行的字符后。 |
| (?!*pattern*) | 执行反向预测先行搜索的子表达式，该表达式匹配不处于匹配 *pattern* 的字符串的起始点的搜索字符串。它是一个非捕获匹配，即不能捕获供以后使用的匹配。例如，'Windows (?!95\|98\|NT\|2000)' 匹配"Windows 3.1"中的 "Windows"，但不匹配"Windows 2000"中的"Windows"。预测先行不占用字符，即发生匹配后，下一匹配的搜索紧随上一匹配之后，而不是在组成预测先行的字符后。 |
| *x*\|*y*      | 匹配 *x* 或 *y*。例如，'z\|food' 匹配"z"或"food"。'(z\|f)ood' 匹配"zood"或"food"。 |
| [*xyz*]       | 字符集。匹配包含的任一字符。例如，"[abc]"匹配"plain"中的"a"。 |
| [^*xyz*]      | 反向字符集。匹配未包含的任何字符。例如，"[^abc]"匹配"plain"中"p"，"l"，"i"，"n"。 |
| [*a-z*]       | 字符范围。匹配指定范围内的任何字符。例如，"[a-z]"匹配"a"到"z"范围内的任何小写字母。 |
| [^*a-z*]      | 反向范围字符。匹配不在指定的范围内的任何字符。例如，"[^a-z]"匹配任何不在"a"到"z"范围内的任何字符。 |
| \b            | 匹配一个字边界，即字与空格间的位置。例如，"er\b"匹配"never"中的"er"，但不匹配"verb"中的"er"。 |
| \B            | 非字边界匹配。"er\B"匹配"verb"中的"er"，但不匹配"never"中的"er"。 |
| \c*x*         | 匹配 *x* 指示的控制字符。例如，\cM 匹配 Control-M 或回车符。*x* 的值必须在 A-Z 或 a-z 之间。如果不是这样，则假定 c 就是"c"字符本身。 |
| \d            | 数字字符匹配。等效于 [0-9]。                                 |
| \D            | 非数字字符匹配。等效于 [^0-9]。                              |
| \f            | 换页符匹配。等效于 \x0c 和 \cL。                             |
| \n            | 换行符匹配。等效于 \x0a 和 \cJ。                             |
| \r            | 匹配一个回车符。等效于 \x0d 和 \cM。                         |
| \s            | 匹配任何空白字符，包括空格、制表符、换页符等。与 [ \f\n\r\t\v] 等效。 |
| \S            | 匹配任何非空白字符。与 [^ \f\n\r\t\v] 等效。                 |
| \t            | 制表符匹配。与 \x09 和 \cI 等效。                            |
| \v            | 垂直制表符匹配。与 \x0b 和 \cK 等效。                        |
| \w            | 匹配任何字类字符，包括下划线。与"[A-Za-z0-9_]"等效。         |
| \W            | 与任何非单词字符匹配。与"[^A-Za-z0-9_]"等效。                |
| \x*n*         | 匹配 *n*，此处的 *n* 是一个十六进制转义码。十六进制转义码必须正好是两位数长。例如，"\x41"匹配"A"。"\x041"与"\x04"&"1"等效。允许在正则表达式中使用 ASCII 代码。 |
| \*num*        | 匹配 *num*，此处的 *num* 是一个正整数。到捕获匹配的反向引用。例如，"(.)\1"匹配两个连续的相同字符。 |
| \*n*          | 标识一个八进制转义码或反向引用。如果 \*n* 前面至少有 *n* 个捕获子表达式，那么 *n* 是反向引用。否则，如果 *n* 是八进制数 (0-7)，那么 *n* 是八进制转义码。 |
| \*nm*         | 标识一个八进制转义码或反向引用。如果 \*nm* 前面至少有 *nm* 个捕获子表达式，那么 *nm* 是反向引用。如果 \*nm* 前面至少有 *n* 个捕获，则 *n* 是反向引用，后面跟有字符 *m*。如果两种前面的情况都不存在，则 \*nm* 匹配八进制值 *nm*，其中 *n* 和 *m* 是八进制数字 (0-7)。 |
| \nml          | 当 *n* 是八进制数 (0-3)，*m* 和 *l* 是八进制数 (0-7) 时，匹配八进制转义码 *nml*。 |
| \u*n*         | 匹配 *n*，其中 *n* 是以四位十六进制数表示的 Unicode 字符。例如，\u00A9 匹配版权符号 (©)。 |

> 根据 Java Language Specification 的要求，Java 源代码的字符串中的反斜线被解释为 Unicode 转义或其他字符转义。因此必须在字符串字面值中使用两个反斜线，表示正则表达式受到保护，不被 Java 字节码编译器解释。例如，当解释为正则表达式时，字符串字面值 "\b" 与单个退格字符匹配，而 "\\b" 与单词边界匹配。字符串字面值 "\(hello\)" 是非法的，将导致编译时错误；要与字符串 (hello) 匹配，必须使用字符串字面值 "\\(hello\\)"。

------

## Matcher 类的方法

## 索引方法

索引方法提供了有用的索引值，精确表明输入字符串中在哪能找到匹配：

| **序号** | **方法及说明**                                               |
| :------- | :----------------------------------------------------------- |
| 1        | **public int start()** 返回以前匹配的初始索引。              |
| 2        | **public int start(int group)**  返回在以前的匹配操作期间，由给定组所捕获的子序列的初始索引 |
| 3        | **public int end()** 返回最后匹配字符之后的偏移量。          |
| 4        | **public int end(int group)** 返回在以前的匹配操作期间，由给定组所捕获子序列的最后字符之后的偏移量。 |

## 查找方法

查找方法用来检查输入字符串并返回一个布尔值，表示是否找到该模式：

| **序号** | **方法及说明**                                               |
| :------- | :----------------------------------------------------------- |
| 1        | **public boolean lookingAt()**  尝试将从区域开头开始的输入序列与该模式匹配。 |
| 2        | **public boolean find()** 尝试查找与该模式匹配的输入序列的下一个子序列。 |
| 3        | **public boolean find(int start****）** 重置此匹配器，然后尝试查找匹配该模式、从指定索引开始的输入序列的下一个子序列。 |
| 4        | **public boolean matches()** 尝试将整个区域与模式匹配。      |

## 替换方法

替换方法是替换输入字符串里文本的方法：

| **序号** | **方法及说明**                                               |
| :------- | :----------------------------------------------------------- |
| 1        | **public Matcher appendReplacement(StringBuffer sb, String replacement)** 实现非终端添加和替换步骤。 |
| 2        | **public StringBuffer appendTail(StringBuffer sb)** 实现终端添加和替换步骤。 |
| 3        | **public String replaceAll(String replacement)**  替换模式与给定替换字符串相匹配的输入序列的每个子序列。 |
| 4        | **public String replaceFirst(String replacement)**  替换模式与给定替换字符串匹配的输入序列的第一个子序列。 |
| 5        | **public static String quoteReplacement(String s)** 返回指定字符串的字面替换字符串。这个方法返回一个字符串，就像传递给Matcher类的appendReplacement 方法一个字面字符串一样工作。 |

## start 和 end 方法

下面是一个对单词 "cat" 出现在输入字符串中出现次数进行计数的例子：

## RegexMatches.java 文件代码：

import java.util.regex.Matcher; import java.util.regex.Pattern;  public class RegexMatches {    private static final String REGEX = "\\bcat\\b";    private static final String INPUT =                                    "cat cat cat cattie cat";     public static void main( String[] args ){       Pattern p = Pattern.compile(REGEX);       Matcher m = p.matcher(INPUT); // 获取 matcher 对象       int count = 0;        while(m.find()) {         count++;         System.out.println("Match number "+count);         System.out.println("start(): "+m.start());         System.out.println("end(): "+m.end());      }   } }

以上实例编译运行结果如下：

```
Match number 1
start(): 0
end(): 3
Match number 2
start(): 4
end(): 7
Match number 3
start(): 8
end(): 11
Match number 4
start(): 19
end(): 22
```

可以看到这个例子是使用单词边界，以确保字母 "c" "a" "t" 并非仅是一个较长的词的子串。它也提供了一些关于输入字符串中匹配发生位置的有用信息。

Start 方法返回在以前的匹配操作期间，由给定组所捕获的子序列的初始索引，end 方法最后一个匹配字符的索引加 1。

## matches 和 lookingAt 方法

matches 和 lookingAt 方法都用来尝试匹配一个输入序列模式。它们的不同是 matches 要求整个序列都匹配，而lookingAt 不要求。

lookingAt 方法虽然不需要整句都匹配，但是需要从第一个字符开始匹配。

这两个方法经常在输入字符串的开始使用。

我们通过下面这个例子，来解释这个功能：

## RegexMatches.java 文件代码：

import java.util.regex.Matcher; import java.util.regex.Pattern;  public class RegexMatches {    private static final String REGEX = "foo";    private static final String INPUT = "fooooooooooooooooo";    private static final String INPUT2 = "ooooofoooooooooooo";    private static Pattern pattern;    private static Matcher matcher;    private static Matcher matcher2;     public static void main( String[] args ){       pattern = Pattern.compile(REGEX);       matcher = pattern.matcher(INPUT);       matcher2 = pattern.matcher(INPUT2);        System.out.println("Current REGEX is: "+REGEX);       System.out.println("Current INPUT is: "+INPUT);       System.out.println("Current INPUT2 is: "+INPUT2);         System.out.println("lookingAt(): "+matcher.lookingAt());       System.out.println("matches(): "+matcher.matches());       System.out.println("lookingAt(): "+matcher2.lookingAt());   } }

以上实例编译运行结果如下：

```
Current REGEX is: foo
Current INPUT is: fooooooooooooooooo
Current INPUT2 is: ooooofoooooooooooo
lookingAt(): true
matches(): false
lookingAt(): false
```

## replaceFirst 和 replaceAll 方法

replaceFirst 和 replaceAll 方法用来替换匹配正则表达式的文本。不同的是，replaceFirst 替换首次匹配，replaceAll 替换所有匹配。

下面的例子来解释这个功能：

## RegexMatches.java 文件代码：

import java.util.regex.Matcher; import java.util.regex.Pattern;  public class RegexMatches {    private static String REGEX = "dog";    private static String INPUT = "The dog says meow. " +                                    "All dogs say meow.";    private static String REPLACE = "cat";     public static void main(String[] args) {       Pattern p = Pattern.compile(REGEX);       // get a matcher object       Matcher m = p.matcher(INPUT);        INPUT = m.replaceAll(REPLACE);       System.out.println(INPUT);   } }

以上实例编译运行结果如下：

```
The cat says meow. All cats say meow.
```

## appendReplacement 和 appendTail 方法

Matcher 类也提供了appendReplacement 和 appendTail 方法用于文本替换：

看下面的例子来解释这个功能：

## RegexMatches.java 文件代码：

import java.util.regex.Matcher; import java.util.regex.Pattern;  public class RegexMatches {   private static String REGEX = "a*b";   private static String INPUT = "aabfooaabfooabfoobkkk";   private static String REPLACE = "-";   public static void main(String[] args) {      Pattern p = Pattern.compile(REGEX);      // 获取 matcher 对象      Matcher m = p.matcher(INPUT);      StringBuffer sb = new StringBuffer();      while(m.find()){         m.appendReplacement(sb,REPLACE);      }      m.appendTail(sb);      System.out.println(sb.toString());   } }

以上实例编译运行结果如下：

```
-foo-foo-foo-kkk
```

## PatternSyntaxException 类的方法

PatternSyntaxException 是一个非强制异常类，它指示一个正则表达式模式中的语法错误。

PatternSyntaxException 类提供了下面的方法来帮助我们查看发生了什么错误。

| **序号** | **方法及说明**                                               |
| :------- | :----------------------------------------------------------- |
| 1        | **public String getDescription()** 获取错误的描述。          |
| 2        | **public int getIndex()**  获取错误的索引。                  |
| 3        | **public String getPattern()** 获取错误的正则表达式模式。    |
| 4        | **public String getMessage()** 返回多行字符串，包含语法错误及其索引的描述、错误的正则表达式模式和模式中错误索引的可视化指示。 |

# Java 方法

在前面几个章节中我们经常使用到 **System.out.println()**，那么它是什么呢？

- println() 是一个方法。
- System 是系统类。
- out 是标准输出对象。

这句话的用法是调用系统类 System 中的标准输出对象 out 中的方法 println()。



### 那么什么是方法呢？

Java方法是语句的集合，它们在一起执行一个功能。

- 方法是解决一类问题的步骤的有序组合
- 方法包含于类或对象中
- 方法在程序中被创建，在其他地方被引用

### 方法的优点

- 1. 使程序变得更简短而清晰。
- 2. 有利于程序维护。
- 3. 可以提高程序开发的效率。
- 4. 提高了代码的重用性。

### 方法的命名规则

- 1.方法的名字的第一个单词应以小写字母作为开头，后面的单词则用大写字母开头写，不使用连接符。例如：**addPerson**。
- 2.下划线可能出现在 JUnit 测试方法名称中用以分隔名称的逻辑组件。一个典型的模式是：**test<MethodUnderTest>_<state>**，例如 **testPop_emptyStack**。

------

## 方法的定义

一般情况下，定义一个方法包含以下语法：

修饰符 返回值类型 方法名(参数类型 参数名){    ...    方法体    ...    return 返回值; }

方法包含一个方法头和一个方法体。下面是一个方法的所有部分：

- **修饰符：**修饰符，这是可选的，告诉编译器如何调用该方法。定义了该方法的访问类型。
- **返回值类型 ：**方法可能会返回值。returnValueType 是方法返回值的数据类型。有些方法执行所需的操作，但没有返回值。在这种情况下，returnValueType 是关键字**void**。
- **方法名：**是方法的实际名称。方法名和参数表共同构成方法签名。
- **参数类型：**参数像是一个占位符。当方法被调用时，传递值给参数。这个值被称为实参或变量。参数列表是指方法的参数类型、顺序和参数的个数。参数是可选的，方法可以不包含任何参数。
- **方法体：**方法体包含具体的语句，定义该方法的功能。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/D53C92B3-9643-4871-8A72-33D491299653.jpg)

如：

public static int age(int birthday){...}

参数可以有多个：

static float interest(float principal, int year){...}

**注意：** 在一些其它语言中方法指过程和函数。一个返回非void类型返回值的方法称为函数；一个返回void类型返回值的方法叫做过程。

### 实例

下面的方法包含 2 个参数 num1 和 num2，它返回这两个参数的最大值。

/** 返回两个整型变量数据的较大值 */ public static int max(int num1, int num2) {   int result;   if (num1 > num2)      result = num1;   else      result = num2;    return result;  }

更简略的写法（三元运算符）：

public static int max(int num1, int num2) {  return num1 > num2 ? num1 : num2; }

------

## 方法调用

Java 支持两种调用方法的方式，根据方法是否返回值来选择。

当程序调用一个方法时，程序的控制权交给了被调用的方法。当被调用方法的返回语句执行或者到达方法体闭括号时候交还控制权给程序。

当方法返回一个值的时候，方法调用通常被当做一个值。例如：

int larger = max(30, 40);

如果方法返回值是void，方法调用一定是一条语句。例如，方法println返回void。下面的调用是个语句：

System.out.println("欢迎访问菜鸟教程！");

### 实例

下面的例子演示了如何定义一个方法，以及如何调用它：

## TestMax.java 文件代码：

public class TestMax {   /** 主方法 */   public static void main(String[] args) {      int i = 5;      int j = 2;      int k = max(i, j);      System.out.println( i + " 和 " + j + " 比较，最大值是：" + k);   }    /** 返回两个整数变量较大的值 */   public static int max(int num1, int num2) {      int result;      if (num1 > num2)         result = num1;      else         result = num2;       return result;    } }

以上实例编译运行结果如下：

```
5 和 2 比较，最大值是：5
```

这个程序包含 main 方法和 max 方法。main 方法是被 JVM 调用的，除此之外，main 方法和其它方法没什么区别。

main 方法的头部是不变的，如例子所示，带修饰符 public 和 static,返回 void 类型值，方法名字是 main,此外带个一个 String[] 类型参数。String[] 表明参数是字符串数组。

------

## void 关键字

本节说明如何声明和调用一个 void 方法。

下面的例子声明了一个名为 printGrade 的方法，并且调用它来打印给定的分数。

### 示例

## TestVoidMethod.java 文件代码：

public class TestVoidMethod {  public static void main(String[] args) {    printGrade(78.5);  }   public static void printGrade(double score) {    if (score >= 90.0) {       System.out.println('A');    }    else if (score >= 80.0) {       System.out.println('B');    }    else if (score >= 70.0) {       System.out.println('C');    }    else if (score >= 60.0) {       System.out.println('D');    }    else {       System.out.println('F');    }  } }

以上实例编译运行结果如下：

```
C
```

这里printGrade方法是一个void类型方法，它不返回值。

一个void方法的调用一定是一个语句。 所以，它被在main方法第三行以语句形式调用。就像任何以分号结束的语句一样。

------

## 通过值传递参数

调用一个方法时候需要提供参数，你必须按照参数列表指定的顺序提供。

例如，下面的方法连续n次打印一个消息：

## TestVoidMethod.java 文件代码：

public static void nPrintln(String message, int n) {  for (int i = 0; i < n; i++) {    System.out.println(message);  } }

### 示例

下面的例子演示按值传递的效果。

该程序创建一个方法，该方法用于交换两个变量。

## TestPassByValue.java 文件代码：

public class TestPassByValue {  public static void main(String[] args) {    int num1 = 1;    int num2 = 2;     System.out.println("交换前 num1 的值为：" +                        num1 + " ，num2 的值为：" + num2);     // 调用swap方法    swap(num1, num2);    System.out.println("交换后 num1 的值为：" +                       num1 + " ，num2 的值为：" + num2);  }  /** 交换两个变量的方法 */  public static void swap(int n1, int n2) {    System.out.println("\t进入 swap 方法");    System.out.println("\t\t交换前 n1 的值为：" + n1                         + "，n2 的值：" + n2);    // 交换 n1 与 n2的值    int temp = n1;    n1 = n2;    n2 = temp;     System.out.println("\t\t交换后 n1 的值为 " + n1                         + "，n2 的值：" + n2);  } }

以上实例编译运行结果如下：

```
交换前 num1 的值为：1 ，num2 的值为：2
    进入 swap 方法
        交换前 n1 的值为：1，n2 的值：2
        交换后 n1 的值为 2，n2 的值：1
交换后 num1 的值为：1 ，num2 的值为：2
```

传递两个参数调用swap方法。有趣的是，方法被调用后，实参的值并没有改变。

------

## 方法的重载

上面使用的max方法仅仅适用于int型数据。但如果你想得到两个浮点类型数据的最大值呢？

解决方法是创建另一个有相同名字但参数不同的方法，如下面代码所示：

public static double max(double num1, double num2) {  if (num1 > num2)    return num1;  else    return num2; }

如果你调用max方法时传递的是int型参数，则 int型参数的max方法就会被调用；

如果传递的是double型参数，则double类型的max方法体会被调用，这叫做方法重载；

就是说一个类的两个方法拥有相同的名字，但是有不同的参数列表。

Java编译器根据方法签名判断哪个方法应该被调用。

方法重载可以让程序更清晰易读。执行密切相关任务的方法应该使用相同的名字。

重载的方法必须拥有不同的参数列表。你不能仅仅依据修饰符或者返回类型的不同来重载方法。

------

## 变量作用域

变量的范围是程序中该变量可以被引用的部分。

方法内定义的变量被称为局部变量。

局部变量的作用范围从声明开始，直到包含它的块结束。

局部变量必须声明才可以使用。

方法的参数范围涵盖整个方法。参数实际上是一个局部变量。

for循环的初始化部分声明的变量，其作用范围在整个循环。

但循环体内声明的变量其适用范围是从它声明到循环体结束。它包含如下所示的变量声明：

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/12-130Q1221013F0.jpg)

你可以在一个方法里，不同的非嵌套块中多次声明一个具有相同的名称局部变量，但你不能在嵌套块内两次声明局部变量。

## 命令行参数的使用

有时候你希望运行一个程序时候再传递给它消息。这要靠传递命令行参数给main()函数实现。

命令行参数是在执行程序时候紧跟在程序名字后面的信息。

### 实例

下面的程序打印所有的命令行参数：

## CommandLine.java 文件代码：

public class CommandLine {   public static void main(String[] args){       for(int i=0; i<args.length; i++){         System.out.println("args[" + i + "]: " + args[i]);      }   } }

如下所示，运行这个程序：

```
$ javac CommandLine.java 
$ java CommandLine this is a command line 200 -100
args[0]: this
args[1]: is
args[2]: a
args[3]: command
args[4]: line
args[5]: 200
args[6]: -100
```

------

## 构造方法

构造方法（Constructor）是用于创建类的对象的特殊方法。当使用 new 关键字创建对象时，构造方法会自动调用，用来初始化对象的属性。

**构造方法特点：**

- **方法名与类名相同**：构造方法的名字必须和类名一致。
- **没有返回类型**：构造方法没有返回类型，连 `void` 也不能写。
- **在创建对象时自动调用**：每次使用 `new` 创建对象时，都会自动调用构造方法。
- **可以重载**：可以为同一个类定义多个构造方法，但这些构造方法的参数列表必须不同（即构成重载）。

不管你是否自定义构造方法，所有的类都有构造方法，因为 Java 自动提供了一个默认构造方法，默认构造方法的访问修饰符和类的访问修饰符相同(类为 public，构造函数也为 public；类改为 protected，构造函数也改为 protected)。

一旦你定义了自己的构造方法，默认构造方法就会失效。

### 实例

下面是一个使用构造方法的例子：

// 一个简单的构造函数 class MyClass {  int x;   // 以下是构造函数  MyClass(int i ) {    x = i;  } }

你可以像下面这样调用构造方法来初始化一个对象：

## ConsDemo.java 文件代码：

public class ConsDemo {  public static void main(String[] args) {    MyClass t1 = new MyClass( 10 );    MyClass t2 = new MyClass( 20 );    System.out.println(t1.x + " " + t2.x);  } }

运行结果如下：

```
10 20
```

> 更多内容参考下一章节：[Java 构造方法](https://www.runoob.com/java/java-constructor.html)。

## 可变参数

JDK 1.5 开始，Java支持传递同类型的可变参数给一个方法。

方法的可变参数的声明如下所示：

typeName... parameterName

在方法声明中，在指定参数类型后加一个省略号(...) 。

一个方法中只能指定一个可变参数，它必须是方法的最后一个参数。任何普通的参数必须在它之前声明。

### 实例

## VarargsDemo.java 文件代码：

public class VarargsDemo {    public static void main(String[] args) {        // 调用可变参数的方法        printMax(34, 3, 3, 2, 56.5);        printMax(new double[]{1, 2, 3});    }     public static void printMax( double... numbers) {        if (numbers.length == 0) {            System.out.println("No argument passed");            return;        }         double result = numbers[0];         for (int i = 1; i <  numbers.length; i++){            if (numbers[i] >  result) {                result = numbers[i];            }        }        System.out.println("The max value is " + result);    } }

以上实例编译运行结果如下：

```
The max value is 56.5
The max value is 3.0
```

------

## finalize() 方法

> finalize 方法在 Java 9 中已被标记为废弃，并在未来的 Java 版本中将会移除。推荐使用 **[try-with-resources](https://www.runoob.com/java/java9-try-with-resources-improvement.html)** 或 **[java.lang.ref.Cleaner](https://www.runoob.com/java/java-cleaner-class.html)** 来管理资源。

Java 允许定义这样的方法，它在对象被垃圾收集器析构(回收)之前调用，这个方法叫做 finalize( )，它用来清除回收对象。

例如，你可以使用 finalize() 来确保一个对象打开的文件被关闭了。

在 finalize() 方法里，你必须指定在对象销毁时候要执行的操作。

finalize() 一般格式是：

protected void finalize() {   // 在这里终结代码 }

关键字 protected 是一个限定符，它确保 finalize() 方法不会被该类以外的代码调用。

当然，Java 的内存回收可以由 JVM 来自动完成。如果你手动使用，则可以使用上面的方法。

### 实例

## FinalizationDemo.java 文件代码：

public class FinalizationDemo {    public static void main(String[] args) {      Cake c1 = new Cake(1);      Cake c2 = new Cake(2);      Cake c3 = new Cake(3);            c2 = c3 = null;      System.gc(); //调用Java垃圾收集器  }   }    class Cake extends Object {    private int id;    public Cake(int id) {      this.id = id;      System.out.println("Cake Object " + id + "is created");    }        protected void finalize() throws java.lang.Throwable {      super.finalize();      System.out.println("Cake Object " + id + "is disposed");    }   }

运行以上代码，输出结果如下：

```
$ javac FinalizationDemo.java 
$ java FinalizationDemo
Cake Object 1is created
Cake Object 2is created
Cake Object 3is created
Cake Object 3is disposed
Cake Object 2is disposed
```

**替代方案：** 推荐使用 AutoCloseable 接口，结合 try-with-resources 语句来自动关闭资源。例如：

```
try (Resource res = new Resource()) {
    // 使用资源
} catch (Exception e) {
    e.printStackTrace();
}
```

# Java 构造方法

在 Java 中，构造方法（Constructor）是用于创建类的对象的特殊方法。

当使用 new 关键字创建对象时，构造方法会自动调用，用来初始化对象的属性。

**构造方法具有以下几个特点：**

- **与类名相同**：构造方法的名称必须与类名完全一致，包括大小写。这是构造方法的一个基本要求。
- **没有返回类型**：构造方法没有返回类型声明，即使是 `void` 也不写。这使得它与普通方法区分开来。
- **自动调用**：每次使用 `new` 创建对象时，构造方法会自动调用，以初始化对象的属性和状态。
- **不能直接调用**：构造方法只能通过 `new` 关键字在创建对象时调用，不能像普通方法那样直接调用。
- **支持重载**：可以为一个类定义多个构造方法，只要它们的参数列表不同。通过重载，可以创建不同的构造方法以适应不同的初始化需求。
- **默认构造方法**：如果没有定义任何构造方法，Java 会提供一个无参的默认构造方法。但一旦定义了任何其他构造方法，Java 不再提供默认构造方法。
- **`this` 关键字的使用**：在构造方法中可以使用 `this` 来引用当前对象的属性、方法，或调用另一个构造方法（必须是构造方法的第一行），以避免重复代码。
- **不能被继承，但可以被调用**：构造方法不能被子类继承，但子类可以使用 `super()` 来调用父类的构造方法，以便初始化继承的属性。
- **对象初始化保障**：构造方法的主要作用是初始化对象的属性和状态，保证对象在创建时处于一个合法的初始状态。

**构造方法的作用：**

- **初始化对象属性**：构造方法的主要作用是为对象的属性赋初值。
- **保证对象初始化的完整性**：在构造方法中可以设置默认值或必要参数，从而避免对象未完全初始化的问题。

------

## 构造方法的类型

Java 中的构造方法分为两种类型：**无参构造方法**和**有参构造方法**。

### 1、无参构造方法（默认构造方法）

如果一个类中没有定义任何构造方法，Java 会默认提供一个无参构造方法。例如：

## 实例

**public** **class** Person {
  **public** Person() {
    System.out.println("Person对象已创建");
  }
}

- 在没有显式定义构造方法时，Java 自动提供一个默认的无参构造方法。
- 一旦定义了其他构造方法，Java 将不再提供默认构造方法。

### 2、有参构造方法

可以定义带有参数的构造方法，用来在创建对象时为属性赋值：

## 实例

**public** **class** Person {
  String name;
  **int** age;

  **public** Person(String name, **int** age) {
    **this**.name = name;
    **this**.age = age;
  }
}

调用有参构造方法时，可以为对象的属性进行初始化：

```
Person p = new Person("Alice", 25);
```

------

## 构造方法的重载

Java 支持构造方法的重载，即可以在同一个类中定义多个构造方法，只要参数列表不同即可。例如：

## 实例

**public** **class** Person {
  String name;
  **int** age;

  **public** Person() {
    **this**.name = "Unknown";
    **this**.age = 0;
  }

  **public** Person(String name) {
    **this**.name = name;
    **this**.age = 0;
  }

  **public** Person(String name, **int** age) {
    **this**.name = name;
    **this**.age = age;
  }
}

创建对象时，Java 会根据传入的参数数量和类型自动选择匹配的构造方法：

```
Person p1 = new Person(); // 调用无参构造方法
Person p2 = new Person("Alice"); // 调用单参数构造方法
Person p3 = new Person("Bob", 30); // 调用双参数构造方法
```

------

## 构造方法中的 this 关键字

在构造方法中，this 关键字通常用于两种情况：

**1、引用当前对象的属性或方法：**当构造方法的参数名与类属性名相同时，使用 this 来区分类属性和参数。例如：

## 实例

**public** Person(String name, **int** age) {
  **this**.name = name; *// this.name 表示类的属性*
  **this**.age = age;
}

**2、调用另一个构造方法：**可以使用 this() 调用当前类的其他构造方法，常用于避免重复代码，但必须放在构造方法的第一行。

## 实例

**public** Person(String name) {
  **this**(name, 0); *// 调用另一个双参数的构造方法*
}

**public** Person(String name, **int** age) {
  **this**.name = name;
  **this**.age = age;
}

构造方法是 Java 面向对象编程中非常重要的部分，通过使用构造方法可以有效控制对象的初始化过程，保证创建出的对象状态的完整性和一致性。

# Java Stream、File、IO 

Java 中的流（Stream）、文件（File）和 IO（输入输出）是处理数据读取和写入的基础设施，它们允许程序与外部数据（如文件、网络、系统输入等）进行交互。

java.io 包是 Java 标准库中的一个核心包，提供了用于系统输入和输出的类，它包含了处理数据流（字节流和字符流）、文件读写、序列化以及数据格式化的工具。

java.io 是处理文件操作、流操作以及低级别 IO 操作的基础包。



java.io 包中的流支持很多种格式，比如：基本类型、对象、本地化字符集等等。

一个流可以理解为一个数据的序列。输入流表示从一个源读取数据，输出流表示向一个目标写数据。

------

## 读取控制台输入

Java 的控制台输入由 System.in 完成。

为了获得一个绑定到控制台的字符流，你可以把 System.in 包装在一个 BufferedReader 对象中来创建一个字符流。

下面是创建 BufferedReader 的基本语法：

BufferedReader br = new BufferedReader(new                       InputStreamReader(System.in));

BufferedReader 对象创建后，我们便可以使用 read() 方法从控制台读取一个字符，或者用 readLine() 方法读取一个字符串。

------

## 从控制台读取多字符输入

从 BufferedReader 对象读取一个字符要使用 read() 方法，它的语法如下：

int read( ) throws IOException

每次调用 read() 方法，它从输入流读取一个字符并把该字符作为整数值返回。 当流结束的时候返回 -1。该方法抛出 IOException。

下面的程序示范了用 read() 方法从控制台不断读取字符直到用户输入 **q**。

## BRRead.java 文件代码：

//使用 BufferedReader 在控制台读取字符  import java.io.*;  public class BRRead {    public static void main(String[] args) throws IOException {        char c;        // 使用 System.in 创建 BufferedReader        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));        System.out.println("输入字符, 按下 'q' 键退出。");        // 读取字符        do {            c = (char) br.read();            System.out.println(c);        } while (c != 'q');    } }

以上实例编译运行结果如下:

```
输入字符, 按下 'q' 键退出。
runoob
r
u
n
o
o
b


q
q
```

------

## 从控制台读取字符串

从标准输入读取一个字符串需要使用 BufferedReader 的 readLine() 方法。

它的一般格式是：

String readLine( ) throws IOException

下面的程序读取和显示字符行直到你输入了单词"end"。

## BRReadLines.java 文件代码：

//使用 BufferedReader 在控制台读取字符 import java.io.*;  public class BRReadLines {    public static void main(String[] args) throws IOException {        // 使用 System.in 创建 BufferedReader        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));        String str;        System.out.println("Enter lines of text.");        System.out.println("Enter 'end' to quit.");        do {            str = br.readLine();            System.out.println(str);        } while (!str.equals("end"));    } }

以上实例编译运行结果如下:

```
Enter lines of text.
Enter 'end' to quit.
This is line one
This is line one
This is line two
This is line two
end
end
```

> JDK 5 后的版本我们也可以使用 [Java Scanner](https://www.runoob.com/java/java-scanner-class.html) 类来获取控制台的输入。

------

## 控制台输出

在此前已经介绍过，控制台的输出由 print( ) 和 println() 完成。这些方法都由类 PrintStream 定义，System.out 是该类对象的一个引用。

PrintStream 继承了 OutputStream类，并且实现了方法 write()。这样，write() 也可以用来往控制台写操作。

PrintStream 定义 write() 的最简单格式如下所示：

void write(int byteval)

该方法将 byteval 的低八位字节写到流中。

### 实例

下面的例子用 write() 把字符 "A" 和紧跟着的换行符输出到屏幕：

## WriteDemo.java 文件代码：

import java.io.*;  //演示 System.out.write(). public class WriteDemo {    public static void main(String[] args) {        int b;        b = 'A';        System.out.write(b);        System.out.write('\n');    } }

运行以上实例在输出窗口输出 "A" 字符

```
A
```

**注意：**write() 方法不经常使用，因为 print() 和 println() 方法用起来更为方便。

------

## 读写文件

如前所述，一个流被定义为一个数据序列。输入流用于从源读取数据，输出流用于向目标写数据。

下图是一个描述输入流和输出流的类层次图。

[![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/iostream2xx.png)](https://www.runoob.com/wp-content/uploads/2013/12/iostream2xx.png)

### 字节流（处理二进制数据）

字节流用于处理二进制数据，例如文件、图像、视频等。

| 类名                    | 类型            | 描述                                                         |
| :---------------------- | :-------------- | :----------------------------------------------------------- |
| `InputStream`           | 抽象类 (输入流) | 所有字节输入流的超类，处理字节的输入操作。                   |
| `OutputStream`          | 抽象类 (输出流) | 所有字节输出流的超类，处理字节的输出操作。                   |
| `FileInputStream`       | 输入流          | 从文件中读取字节数据。                                       |
| `FileOutputStream`      | 输出流          | 将字节数据写入文件。                                         |
| `BufferedInputStream`   | 输入流          | 为字节输入流提供缓冲功能，提高读取效率。                     |
| `BufferedOutputStream`  | 输出流          | 为字节输出流提供缓冲功能，提高写入效率。                     |
| `ByteArrayInputStream`  | 输入流          | 将内存中的字节数组作为输入源。                               |
| `ByteArrayOutputStream` | 输出流          | 将数据写入到内存中的字节数组。                               |
| `DataInputStream`       | 输入流          | 允许从输入流中读取 Java 原生数据类型（如 `int`、`float`、`boolean`）。 |
| `DataOutputStream`      | 输出流          | 允许向输出流中写入 Java 原生数据类型。                       |
| `ObjectInputStream`     | 输入流          | 从输入流中读取序列化对象。                                   |
| `ObjectOutputStream`    | 输出流          | 将对象序列化并写入输出流中。                                 |
| `PipedInputStream`      | 输入流          | 用于在管道中读取字节数据，通常与 `PipedOutputStream` 配合使用。 |
| `PipedOutputStream`     | 输出流          | 用于在管道中写入字节数据，通常与 `PipedInputStream` 配合使用。 |
| `FilterInputStream`     | 输入流          | 字节输入流的包装类，用于对其他输入流进行过滤处理。           |
| `FilterOutputStream`    | 输出流          | 字节输出流的包装类，用于对其他输出流进行过滤处理。           |
| `SequenceInputStream`   | 输入流          | 将多个输入流串联为一个输入流进行处理。                       |

### 字符流（处理文本数据）

字符流用于处理文本数据，例如读取和写入字符串或文件。

| 类名               | 类型            | 描述                                                      |
| :----------------- | :-------------- | :-------------------------------------------------------- |
| `Reader`           | 抽象类 (输入流) | 所有字符输入流的超类，处理字符的输入操作。                |
| `Writer`           | 抽象类 (输出流) | 所有字符输出流的超类，处理字符的输出操作。                |
| `FileReader`       | 输入流          | 从文件中读取字符数据。                                    |
| `FileWriter`       | 输出流          | 将字符数据写入文件。                                      |
| `BufferedReader`   | 输入流          | 为字符输入流提供缓冲功能，支持按行读取，提高读取效率。    |
| `BufferedWriter`   | 输出流          | 为字符输出流提供缓冲功能，支持按行写入，提高写入效率。    |
| `CharArrayReader`  | 输入流          | 将字符数组作为输入源。                                    |
| `CharArrayWriter`  | 输出流          | 将数据写入到字符数组。                                    |
| `StringReader`     | 输入流          | 将字符串作为输入源。                                      |
| `StringWriter`     | 输出流          | 将数据写入到字符串缓冲区。                                |
| `PrintWriter`      | 输出流          | 便捷的字符输出流，支持自动刷新和格式化输出。              |
| `PipedReader`      | 输入流          | 用于在管道中读取字符数据，通常与 `PipedWriter` 配合使用。 |
| `PipedWriter`      | 输出流          | 用于在管道中写入字符数据，通常与 `PipedReader` 配合使用。 |
| `LineNumberReader` | 输入流          | 带行号的缓冲字符输入流，允许跟踪读取的行号。              |
| `PushbackReader`   | 输入流          | 允许在读取字符后将字符推回流中，以便再次读取。            |

### 辅助类（其他重要类）

辅助类提供对文件、目录以及随机文件访问的支持。

| 类名               | 类型           | 描述                                                         |
| :----------------- | :------------- | :----------------------------------------------------------- |
| `File`             | 文件和目录操作 | 用于表示文件或目录，并提供文件操作，如创建、删除、重命名等。 |
| `RandomAccessFile` | 随机访问文件   | 支持文件的随机访问，可以从文件的任意位置读写数据。           |
| `Console`          | 控制台输入输出 | 提供对系统控制台的输入和输出支持。                           |

下面将要讨论的两个重要的流是 **FileInputStream** 和 **FileOutputStream**。

------

## FileInputStream

该流用于从文件读取数据，它的对象可以用关键字 new 来创建。

有多种构造方法可用来创建对象。

可以使用字符串类型的文件名来创建一个输入流对象来读取文件：

InputStream f = new FileInputStream("C:/java/hello");

也可以使用一个文件对象来创建一个输入流对象来读取文件。我们首先得使用 File() 方法来创建一个文件对象：

File f = new File("C:/java/hello"); InputStream in = new FileInputStream(f);

创建了 InputStream 对象，就可以使用下面的方法来读取流或者进行其他的流操作。

| 方法                                   | 描述                                                         | 示例代码                                                     |
| :------------------------------------- | :----------------------------------------------------------- | :----------------------------------------------------------- |
| `int read()`                           | 读取一个字节的数据，返回值为 0 到 255 之间的整数。如果到达流的末尾，返回 -1。 | `int data = inputStream.read();`                             |
| `int read(byte[] b)`                   | 从输入流中读取字节，并将其存储在字节数组 `b` 中，返回实际读取的字节数。如果到达流的末尾，返回 -1。 | `byte[] buffer = new byte[1024]; int bytesRead = inputStream.read(buffer);` |
| `int read(byte[] b, int off, int len)` | 从输入流中读取最多 `len` 个字节，并将它们存储在字节数组 `b` 的 `off` 偏移位置，返回实际读取的字节数。如果到达流的末尾，返回 -1。 | `byte[] buffer = new byte[1024]; int bytesRead = inputStream.read(buffer, 0, buffer.length);` |
| `long skip(long n)`                    | 跳过并丢弃输入流中的 `n` 个字节，返回实际跳过的字节数。      | `long skippedBytes = inputStream.skip(100);`                 |
| `int available()`                      | 返回可以读取的字节数（不阻塞）。                             | `int availableBytes = inputStream.available();`              |
| `void close()`                         | 关闭输入流并释放与该流相关的所有资源。                       | `inputStream.close();`                                       |
| `void mark(int readlimit)`             | 在流中的当前位置设置标记，`readlimit` 是可以读取的字节数上限。 | `inputStream.mark(1024);`                                    |
| `void reset()`                         | 将流重新定位到上次标记的位置，如果没有标记或标记失效，抛出 `IOException`。 | `inputStream.reset();`                                       |
| `boolean markSupported()`              | 检查当前输入流是否支持 `mark()` 和 `reset()` 操作。          | `boolean isMarkSupported = inputStream.markSupported();`     |

除了 InputStream 外，还有一些其他的输入流，更多的细节参考下面链接：

- [ByteArrayInputStream](https://www.runoob.com/java/java-bytearrayinputstream.html)
- [DataInputStream](https://www.runoob.com/java/java-datainputstream.html)

------

## FileOutputStream

该类用来创建一个文件并向文件中写数据。

如果该流在打开文件进行输出前，目标文件不存在，那么该流会创建该文件。

有两个构造方法可以用来创建 FileOutputStream 对象。

使用字符串类型的文件名来创建一个输出流对象：

OutputStream f = new FileOutputStream("C:/java/hello")

也可以使用一个文件对象来创建一个输出流来写文件。我们首先得使用File()方法来创建一个文件对象：

File f = new File("C:/java/hello"); OutputStream fOut = new FileOutputStream(f);

创建 OutputStream 对象完成后，就可以使用下面的方法来写入流或者进行其他的流操作。

| 方法                                     | 描述                                                         | 示例代码                                                     |
| :--------------------------------------- | :----------------------------------------------------------- | :----------------------------------------------------------- |
| `void write(int b)`                      | 将指定的字节写入输出流，`b` 的低 8 位将被写入流中。          | `outputStream.write(255);`                                   |
| `void write(byte[] b)`                   | 将字节数组 `b` 中的所有字节写入输出流。                      | `byte[] data = "Hello".getBytes(); outputStream.write(data);` |
| `void write(byte[] b, int off, int len)` | 将字节数组 `b` 中从偏移量 `off` 开始的 `len` 个字节写入输出流。 | `byte[] data = "Hello".getBytes(); outputStream.write(data, 0, data.length);` |
| `void flush()`                           | 刷新输出流并强制写出所有缓冲的数据，确保数据被立即写入目标输出。 | `outputStream.flush();`                                      |
| `void close()`                           | 关闭输出流并释放与该流相关的所有资源。关闭后不能再写入。     | `outputStream.close();`                                      |

除了 OutputStream 外，还有一些其他的输出流，更多的细节参考下面链接：

- [ByteArrayOutputStream](https://www.runoob.com/java/java-bytearrayoutputstream.html)
- [DataOutputStream](https://www.runoob.com/java/java-dataoutputstream.html)

### 实例

下面是一个演示 InputStream 和 OutputStream 用法的例子：

## fileStreamTest.java 文件代码：

import java.io.*;  public class fileStreamTest {    public static void main(String[] args) {        try {            byte bWrite[] = { 11, 21, 3, 40, 5 };            OutputStream os = new FileOutputStream("test.txt");            for (int x = 0; x < bWrite.length; x++) {                os.write(bWrite[x]); // writes the bytes            }            os.close();             InputStream is = new FileInputStream("test.txt");            int size = is.available();             for (int i = 0; i < size; i++) {                System.out.print((char) is.read() + "  ");            }            is.close();        } catch (IOException e) {            System.out.print("Exception");        }    } }

上面的程序首先创建文件test.txt，并把给定的数字以二进制形式写进该文件，同时输出到控制台上。

以上代码由于是二进制写入，可能存在乱码，你可以使用以下代码实例来解决乱码问题：

## fileStreamTest2.java 文件代码：

//文件名 :fileStreamTest2.java import java.io.*;  public class fileStreamTest2 {    public static void main(String[] args) throws IOException {         File f = new File("a.txt");        FileOutputStream fop = new FileOutputStream(f);        // 构建FileOutputStream对象,文件不存在会自动新建         OutputStreamWriter writer = new OutputStreamWriter(fop, "UTF-8");        // 构建OutputStreamWriter对象,参数可以指定编码,默认为操作系统默认编码,windows上是gbk         writer.append("中文输入");        // 写入到缓冲区         writer.append("\r\n");        // 换行         writer.append("English");        // 刷新缓存冲,写入到文件,如果下面已经没有写入的内容了,直接close也会写入         writer.close();        // 关闭写入流,同时会把缓冲区内容写入文件,所以上面的注释掉         fop.close();        // 关闭输出流,释放系统资源         FileInputStream fip = new FileInputStream(f);        // 构建FileInputStream对象         InputStreamReader reader = new InputStreamReader(fip, "UTF-8");        // 构建InputStreamReader对象,编码与写入相同         StringBuffer sb = new StringBuffer();        while (reader.ready()) {            sb.append((char) reader.read());            // 转成char加到StringBuffer对象中        }        System.out.println(sb.toString());        reader.close();        // 关闭读取流         fip.close();        // 关闭输入流,释放系统资源     } }

------

## 文件和I/O

还有一些关于文件和I/O的类，我们也需要知道：

- [File Class(类)](https://www.runoob.com/java/java-file.html)
- [FileReader Class(类)](https://www.runoob.com/java/java-filereader.html)
- [FileWriter Class(类)](https://www.runoob.com/java/java-filewriter.html)

------

## Java中的目录

### 创建目录：

File类中有两个方法可以用来创建文件夹：

- **mkdir( )**方法创建一个文件夹，成功则返回true，失败则返回false。失败表明File对象指定的路径已经存在，或者由于整个路径还不存在，该文件夹不能被创建。
- **mkdirs()**方法创建一个文件夹和它的所有父文件夹。

下面的例子创建 "/tmp/user/java/bin"文件夹：

## CreateDir.java 文件代码：

import java.io.File;  public class CreateDir {    public static void main(String[] args) {        String dirname = "/tmp/user/java/bin";        File d = new File(dirname);        // 现在创建目录        d.mkdirs();    } }

编译并执行上面代码来创建目录 "/tmp/user/java/bin"。

**注意：** Java 在 UNIX 和 Windows 自动按约定分辨文件路径分隔符。如果你在 Windows 版本的 Java 中使用分隔符 (/) ，路径依然能够被正确解析。

------

## 读取目录

一个目录其实就是一个 File 对象，它包含其他文件和文件夹。

如果创建一个 File 对象并且它是一个目录，那么调用 isDirectory() 方法会返回 true。

可以通过调用该对象上的 list() 方法，来提取它包含的文件和文件夹的列表。

下面展示的例子说明如何使用 list() 方法来检查一个文件夹中包含的内容：

## DirList.java 文件代码：

import java.io.File;  public class DirList {    public static void main(String args[]) {        String dirname = "/tmp";        File f1 = new File(dirname);        if (f1.isDirectory()) {            System.out.println("目录 " + dirname);            String s[] = f1.list();            for (int i = 0; i < s.length; i++) {                File f = new File(dirname + "/" + s[i]);                if (f.isDirectory()) {                    System.out.println(s[i] + " 是一个目录");                } else {                    System.out.println(s[i] + " 是一个文件");                }            }        } else {            System.out.println(dirname + " 不是一个目录");        }    } }

以上实例编译运行结果如下：

```
目录 /tmp
bin 是一个目录
lib 是一个目录
demo 是一个目录
test.txt 是一个文件
README 是一个文件
index.html 是一个文件
include 是一个目录
```

------

## 删除目录或文件

删除文件可以使用 **java.io.File.delete()** 方法。

以下代码会删除目录 **/tmp/java/**，需要注意的是当删除某一目录时，必须保证该目录下没有其他文件才能正确删除，否则将删除失败。

测试目录结构：

```
/tmp/java/
|-- 1.log
|-- test
```

## DeleteFileDemo.java 文件代码：

import java.io.File;  public class DeleteFileDemo {    public static void main(String[] args) {        // 这里修改为自己的测试目录        File folder = new File("/tmp/java/");        deleteFolder(folder);    }     // 删除文件及目录    public static void deleteFolder(File folder) {        File[] files = folder.listFiles();        if (files != null) {            for (File f : files) {                if (f.isDirectory()) {                    deleteFolder(f);                } else {                    f.delete();                }            }        }        folder.delete();    } }

# Java Scanner 类

java.util.Scanner 是 Java5 的新特征，我们可以通过 Scanner 类来获取用户的输入。

下面是创建 Scanner 对象的基本语法：

Scanner s = new Scanner(System.in);

接下来我们演示一个最简单的数据输入，并通过 Scanner 类的 next() 与 nextLine() 方法获取输入的字符串，在读取前我们一般需要 使用 hasNext 与 hasNextLine 判断是否还有输入的数据：

### 使用 next 方法：

## ScannerDemo.java 文件代码：

import java.util.Scanner;   public class ScannerDemo {    public static void main(String[] args) {        Scanner scan = new Scanner(System.in);        // 从键盘接收数据         // next方式接收字符串        System.out.println("next方式接收：");        // 判断是否还有输入        if (scan.hasNext()) {            String str1 = scan.next();            System.out.println("输入的数据为：" + str1);        }        scan.close();    } }

执行以上程序输出结果为：

```
$ javac ScannerDemo.java
$ java ScannerDemo
next方式接收：
runoob com
输入的数据为：runoob
```

可以看到 com 字符串并未输出，接下来我们看 nextLine。

### 使用 nextLine 方法：

## ScannerDemo.java 文件代码：

import java.util.Scanner;  public class ScannerDemo {    public static void main(String[] args) {        Scanner scan = new Scanner(System.in);        // 从键盘接收数据         // nextLine方式接收字符串        System.out.println("nextLine方式接收：");        // 判断是否还有输入        if (scan.hasNextLine()) {            String str2 = scan.nextLine();            System.out.println("输入的数据为：" + str2);        }        scan.close();    } }

执行以上程序输出结果为：

```
$ javac ScannerDemo.java
$ java ScannerDemo
nextLine方式接收：
runoob com
输入的数据为：runoob com
```

可以看到 com 字符串输出。

### next() 与 nextLine() 区别

next():

- 1、一定要读取到有效字符后才可以结束输入。
- 2、对输入有效字符之前遇到的空白，next() 方法会自动将其去掉。
- 3、只有输入有效字符后才将其后面输入的空白作为分隔符或者结束符。
- next() 不能得到带有空格的字符串。

nextLine()：

- 1、以Enter为结束符,也就是说 nextLine()方法返回的是输入回车之前的所有字符。
- 2、可以获得空白。

如果要输入 int 或 float 类型的数据，在 Scanner 类中也有支持，但是在输入之前最好先使用 hasNextXxx() 方法进行验证，再使用 nextXxx() 来读取：

## ScannerDemo.java 文件代码：

import java.util.Scanner;  public class ScannerDemo {    public static void main(String[] args) {        Scanner scan = new Scanner(System.in);        // 从键盘接收数据        int i = 0;        float f = 0.0f;        System.out.print("输入整数：");        if (scan.hasNextInt()) {            // 判断输入的是否是整数            i = scan.nextInt();            // 接收整数            System.out.println("整数数据：" + i);        } else {            // 输入错误的信息            System.out.println("输入的不是整数！");        }        System.out.print("输入小数：");        if (scan.hasNextFloat()) {            // 判断输入的是否是小数            f = scan.nextFloat();            // 接收小数            System.out.println("小数数据：" + f);        } else {            // 输入错误的信息            System.out.println("输入的不是小数！");        }        scan.close();    } }

执行以上程序输出结果为：

```
$ javac ScannerDemo.java
$ java ScannerDemo
输入整数：12
整数数据：12
输入小数：1.2
小数数据：1.2
```

以下实例我们可以输入多个数字，并求其总和与平均数，每输入一个数字用回车确认，通过输入非数字来结束输入并输出执行结果：

## ScannerDemo.java 文件代码：

import java.util.Scanner;  class RunoobTest {    public static void main(String[] args) {        System.out.println("请输入数字：");        Scanner scan = new Scanner(System.in);         double sum = 0;        int m = 0;         while (scan.hasNextDouble()) {            double x = scan.nextDouble();            m = m + 1;            sum = sum + x;        }         System.out.println(m + "个数的和为" + sum);        System.out.println(m + "个数的平均值是" + (sum / m));        scan.close();    } }

执行以上程序输出结果为（输入非数字来结束输入）：

```
$ javac ScannerDemo.java
$ java ScannerDemo
请输入数字：
12
23
15
21.4
end
4个数的和为71.4
4个数的平均值是17.85
```

------

## 常用方法

| 方法                                    | 描述                               |
| :-------------------------------------- | :--------------------------------- |
| **构造方法**                            |                                    |
| `Scanner(File source)`                  | 从文件创建 Scanner                 |
| `Scanner(InputStream source)`           | 从输入流创建 Scanner               |
| `Scanner(String source)`                | 从字符串创建 Scanner               |
| **基本输入方法**                        |                                    |
| `boolean hasNext()`                     | 检查是否有下一个标记（以空格分隔） |
| `String next()`                         | 读取下一个标记（字符串）           |
| `boolean hasNextLine()`                 | 检查是否有下一行                   |
| `String nextLine()`                     | 读取下一行内容                     |
| **类型检查方法**                        |                                    |
| `boolean hasNextInt()`                  | 检查下一个标记是否为整数           |
| `boolean hasNextDouble()`               | 检查下一个标记是否为双精度浮点数   |
| `boolean hasNextBoolean()`              | 检查下一个标记是否为布尔值         |
| **类型读取方法**                        |                                    |
| `int nextInt()`                         | 读取下一个整数                     |
| `double nextDouble()`                   | 读取下一个双精度浮点数             |
| `boolean nextBoolean()`                 | 读取下一个布尔值                   |
| `long nextLong()`                       | 读取下一个长整数                   |
| `float nextFloat()`                     | 读取下一个单精度浮点数             |
| `short nextShort()`                     | 读取下一个短整数                   |
| `byte nextByte()`                       | 读取下一个字节                     |
| **分隔符控制**                          |                                    |
| `Scanner useDelimiter(String pattern)`  | 设置分隔符模式                     |
| `Scanner useDelimiter(Pattern pattern)` | 使用正则表达式设置分隔符           |
| `String delimiter()`                    | 返回当前使用的分隔符模式           |
| **其他方法**                            |                                    |
| `void close()`                          | 关闭扫描器                         |
| `Scanner skip(Pattern pattern)`         | 跳过匹配指定模式的输入             |
| `Scanner skip(String pattern)`          | 跳过匹配指定字符串的输入           |
| `String findInLine(Pattern pattern)`    | 在当前行中查找指定模式             |
| `String findInLine(String pattern)`     | 在当前行中查找指定字符串           |
| `Scanner reset()`                       | 重置扫描器                         |
| `Locale locale()`                       | 返回扫描器当前使用的区域设置       |
| `Scanner useLocale(Locale locale)`      | 设置扫描器的区域设置               |

更多内容可以参考 API 文档：https://www.runoob.com/manual/jdk11api/java.base/java/util/Scanner.html。

# Java 异常处理

在 Java 中，异常处理是一种重要的编程概念，用于处理程序执行过程中可能出现的错误或异常情况。

异常是程序中的一些错误，但并不是所有的错误都是异常，并且错误有时候是可以避免的。

比如说，你的代码少了一个分号，那么运行出来结果是提示是错误 **java.lang.Error**，如果你用 **System.out.println(11/0)**，那么你是因为你用 **0** 做了除数，会抛出 **java.lang.ArithmeticException** 的异常。

异常发生的原因有很多，通常包含以下几大类：

- 用户输入了非法数据。
- 要打开的文件不存在。
- 网络通信时连接中断，或者JVM内存溢出。

这些异常有的是因为用户错误引起，有的是程序错误引起的，还有其它一些是因为物理错误引起的。

要理解 Java 异常处理是如何工作的，你需要掌握以下三种类型的异常：

- **检查性异常：**最具代表的检查性异常是用户错误或问题引起的异常，这些异常在编译时强制要求程序员处理。例如要打开一个不存在文件时，一个异常就发生了，这些异常在编译时不能被简单地忽略。

  这类异常通常使用 **try-catch** 块来捕获并处理异常，或者在方法声明中使用 **throws** 子句声明方法可能抛出的异常。

  ```
  try {
      // 可能会抛出异常的代码
  } catch (IOException e) {
      // 处理异常的代码
  }
  ```

  或者：

  ```
  public void readFile() throws IOException {
      // 可能会抛出IOException的代码
  }
  ```

- **运行时异常：** 这些异常在编译时不强制要求处理，通常是由程序中的错误引起的，例如 NullPointerException、ArrayIndexOutOfBoundsException 等，这类异常可以选择处理，但并非强制要求。

  ```
  try {
      // 可能会抛出异常的代码
  } catch (NullPointerException e) {
      // 处理异常的代码
  }
  ```

- **错误：** 错误不是异常，而是脱离程序员控制的问题，错误在代码中通常被忽略。例如，当栈溢出时，一个错误就发生了，它们在编译也检查不到的。

Java 提供了以下关键字和类来支持异常处理：

- **try**：用于包裹可能会抛出异常的代码块。
- **catch**：用于捕获异常并处理异常的代码块。
- **finally**：用于包含无论是否发生异常都需要执行的代码块。
- **throw**：用于手动抛出异常。
- **throws**：用于在方法声明中指定方法可能抛出的异常。
- **Exception**类：是所有异常类的父类，它提供了一些方法来获取异常信息，如 **getMessage()、printStackTrace()** 等。

------

## Exception 类的层次

所有的异常类是从 java.lang.Exception 类继承的子类。

Exception 类是 Throwable 类的子类。除了Exception类外，Throwable还有一个子类Error 。

Java 程序通常不捕获错误。错误一般发生在严重故障时，它们在Java程序处理的范畴之外。

Error 用来指示运行时环境发生的错误。

例如，JVM 内存溢出。一般地，程序不会从错误中恢复。

异常类有两个主要的子类：IOException 类和 RuntimeException 类。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/exception-hierarchy.png)

在 Java 内置类中(接下来会说明)，有大部分常用检查性和非检查性异常。

------

## Java 内置异常类

Java 语言定义了一些异常类在 java.lang 标准包中。

标准运行时异常类的子类是最常见的异常类。由于 java.lang 包是默认加载到所有的 Java 程序的，所以大部分从运行时异常类继承而来的异常都可以直接使用。

Java 根据各个类库也定义了一些其他的异常，下面的表中列出了 Java 的非检查性异常。

| **异常**                        | **描述**                                                     |
| :------------------------------ | :----------------------------------------------------------- |
| ArithmeticException             | 当出现异常的运算条件时，抛出此异常。例如，一个整数"除以零"时，抛出此类的一个实例。 |
| ArrayIndexOutOfBoundsException  | 用非法索引访问数组时抛出的异常。如果索引为负或大于等于数组大小，则该索引为非法索引。 |
| ArrayStoreException             | 试图将错误类型的对象存储到一个对象数组时抛出的异常。         |
| ClassCastException              | 当试图将对象强制转换为不是实例的子类时，抛出该异常。         |
| IllegalArgumentException        | 抛出的异常表明向方法传递了一个不合法或不正确的参数。         |
| IllegalMonitorStateException    | 抛出的异常表明某一线程已经试图等待对象的监视器，或者试图通知其他正在等待对象的监视器而本身没有指定监视器的线程。 |
| IllegalStateException           | 在非法或不适当的时间调用方法时产生的信号。换句话说，即 Java 环境或 Java 应用程序没有处于请求操作所要求的适当状态下。 |
| IllegalThreadStateException     | 线程没有处于请求操作所要求的适当状态时抛出的异常。           |
| IndexOutOfBoundsException       | 指示某排序索引（例如对数组、字符串或向量的排序）超出范围时抛出。 |
| NegativeArraySizeException      | 如果应用程序试图创建大小为负的数组，则抛出该异常。           |
| NullPointerException            | 当应用程序试图在需要对象的地方使用 `null` 时，抛出该异常     |
| NumberFormatException           | 当应用程序试图将字符串转换成一种数值类型，但该字符串不能转换为适当格式时，抛出该异常。 |
| SecurityException               | 由安全管理器抛出的异常，指示存在安全侵犯。                   |
| StringIndexOutOfBoundsException | 此异常由 `String` 方法抛出，指示索引或者为负，或者超出字符串的大小。 |
| UnsupportedOperationException   | 当不支持请求的操作时，抛出该异常。                           |

下面的表中列出了 Java 定义在 java.lang 包中的检查性异常类。

| **异常**                   | **描述**                                                     |
| :------------------------- | :----------------------------------------------------------- |
| ClassNotFoundException     | 应用程序试图加载类时，找不到相应的类，抛出该异常。           |
| CloneNotSupportedException | 当调用 `Object` 类中的 `clone` 方法克隆对象，但该对象的类无法实现 `Cloneable` 接口时，抛出该异常。 |
| IllegalAccessException     | 拒绝访问一个类的时候，抛出该异常。                           |
| InstantiationException     | 当试图使用 `Class` 类中的 `newInstance` 方法创建一个类的实例，而指定的类对象因为是一个接口或是一个抽象类而无法实例化时，抛出该异常。 |
| InterruptedException       | 一个线程被另一个线程中断，抛出该异常。                       |
| NoSuchFieldException       | 请求的变量不存在                                             |
| NoSuchMethodException      | 请求的方法不存在                                             |

------

## 异常方法

下面的列表是 Throwable 类的主要方法:

| **序号** | **方法及说明**                                               |
| :------- | :----------------------------------------------------------- |
| 1        | **public String getMessage()** 返回关于发生的异常的详细信息。这个消息在Throwable 类的构造函数中初始化了。 |
| 2        | **public Throwable getCause()** 返回一个 Throwable 对象代表异常原因。 |
| 3        | **public String toString()** 返回此 Throwable 的简短描述。   |
| 4        | **public void printStackTrace()** 将此 Throwable 及其回溯打印到标准错误流。 |
| 5        | **public StackTraceElement [] getStackTrace()** 返回一个包含堆栈层次的数组。下标为0的元素代表栈顶，最后一个元素代表方法调用堆栈的栈底。 |
| 6        | **public Throwable fillInStackTrace()** 用当前的调用栈层次填充Throwable 对象栈层次，添加到栈层次任何先前信息中。 |

------

## 捕获异常

使用 try 和 catch 关键字可以捕获异常。try/catch 代码块放在异常可能发生的地方。

try/catch代码块中的代码称为保护代码，使用 try/catch 的语法如下：

```
try
{
   // 程序代码
}catch(ExceptionName e1)
{
   //Catch 块
}
```

Catch 语句包含要捕获异常类型的声明。当保护代码块中发生一个异常时，try 后面的 catch 块就会被检查。

如果发生的异常包含在 catch 块中，异常会被传递到该 catch 块，这和传递一个参数的方法是一样。

### 实例

下面的例子中声明有两个元素的一个数组，当代码试图访问数组的第四个元素的时候就会抛出一个异常。

## ExcepTest.java 文件代码：

// 文件名 : ExcepTest.java import java.io.*; public class ExcepTest{    public static void main(String args[]){      try{         int a[] = new int[2];         System.out.println("Access element three :" + a[3]);      }catch(ArrayIndexOutOfBoundsException e){         System.out.println("Exception thrown  :" + e);      }      System.out.println("Out of the block");   } }

以上代码编译运行输出结果如下：

```
Exception thrown  :java.lang.ArrayIndexOutOfBoundsException: 3
Out of the block
```

------

## 多重捕获块

一个 try 代码块后面跟随多个 catch 代码块的情况就叫多重捕获。

多重捕获块的语法如下所示：

try{   // 程序代码 }catch(异常类型1 异常的变量名1){  // 程序代码 }catch(异常类型2 异常的变量名2){  // 程序代码 }catch(异常类型3 异常的变量名3){  // 程序代码 }

上面的代码段包含了 3 个 catch块。

可以在 try 语句后面添加任意数量的 catch 块。

如果保护代码中发生异常，异常被抛给第一个 catch 块。

如果抛出异常的数据类型与 ExceptionType1 匹配，它在这里就会被捕获。

如果不匹配，它会被传递给第二个 catch 块。

如此，直到异常被捕获或者通过所有的 catch 块。

### 实例

该实例展示了怎么使用多重 try/catch。

try {    file = new FileInputStream(fileName);    x = (byte) file.read(); } catch(FileNotFoundException f) { // Not valid!    f.printStackTrace();    return -1; } catch(IOException i) {    i.printStackTrace();    return -1; }

------

## 多异常合并捕获

从 Java 7 开始，引入了一个更简洁的写法 —— 多异常合并捕获，可以用一个 catch 块处理多个无继承关系的异常。

```
try {
    // 可能抛出多个不同类型异常的代码
} catch (异常类型1 | 异常类型2 | 异常类型3 异常变量) {
    // 统一处理
}
```

**需要注意：**

- 异常类型1、异常类型2 等 不能有继承关系，否则会导致编译错误。
- 异常变量名 是这三种异常的共同引用变量，因此在 catch 块内你不能调用它们特有的方法。
- 编译器会推断出这个异常变量的类型为这几个异常的最近公共父类（比如 Exception 或 IOException）。

如下这种互不继承的异常，同时可能抛出 SQLException 和 IOException：

## 实例

**try** {
  *// 同时可能抛出 SQL 和 IO 异常*
  doSomething();
} **catch** (SQLException | IOException e) {
  System.out.println("发生了 SQL 或 IO 异常！");
  e.printStackTrace();
}

错误示例（不能合并父子类异常）：

```
// 错误写法！
catch (FileNotFoundException | IOException e) {
    // 会导致编译错误，因为 FileNotFoundException 是 IOException 的子类
}
```

FileNotFoundException 是 IOException 的子类，所以这个写法实际上是不合法的，会报编译错误。

------

## throws/throw 关键字

在Java中， **throw** 和 **throws** 关键字是用于处理异常的。

**throw** 关键字用于在代码中抛出异常，而 **throws** 关键字用于在方法声明中指定可能会抛出的异常类型。

### throw 关键字

**throw** 关键字用于在当前方法中抛出一个异常。

通常情况下，当代码执行到某个条件下无法继续正常执行时，可以使用 **throw** 关键字抛出异常，以告知调用者当前代码的执行状态。

例如，下面的代码中，在方法中判断 num 是否小于 0，如果是，则抛出一个 IllegalArgumentException 异常。

## 实例

**public** **void** checkNumber(**int** num) {
 **if** (num < 0) {
  **throw** **new** IllegalArgumentException("Number must be positive");
 }
}

### throws 关键字

**throws** 关键字用于在方法声明中指定该方法可能抛出的异常。当方法内部抛出指定类型的异常时，该异常会被传递给调用该方法的代码，并在该代码中处理异常。

例如，下面的代码中，当 readFile 方法内部发生 IOException 异常时，会将该异常传递给调用该方法的代码。在调用该方法的代码中，必须捕获或声明处理 IOException 异常。

## 实例

**public** **void** readFile(String filePath) **throws** IOException {
 BufferedReader reader = **new** BufferedReader(**new** FileReader(filePath));
 String line = reader.readLine();
 **while** (line != **null**) {
  System.out.println(line);
  line = reader.readLine();
 }
 reader.close();
}

一个方法可以声明抛出多个异常，多个异常之间用逗号隔开。

例如，下面的方法声明抛出 RemoteException 和 InsufficientFundsException：

import java.io.*; public class className {   public void withdraw(double amount) throws RemoteException,                              InsufficientFundsException   {       // Method implementation   }   //Remainder of class definition }

------

## finally关键字

finally 关键字用来创建在 try 代码块后面执行的代码块。

无论是否发生异常，finally 代码块中的代码总会被执行。

在 finally 代码块中，可以运行清理类型等收尾善后性质的语句。

finally 代码块出现在 catch 代码块最后，语法如下：

try{  // 程序代码 }catch(异常类型1 异常的变量名1){  // 程序代码 }catch(异常类型2 异常的变量名2){  // 程序代码 }finally{  // 程序代码 }

### 实例

## ExcepTest.java 文件代码：

public class ExcepTest{  public static void main(String args[]){    int a[] = new int[2];    try{       System.out.println("Access element three :" + a[3]);    }catch(ArrayIndexOutOfBoundsException e){       System.out.println("Exception thrown  :" + e);    }    finally{       a[0] = 6;       System.out.println("First element value: " +a[0]);       System.out.println("The finally statement is executed");    }  } }

以上实例编译运行结果如下：

```
Exception thrown  :java.lang.ArrayIndexOutOfBoundsException: 3
First element value: 6
The finally statement is executed
```

注意下面事项：

- catch 不能独立于 try 存在。
- 在 try/catch 后面添加 finally 块并非强制性要求的。
- try 代码后不能既没 catch 块也没 finally 块。
- try, catch, finally 块之间不能添加任何代码。

------

## try-with-resources

JDK7 之后，Java 新增的 **try-with-resource** 语法结构，旨在自动管理资源，确保资源在使用后能够及时关闭，避免资源泄露 。

try-with-resources 是一种异常处理机制，它能够自动关闭在 try 块中声明的资源，无需显式地在 finally 块中关闭。

在 try-with-resources 语句中，你只需要在 try 关键字后面声明资源，然后跟随一个代码块。无论代码块中的操作是否成功，资源都会在 try 代码块执行完毕后自动关闭。。

```
try (resource declaration) {
  // 使用的资源
} catch (ExceptionType e1) {
  // 异常块
}
```

以上的语法中 try 用于声明和实例化资源，catch 用于处理关闭资源时可能引发的所有异常。

**注意：**try-with-resources 语句关闭所有实现 AutoCloseable 接口的资源。

## 实例

**import** java.io.*;

**public** **class** RunoobTest {

  **public** **static** **void** main(String[] args) {
  String line;
    **try**(BufferedReader br = **new** BufferedReader(**new** FileReader("test.txt"))) {
      **while** ((line = br.readLine()) != **null**) {
        System.out.println("Line =>"+line);
      }
    } **catch** (IOException e) {
      System.out.println("IOException in try block =>" + e.getMessage());
    }
  }
}

以上实例输出结果为：

```
IOException in try block =>test.txt (No such file or directory)
```

以上实例中，我们实例一个 BufferedReader 对象从 test.txt 文件中读取数据。

在 try-with-resources 语句中声明和实例化 BufferedReader 对象，执行完毕后实例资源，不需要考虑 try 语句是正常执行还是抛出异常。

如果发生异常，可以使用 catch 来处理异常。

再看下不使用 **try-with-resources** 而改成 **finally** 来关闭资源，整体代码量多了很多，而且更复杂繁琐了：

## 实例

**import** java.io.*;

**class** RunoobTest {
  **public** **static** **void** main(String[] args) {
    BufferedReader br = **null**;
    String line;

​    **try** {
​      System.out.println("Entering try block");
​      br = **new** BufferedReader(**new** FileReader("test.txt"));
​      **while** ((line = br.readLine()) != **null**) {
​      System.out.println("Line =>"+line);
​      }
​    } **catch** (IOException e) {
​      System.out.println("IOException in try block =>" + e.getMessage());
​    } **finally** {
​      System.out.println("Entering finally block");
​      **try** {
​        **if** (br != **null**) {
​          br.close();
​        }
​      } **catch** (IOException e) {
​        System.out.println("IOException in finally block =>"+e.getMessage());
​      }
​    }
  }
}

以上实例输出结果为：

```
Entering try block
IOException in try block =>test.txt (No such file or directory)
Entering finally block
```

### try-with-resources 处理多个资源

try-with-resources 语句中可以声明多个资源，方法是使用分号 **;** 分隔各个资源：

## 实例

**import** java.io.*;
**import** java.util.*;
**class** RunoobTest {
  **public** **static** **void** main(String[] args) **throws** IOException{
    **try** (Scanner scanner = **new** Scanner(**new** File("testRead.txt"));
      PrintWriter writer = **new** PrintWriter(**new** File("testWrite.txt"))) {
      **while** (scanner.hasNext()) {
        writer.print(scanner.nextLine());
      }
    }
  }
}

以上实例使用 Scanner 对象从 testRead.txt 文件中读取一行并将其写入新的 testWrite.txt 文件中。

多个声明资源时，**try-with-resources** 语句以相反的顺序关闭这些资源。 在本例中，PrintWriter 对象先关闭，然后 Scanner 对象关闭。

> 更多内容参考：
>
> - try-with-resources：[Java try-with-resources 语句](https://www.runoob.com/java/java9-try-with-resources-improvement.html)
> - 资源管理：[Java Cleaner 类](https://www.runoob.com/java/java-cleaner-class.html)

------

## 声明自定义异常

在 Java 中你可以自定义异常。编写自己的异常类时需要记住下面的几点。

- 所有异常都必须是 Throwable 的子类。
- 如果希望写一个检查性异常类，则需要继承 Exception 类。
- 如果你想写一个运行时异常类，那么需要继承 RuntimeException 类。

可以像下面这样定义自己的异常类：

class MyException extends Exception{ }

只继承Exception 类来创建的异常类是检查性异常类。

下面的 InsufficientFundsException 类是用户定义的异常类，它继承自 Exception。

一个异常类和其它任何类一样，包含有变量和方法。

### 实例

以下实例是一个银行账户的模拟，通过银行卡的号码完成识别，可以进行存钱和取钱的操作。

## InsufficientFundsException.java 文件代码：

// 文件名InsufficientFundsException.java import java.io.*;  //自定义异常类，继承Exception类 public class InsufficientFundsException extends Exception {  //此处的amount用来储存当出现异常（取出钱多于余额时）所缺乏的钱  private double amount;  public InsufficientFundsException(double amount)  {    this.amount = amount;  }   public double getAmount()  {    return amount;  } }

为了展示如何使用我们自定义的异常类，

在下面的 CheckingAccount 类中包含一个 withdraw() 方法抛出一个 InsufficientFundsException 异常。

## CheckingAccount.java 文件代码：

// 文件名称 CheckingAccount.java import java.io.*;  //此类模拟银行账户 public class CheckingAccount {  //balance为余额，number为卡号   private double balance;   private int number;   public CheckingAccount(int number)   {      this.number = number;   }  //方法：存钱   public void deposit(double amount)   {      balance += amount;   }  //方法：取钱   public void withdraw(double amount) throws                              InsufficientFundsException   {      if(amount <= balance)      {         balance -= amount;      }      else      {         double needs = amount - balance;         throw new InsufficientFundsException(needs);      }   }  //方法：返回余额   public double getBalance()   {      return balance;   }  //方法：返回卡号   public int getNumber()   {      return number;   } }

下面的 BankDemo 程序示范了如何调用 CheckingAccount 类的 deposit() 和 withdraw() 方法。

## BankDemo.java 文件代码：

//文件名称 BankDemo.java public class BankDemo {   public static void main(String [] args)   {      CheckingAccount c = new CheckingAccount(101);      System.out.println("Depositing $500...");      c.deposit(500.00);      try      {         System.out.println("\nWithdrawing $100...");         c.withdraw(100.00);         System.out.println("\nWithdrawing $600...");         c.withdraw(600.00);      }catch(InsufficientFundsException e)      {         System.out.println("Sorry, but you are short $"                                  + e.getAmount());         e.printStackTrace();      }    } }

编译上面三个文件，并运行程序 BankDemo，得到结果如下所示：

```
Depositing $500...

Withdrawing $100...

Withdrawing $600...
Sorry, but you are short $200.0
InsufficientFundsException
        at CheckingAccount.withdraw(CheckingAccount.java:25)
        at BankDemo.main(BankDemo.java:13)
```

------

## 通用异常

在Java中定义了两种类型的异常和错误。

- **JVM(Java****虚拟机****)** **异常：**由 JVM 抛出的异常或错误。例如：NullPointerException 类，ArrayIndexOutOfBoundsException 类，ClassCastException 类。
- **程序级异常：**由程序或者API程序抛出的异常。例如 IllegalArgumentException 类，IllegalStateException 类。

------

## 异常处理的最佳实践

- 在合适的位置捕获异常，并对异常进行适当的处理，以确保程序的稳定性和可靠性。
- 避免过度捕获异常，应该尽量精确捕获特定类型的异常。
- 使用finally块来释放资源，例如关闭文件或数据库连接等，以确保资源的正确释放。
- 优先处理受检异常，避免将受检异常转换为非受检异常。

异常处理是编写健壮的 Java 应用程序的重要组成部分，合理地处理异常可以提高程序的可维护性和可靠性。