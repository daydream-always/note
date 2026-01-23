尝试由易到难，先背简单的

## [Java 概述](https://javabetter.cn/sidebar/sanfene/javase.html#java-概述)

### [1.🌟什么是 Java？](https://javabetter.cn/sidebar/sanfene/javase.html#_1-🌟什么是-java)

#### [Java 语言和 C 语言有哪些区别？](https://javabetter.cn/sidebar/sanfene/javase.html#java-语言和-c-语言有哪些区别)

Java 是一种跨平台的编程语言，通过在不同操作系统上安装对应版本的 JVM 以实现“一次编译，处处运行”的目的。而 C 语言需要在不同的操作系统上重新编译。

Java 实现了内存的自动管理，而 C 语言需要使用 malloc 和 free 来手动管理内存。

### [2.Java 语言有哪些特点？](https://javabetter.cn/sidebar/sanfene/javase.html#_2-java-语言有哪些特点)

Java 语言的特点有：

①、面向对象，主要是封装，继承，多态。

②、平台无关性，“一次编写，到处运行”，因此采用 Java 语言编写的程序具有很好的可移植性。

③、支持多线程。C++ 语言没有内置的多线程机制，因此必须调用操作系统的 API 来完成多线程程序设计，而 Java 却提供了封装好多线程支持；

④、支持 JIT 编译，也就是即时编译器，它可以在程序运行时将字节码转换为热点机器码来提高程序的运行速度。

### [3.JVM、JDK 和 JRE 有什么区别？](https://javabetter.cn/sidebar/sanfene/javase.html#_3-jvm、jdk-和-jre-有什么区别)

**JVM**：也就是 Java 虚拟机，是 Java 实现跨平台的关键所在，不同的操作系统有不同的 JVM 实现。JVM 负责将 Java 字节码转换为特定平台的机器码，并执行。

**JRE**：也就是 Java 运行时环境，包含了运行 Java 程序所必需的库，以及 JVM。

**JDK**：一套完整的 Java SDK，包括 JRE，编译器 javac、Java 文档生成工具 javadoc、Java 字节码工具 javap 等。为开发者提供了开发、编译、调试 Java 程序的一整套环境。

简单来说，JDK 包含 JRE，JRE 包含 JVM。

### [4.说说什么是跨平台？原理是什么](https://javabetter.cn/sidebar/sanfene/javase.html#_4-说说什么是跨平台-原理是什么)

所谓的跨平台，是指 Java 语言编写的程序，一次编译后，可以在多个操作系统上运行。

原理是增加了一个中间件 JVM，JVM 负责将 Java 字节码转换为特定平台的机器码，并执行。

### [5.什么是字节码？采用字节码的好处是什么?](https://javabetter.cn/sidebar/sanfene/javase.html#_5-什么是字节码-采用字节码的好处是什么)

所谓的字节码，就是 Java 程序经过编译后产生的 .class 文件。

**Java** 程序从源代码到运行需要经过三步：

- **编译**：将源代码文件 .java 编译成 JVM 可以识别的字节码文件 .class
- **解释**：JVM 执行字节码文件，将字节码翻译成操作系统能识别的机器码
- **执行**：操作系统执行二进制的机器码

### [6.为什么有人说 Java 是“编译与解释并存”的语言？](https://javabetter.cn/sidebar/sanfene/javase.html#_6-为什么有人说-java-是-编译与解释并存-的语言)

编译型语言是指编译器针对特定的操作系统，将源代码一次性翻译成可被该平台执行的机器码。

解释型语言是指解释器对源代码进行逐行解释，解释成特定平台的机器码并执行。

举个例子，我想读一本国外的小说，我有两种选择：

- 找个翻译，等翻译将小说全部都翻译成汉语，一次性读完。
- 找个翻译，翻译一段我读一段，慢慢把书读完。

之所以有人说 Java 是“编译与解释并存”的语言，是因为 Java 程序需要先将 Java 源代码文件编译字节码文件，再解释执行。

### [7.🌟Java 有哪些数据类型？](https://javabetter.cn/sidebar/sanfene/javase.html#_7-🌟java-有哪些数据类型)

基本数据类型有：

①、数值型

- 整数类型（byte、short、int、long）
- 浮点类型（float、double）

②、字符型（char）

③、布尔型（boolean）

它们的默认值和占用大小如下所示：

| 数据类型 | 默认值   | 大小            |
| -------- | -------- | --------------- |
| boolean  | false    | 1 字节或 4 字节 |
| char     | '\u0000' | 2 字节          |
| byte     | 0        | 1 字节          |
| short    | 0        | 2 字节          |
| int      | 0        | 4 字节          |
| long     | 0L       | 8 字节          |
| float    | 0.0f     | 4 字节          |
| double   | 0.0      | 8 字节          |

引用数据类型有：

- [类](https://javabetter.cn/oo/object-class.html)（class）
- [接口](https://javabetter.cn/oo/interface.html)（interface）
- [数组](https://javabetter.cn/array/array.html)（`[]`）

#### [给Integer最大值+1，是什么结果？](https://javabetter.cn/sidebar/sanfene/javase.html#给integer最大值-1-是什么结果)

当给 Integer.MAX_VALUE 加 1 时，会发生溢出，变成 Integer.MIN_VALUE。这是因为 Java 的整数类型采用的是二进制补码表示法，溢出时值会变成最小值。

### [8.自动类型转换、强制类型转换了解吗？](https://javabetter.cn/sidebar/sanfene/javase.html#_8-自动类型转换、强制类型转换了解吗)

当把一个范围较小的数值或变量赋给另外一个范围较大的变量时，会进行自动类型转换；反之，需要强制转换。

![三分恶面渣逆袭：Java自动类型转换方向](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/javase-7.png)三分恶面渣逆袭：Java自动类型转换方向

这就好像，小杯里的水倒进大杯没问题，但大杯的水倒进小杯就可能会溢出。

①、`float f=3.4`，对吗？

不正确。3.4 默认是双精度，将双精度赋值给浮点型属于下转型（down-casting，也称窄化）会造成精度丢失，因此需要强制类型转换`float f =(float)3.4;`或者写成`float f =3.4F`

②、`short s1 = 1; s1 = s1 + 1；`对吗？`short s1 = 1; s1 += 1;`对吗？

`short s1 = 1; s1 = s1 + 1;` 会编译出错，由于 1 是 int 类型，因此 s1+1 运算结果也是 int 型，需要强制转换类型才能赋值给 short 型。

而 `short s1 = 1; s1 += 1;`可以正确编译，因为 `s1+= 1;`相当于 `s1 = (short(s1 + 1);` 其中有隐含的强制类型转换。

### [9.什么是自动拆箱/装箱](https://javabetter.cn/sidebar/sanfene/javase.html#_9-什么是自动拆箱-装箱)

- **装箱**：将基本数据类型转换为包装类型，例如 int 转换为 Integer。
- **拆箱**：将包装类型转换为基本数据类型。

### [10.&和&&有什么区别？](https://javabetter.cn/sidebar/sanfene/javase.html#_10-和-有什么区别)

`&` 是 `逻辑与`。

`&&`是短路与运算。逻辑与跟短路与的差别是非常大的，虽然二者都要求运算符左右两端的布尔值都是 true，整个表达式的值才是 true。

`&&`之所以称为短路运算是因为，如果`&&`左边的表达式的值是 false，右边的表达式会直接短路掉，不会进行运算。

例如在验证用户登录时判定用户名不是 null 而且不是空字符串，应当写为`username != null && !username.equals("")`，二者的顺序不能交换，更不能用 `&` 运算符，因为第一个条件如果不成立，根本不能进行字符串的 equals 比较，会抛出 [NullPointerException 异常](https://javabetter.cn/exception/npe.html)。

**注意**：逻辑或运算符（`|`）和短路或运算符（`||`）的差别也是类似。

### [11.switch 语句能否用在 byte/long/String 类型上？](https://javabetter.cn/sidebar/sanfene/javase.html#_11-switch-语句能否用在-byte-long-string-类型上)

Java 5 以前 `switch(expr)` 中，expr 只能是 byte、short、char、int。

从 Java 5 开始，Java 中引入了枚举类型， expr 也可以是 enum 类型。

从 Java 7 开始，expr 还可以是字符串。

从 Java 21 开始，switch 语句迎来了根本性的变革，不仅可以处理 long 类型，也能处理包括 null 在内的任意对象类型，并可通过 when 子句添加复杂的判断条件。

### [12.break,continue,return 的区别及作用？](https://javabetter.cn/sidebar/sanfene/javase.html#_12-break-continue-return-的区别及作用)

- break 跳出整个循环，不再执行循环(**结束当前的循环体**)
- continue 跳出本次循环，继续执行下次循环(**结束正在执行的循环 进入下一个循环条件**)
- return 程序返回，不再执行下面的代码(**结束当前的方法 直接返回**)

### [13.用效率最高的方法计算 2 乘以 8？](https://javabetter.cn/sidebar/sanfene/javase.html#_13-用效率最高的方法计算-2-乘以-8)

`2 << 3`。**位运算**，数字的二进制位左移三位相当于乘以 2 的三次方。

### [14.说说自增自减运算？](https://javabetter.cn/sidebar/sanfene/javase.html#_14-说说自增自减运算)

在写代码的过程中，常见的一种情况是需要某个整数类型变量增加 1 或减少 1，Java 提供了一种特殊的运算符，用于这种表达式，叫做自增运算符（++）和自减运算符（--）。

++和--运算符可以放在变量之前，也可以放在变量之后。

当运算符放在变量之前时(前缀)，先自增/减，再赋值；当运算符放在变量之后时(后缀)，先赋值，再自增/减。

### [15.float 是怎么表示小数的？（补充）](https://javabetter.cn/sidebar/sanfene/javase.html#_15-float-是怎么表示小数的-补充)

float 表示小数的方式是基于 IEEE 754 标准的，采用二进制浮点数格式。

- S：符号位，0 代表正数，1 代表负数；
- M：尾数部分，用于表示数值的精度；比如说 1.25∗22；1.25 就是尾数；
- R：基数，十进制中的基数是 10，二进制中的基数是 2；
- E：指数部分，例如 10−1 中的 -1 就是指数。

这种表示方法可以将非常大或非常小的数值用有限的位数表示出来，但这也意味着可能会有精度上的损失。

单精度浮点数占用 4 字节（32 位），这 32 位被分为三个部分：符号位、指数部分和尾数部分。

### [16.讲一下数据准确性高是怎么保证的？（补充）](https://javabetter.cn/sidebar/sanfene/javase.html#_16-讲一下数据准确性高是怎么保证的-补充)

在金融计算中，保证数据准确性有两种方案，一种使用 `BigDecimal`，一种将浮点数转换为整数 int 进行计算。

肯定不能使用 `float` 和 `double` 类型，它们无法避免浮点数运算中常见的精度问题，因为这些数据类型采用二进制浮点数来表示，无法准确地表示，例如 `0.1`。

## [面向对象](https://javabetter.cn/sidebar/sanfene/javase.html#面向对象)

### [17.⾯向对象和⾯向过程的区别?](https://javabetter.cn/sidebar/sanfene/javase.html#_17-面向对象和面向过程的区别)

面向过程是以过程为核心，通过函数完成任务，程序结构是函数+步骤组成的顺序流程。

面向对象是以对象为核心，通过对象交互完成任务，程序结构是类和对象组成的模块化结构，代码可以通过继承、组合、多态等方式复用。

在[技术派实战项目](https://javabetter.cn/zhishixingqiu/paicoding.html)中，像 VO、DTO 都是业务抽象后的对象实体类，而 Service、Controller 则是业务逻辑的实现，这其实就是面向对象的思想。

### [18.🌟面向对象编程有哪些特性？](https://javabetter.cn/sidebar/sanfene/javase.html#_18-🌟面向对象编程有哪些特性)

面向对象编程有三大特性：封装、继承、多态。

#### [封装是什么？](https://javabetter.cn/sidebar/sanfene/javase.html#封装是什么)

封装是指将数据（属性，或者叫字段）和操作数据的方法（行为）捆绑在一起，形成一个独立的对象（类的实例）。

可以看得出，女神类对外没有提供 age 的 getter 方法，因为女神的年龄要保密。

所以，封装是把一个对象的属性私有化，同时提供一些可以被外界访问的方法。

理解：属性行为绑定一起，对象属性私有化，通过公开方法才能访问

#### [继承是什么？](https://javabetter.cn/sidebar/sanfene/javase.html#继承是什么)

继承允许一个类（子类）继承现有类（父类或者基类）的属性和方法。以提高代码的复用性，建立类之间的层次关系。

同时，子类还可以重写或者扩展从父类继承来的属性和方法，从而实现多态。

理解：继承家业，再创辉煌，继承属性方法，重写属性方法，拓展属性方法

#### [什么是多态？](https://javabetter.cn/sidebar/sanfene/javase.html#什么是多态)

多态允许不同类的对象对同一消息做出响应，但表现出不同的行为（即方法的多样性）。

多态其实是一种能力——同一个行为具有不同的表现形式；换句话说就是，执行一段代码，Java 在运行时能根据对象类型的不同产生不同的结果。

多态的前置条件有三个：

- 子类继承父类
- 子类重写父类的方法
- 父类引用指向子类的对象

理解：同一个行为具有不同的表现形式，根据对象类型的不同产生不同的结果

#### [为什么Java里面要多组合少继承？](https://javabetter.cn/sidebar/sanfene/javase.html#为什么java里面要多组合少继承)

继承适合描述“is-a”的关系，但继承容易导致类之间的强耦合，一旦父类发生改变，子类也要随之改变，违背了开闭原则（尽量不修改现有代码，而是添加新的代码来实现）。

组合适合描述“has-a”或“can-do”的关系，通过在类中组合其他类，能够更灵活地扩展功能。组合避免了复杂的类继承体系，同时遵循了开闭原则和松耦合的设计原则。

理解：

继承，父类更改子类也要更改

组合，在类中组合其他类，非复杂继承，开闭原则和松耦合设计

### [19.多态解决了什么问题？（补充）](https://javabetter.cn/sidebar/sanfene/javase.html#_19-多态解决了什么问题-补充)

多态指同一个接口或方法在不同的类中有不同的实现，比如说动态绑定，父类引用指向子类对象，方法的具体调用会延迟到运行时决定。

举例，现在有一个父类 Wanger，一个子类 Wangxiaoer，都有一个 write 方法。现在有一个父类 Wanger 类型的变量 wanger，它在执行 `wanger.write()` 时，究竟调用父类 Wanger 的 `write()` 方法，还是子类 Wangxiaoer 的 `write()` 方法呢？

答案是在运行时根据对象的类型进行后期绑定，编译器在编译阶段并不知道对象的类型，但是 Java 的方法调用机制能找到正确的方法体，然后执行，得到正确的结果，这就是多态的作用。

理解，根据对象的类型绑定对应的方法

#### [多态的实现原理是什么？](https://javabetter.cn/sidebar/sanfene/javase.html#多态的实现原理是什么)

多态通过动态绑定实现，Java 使用虚方法表存储方法指针，方法调用时根据对象实际类型从虚方法表查找具体实现。

### [20.🌟重载和重写的区别？](https://javabetter.cn/sidebar/sanfene/javase.html#_20-🌟重载和重写的区别)

推荐阅读：[方法重写 Override 和方法重载 Overload 有什么区别？](https://javabetter.cn/basic-extra-meal/override-overload.html)

如果一个类有多个名字相同但参数个数不同的方法，我们通常称这些方法为方法重载。

如果子类具有和父类一样的方法（参数相同、返回类型相同、方法名相同，但方法体不同），我们称之为方法重写。

- 方法重载发生在同一个类中，同名的方法如果有不同的参数（参数类型不同、参数个数不同或者二者都不同）。
- 方法重写发生在子类与父类之间，要求子类与父类具有相同的返回类型，方法名和参数列表，并且不能比父类的方法声明更多的异常，遵守里氏代换原则。

理解：重写是方法内容发生改变

#### [什么是里氏代换原则？](https://javabetter.cn/sidebar/sanfene/javase.html#什么是里氏代换原则)

里氏代换原则也被称为李氏替换原则（Liskov Substitution Principle, LSP），其规定任何父类可以出现的地方，子类也一定可以出现。

LSP 是继承复用的基石，只有当子类可以替换掉父类，并且单位功能不受到影响时，父类才能真正被复用，而子类也能够在父类的基础上增加新的行为。

这意味着子类在扩展父类时，不应改变父类原有的行为。例如，如果有一个方法接受一个父类对象作为参数，那么传入该方法的任何子类对象也应该能正常工作。

除了李氏替换原则外，还有其他几个重要的面向对象设计原则，它们共同构成了 SOLID 原则，分别是：

①、单一职责原则（Single Responsibility Principle, SRP），指一个类应该只有一个引起它变化的原因，即一个类只负责一项职责。这样做的目的是使类更加清晰，更容易理解和维护。

②、开闭原则（Open-Closed Principle, OCP），指软件实体应该对扩展开放，对修改关闭。这意味着一个类应该通过扩展来实现新的功能，而不是通过修改已有的代码来实现。

③、接口隔离原则（Interface Segregation Principle, ISP），指客户端不应该依赖它不需要的接口。这意味着设计接口时应该尽量精简，不应该设计臃肿庞大的接口。

④、依赖倒置原则（Dependency Inversion Principle, DIP），指高层模块不应该依赖低层模块，二者都应该依赖其抽象；抽象不应该依赖细节，细节应该依赖抽象。这意味着设计时应该尽量依赖接口或抽象类，而不是实现类。

理解：子类替换掉父类

### [21.访问修饰符 public、private、protected、以及默认时的区别？](https://javabetter.cn/sidebar/sanfene/javase.html#_21-访问修饰符-public、private、protected、以及默认时的区别)

Java 中，可以使用访问控制符来保护对类、变量、方法和构造方法的访问。Java 支持 4 种不同的访问权限。

- **default** （即默认，什么也不写）: 在同一包内可见，不使用任何修饰符。可以修饰在类、接口、变量、方法。
- **private** : 在同一类内可见。可以修饰变量、方法。**注意：不能修饰类（外部类）**
- **public** : 对所有类可见。可以修饰类、接口、变量、方法
- **protected** : 对同一包内的类和所有子类可见。可以修饰变量、方法。**注意：不能修饰类（外部类）**。

重点：类、接口、变量、方法，不能修饰类

### [22.this 关键字有什么作用？](https://javabetter.cn/sidebar/sanfene/javase.html#_22-this-关键字有什么作用)

this 是自身的一个对象，代表对象本身，可以理解为：**指向对象本身的一个指针**。

this 的用法在 Java 中大体可以分为 3 种：

1. 普通的直接引用，this 相当于是指向当前对象本身
2. 形参与成员变量名字重名，用 this 来区分
3. 引用本类的构造方法

理解：区分形参和成员变量

### [23.🌟抽象类和接口有什么区别？](https://javabetter.cn/sidebar/sanfene/javase.html#_23-🌟抽象类和接口有什么区别)

一个类只能继承一个抽象类；但一个类可以实现多个接口。所以我们在新建线程类的时候一般推荐使用实现 Runnable 接口的方式，这样线程类还可以继承其他类，而不单单是 Thread 类。

抽象类符合 is-a 的关系，而接口更像是 has-a 的关系，比如说一个类可以序列化的时候，它只需要实现 Serializable 接口就可以了，不需要去继承一个序列化类。

抽象类更多地是用来为多个相关的类提供一个共同的基础框架，包括状态的初始化，而接口则是定义一套行为标准，让不同的类可以实现同一接口，提供行为的多样化实现。

#### [抽象类可以定义构造方法吗？](https://javabetter.cn/sidebar/sanfene/javase.html#抽象类可以定义构造方法吗)

可以，抽象类可以有构造方法。

理解：有抽象方法，有构造方法，有抽象有构造，因为抽象类本质上还是类，可有构造方法

#### [接口可以定义构造方法吗？](https://javabetter.cn/sidebar/sanfene/javase.html#接口可以定义构造方法吗)

不能，接口主要用于定义一组方法规范，没有具体的实现细节。

理解：接口没有任何实现细节，接口不是类，没有构造方法

#### [Java类支持多继承吗？](https://javabetter.cn/sidebar/sanfene/javase.html#java支持多继承吗)

Java 不支持多继承，一个类只能继承一个类，多继承会引发菱形继承问题。

理解：你只可以有一个父类，继承一份财产，不能有多个父类，继承多份财产

#### [Java接口可以多继承吗？](https://javabetter.cn/sidebar/sanfene/javase.html#接口可以多继承吗)

接口可以多继承，一个接口可以继承多个接口，使用逗号分隔。

#### [继承和抽象的区别？](https://javabetter.cn/sidebar/sanfene/javase.html#继承和抽象的区别)

继承是一种允许子类继承父类属性和方法的机制。通过继承，子类可以重用父类的代码。

抽象是一种隐藏复杂性和只显示必要部分的技术。在面向对象编程中，抽象可以通过抽象类和接口实现

### [24.成员变量与局部变量的区别有哪些？](https://javabetter.cn/sidebar/sanfene/javase.html#_24-成员变量与局部变量的区别有哪些)

1. **从语法形式上看**：成员变量是属于类的，⽽局部变量是在⽅法中定义的变量或是⽅法的参数；成员变量可以被 public , private , static 等修饰符所修饰，⽽局部变量不能被访问控制修饰符及 static 所修饰；但是，成员变量和局部变量都能被 final 所修饰。
2. **从变量在内存中的存储⽅式来看**：如果成员变量是使⽤ static 修饰的，那么这个成员变量是属于类的，如果没有使⽤ static 修饰，这个成员变量是属于实例的。对象存于堆内存，如果局部变量类型为基本数据类型，那么存储在栈内存，如果为引⽤数据类型，那存放的是指向堆内存对象的引⽤或者是指向常量池中的地址。
3. **从变量在内存中的⽣存时间上看**：成员变量是对象的⼀部分，它随着对象的创建⽽存在，⽽局部变量随着⽅法的调⽤⽽⾃动消失。
4. **成员变量如果没有被赋初值**：则会⾃动以类型的默认值⽽赋值（⼀种情况例外:被 final 修饰的成员变量也必须显式地赋值），⽽局部变量则不会⾃动赋值。

理解：

类变量和方法变量

成员变量是类的成员，归属于类，类中都可以使用

局部变量局部于方法，方法内可以使用

### [25.static 关键字了解吗？](https://javabetter.cn/sidebar/sanfene/javase.html#_25-static-关键字了解吗)

static 关键字可以用来修饰变量、方法、代码块和内部类，以及导入包。

| 修饰对象 | 作用                                                         |
| -------- | ------------------------------------------------------------ |
| 变量     | 静态变量，类级别变量，所有实例共享同一份数据。               |
| 方法     | 静态方法，类级别方法，与实例无关。                           |
| 代码块   | 在类加载时初始化一些数据，只执行一次。                       |
| 内部类   | 与外部类绑定但独立于外部类实例。                             |
| 导入     | 可以直接访问静态成员，无需通过类名引用，简化代码书写，但会降低代码可读性。 |

理解：

static修饰的变量是类变量，类名直接调用

static修饰的方法是类方法，类名直接调用

#### [静态变量和实例变量的区别？](https://javabetter.cn/sidebar/sanfene/javase.html#静态变量和实例变量的区别)

**静态变量:** 是被 static 修饰符修饰的变量，也称为类变量，它属于类，不属于类的任何一个对象，一个类不管创建多少个对象，静态变量在内存中有且仅有一个副本。

**实例变量:** 必须依存于某一实例，需要先创建对象然后通过对象才能访问到它。静态变量可以实现让多个对象共享内存。

理解：

类变量在内存中有且仅有一个副本，可以实现让多个对象共享内存。

#### [静态⽅法和实例⽅法有何不同?](https://javabetter.cn/sidebar/sanfene/javase.html#静态方法和实例方法有何不同)

类似地。

**静态方法**：static 修饰的方法，也被称为类方法。在外部调⽤静态⽅法时，可以使⽤"**类名.⽅法名**"的⽅式，也可以使⽤"**对象名.⽅法名**"的⽅式。静态方法里不能访问类的非静态成员变量和方法。

**实例⽅法**：依存于类的实例，需要使用"**对象名.⽅法名**"的⽅式调用；可以访问类的所有成员变量和方法。

理解：

类方法里不能访问类的非静态成员变量和方法。

### [26.final 关键字有什么作用？](https://javabetter.cn/sidebar/sanfene/javase.html#_26-final-关键字有什么作用)

①、当 final 修饰一个类时，表明这个类不能被继承。比如，String 类、Integer 类和其他包装类都是用 final 修饰的。

②、当 final 修饰一个方法时，表明这个方法不能被重写（Override）。也就是说，如果一个类继承了某个类，并且想要改变父类中被 final 修饰的方法的行为，是不被允许的。

③、当 final 修饰一个变量时，表明这个变量的值一旦被初始化就不能被修改。

如果是基本数据类型的变量，其数值一旦在初始化之后就不能更改；如果是引用类型的变量，在对其初始化之后就不能再让其指向另一个对象。

但是引用指向的对象内容可以改变。

理解：

最终变量不可重写

最终方法不可重写

最终类不可继承

### [27.final、finally、finalize 的区别？](https://javabetter.cn/sidebar/sanfene/javase.html#_27-final、finally、finalize-的区别)

①、[final 是一个修饰符](https://javabetter.cn/oo/final.html)，可以修饰类、方法和变量。当 final 修饰一个类时，表明这个类不能被继承；当 final 修饰一个方法时，表明这个方法不能被重写；当 final 修饰一个变量时，表明这个变量是个常量，一旦赋值后，就不能再被修改了。

②、finally 是 Java 中异常处理的一部分，用来创建 try 块后面的 finally 块。无论 try 块中的代码是否抛出异常，finally 块中的代码总是会被执行。通常，finally 块被用来释放资源，如关闭文件、数据库连接等。

③、finalize 是[Object 类](https://javabetter.cn/oo/object-class.html#_05、关于-object-类)的一个方法，用于在垃圾回收器将对象从内存中清除出去之前做一些必要的清理工作。

这个方法在垃圾回收器准备释放对象占用的内存之前被自动调用。我们不能显式地调用 finalize 方法，因为它总是由垃圾回收器在适当的时间自动调用。

理解：

无论try不try出异常，最终地finally的东西都会执行

finalize 是[Object 类](https://javabetter.cn/oo/object-class.html#_05、关于-object-类)的一个方法，使垃圾最终化，用于清除内存中的垃圾对象，总是由垃圾回收器在适当的时间自动调用。

### [28.==和 equals 的区别？](https://javabetter.cn/sidebar/sanfene/javase.html#_28-和-equals-的区别)

在 Java 中，`==` 操作符和 `equals()` 方法用于比较两个对象：

①、==：用于比较两个对象的引用，即它们是否指向同一个对象实例。

如果两个变量引用同一个对象实例，`==` 返回 `true`，否则返回 `false`。

对于基本数据类型（如 `int`, `double`, `char` 等），`==` 比较的是值是否相等。

②、**equals() 方法**：用于比较两个对象的内容是否相等。默认情况下，`equals()` 方法的行为与 `==` 相同，即比较对象引用，如在超类 Object 中：

```
public boolean equals(Object obj) {
    return (this == obj);
}
```

然而，`equals()` 方法通常被各种类重写。例如，`String` 类重写了 `equals()` 方法，以便它可以比较两个字符串的字符内容是否完全一样。

理解：

==用于比较两个对象的引用。对于基本数据类型（如 `int`, `double`, `char` 等），`==` 比较的是值是否相等。对于引用数据类型，变量存的是引用，所以无法直接比较变量相不相等

equals：用于比较两个对象的内容是否相等。

### [29.🌟为什么重写 equals 时必须重写 hashCode ⽅法？](https://javabetter.cn/sidebar/sanfene/javase.html#_29-🌟为什么重写-equals-时必须重写-hashcode-方法)

因为基于哈希的集合类（如 HashMap）需要基于这一点来正确存储和查找对象。

具体地说，HashMap 通过对象的哈希码将其存储在不同的“桶”中，当查找对象时，它需要使用 key 的哈希码来确定对象在哪个桶中，然后再通过 `equals()` 方法找到对应的对象。

如果重写了 `equals()`方法而没有重写 `hashCode()`方法，那么被认为相等的对象可能会有不同的哈希码，从而导致无法在 HashMap 中正确处理这些对象。

#### [什么是 hashCode 方法？](https://javabetter.cn/sidebar/sanfene/javase.html#什么是-hashcode-方法)

`hashCode()` 方法的作⽤是获取哈希码，它会返回⼀个 int 整数，定义在 [Object 类](https://javabetter.cn/oo/object-class.html)中， 是一个本地⽅法。

