## Java中的数据类型有哪些？分为哪两大类？ (考点：Java数据类型及其分类) 【简单】

#### 基本回答

分为 基本数据类型 和 引用数据类型

**基本数据类型**

基本数据类型在内存中直接存储值，有八种

- 整数：byte（8位），short（16位），int（32位），long（64位）
- 浮点数：float（32位），double（64位）
- 字符：char（16位）
- 布尔：boolean（1位）

**引用数据类型**

对对象的引用，而不是对象本身。存储的是对象在内存中的地址。

- 类
- 接口
- 数组

#### 补充

- 整数和浮点数统称为数值类型

| 数据类型  | 位数  |                  取值范围                   |  默认值  |          示例           |
| :-------: | :---: | :-----------------------------------------: | :------: | :---------------------: |
|  `byte`   | 8 位  |                 -128 到 127                 |    0     |    `byte num = 10;`     |
|  `short`  | 16 位 |               -32768 到 32767               |    0     |   `short num = 100;`    |
|   `int`   | 32 位 |          -2147483648 到 2147483647          |    0     |    `int num = 1000;`    |
|  `long`   | 64 位 | -9223372036854775808 到 9223372036854775807 |    0L    | `long num = 1000000L;`  |
|  `float`  | 32 位 |      单精度浮点数，有效位数约 6 - 7 位      |   0.0f   |  `float num = 3.14f;`   |
| `double`  | 64 位 |       双精度浮点数，有效位数约 15 位        |   0.0d   | `double num = 3.14159;` |
|  `char`   | 16 位 |                 0 到 65535                  | '\u0000' |    `char ch = 'A';`     |
| `boolean` | 1 位  |              `true` 或 `false`              | `false`  | `boolean flag = true;`  |

- 类型转换：
  - 隐式类型转换（小转大），显式类型转换（大转小）。
  - byte，short，char参与运算时，会自动转换为int类型。
  - boolean不参与数据类型转换。
  - 表达式结果的类型自动提升为所操作数据中最大的类型。
  - 与C不同，boolean类型不能用0和非0替代false和true。

## Java中的final关键字可以修饰什么？被final修饰后有什么特点？ (考点：final关键字的用法) 【中等】

#### 简要回答

- final作为Java中的一个关键字可以用来修饰 类 ， 方法 ，和 变量。（但

  final不能修饰构造器）

  1. **修饰类**： 被final修饰的类**不能被继承，但该类可以去继承别的 (没有被final修饰的)类**，例如String类和System类，它们被final修饰，是不可以被继承的，但是它们有自己的父类——即顶层父类Object类。 被final修饰的类虽然不能被继承，但 **可以被实例化**。
  2. **修饰方法**： 被final修饰的方法**不能被子类重写，但可以被子类继承并使用（在满足访问权限规则的前提下）**。当修饰方法时， **final关键字不能与abstract关键字共存**；因为abstract修饰的方法是必须被非抽象子类重写的。
  3. **修饰变量**： 被final修饰的变量称为**最终变量，即常量**——根据被修饰变量的定义位置又可分为**成员常量和局部常量**。**常量只能赋值一次，不能被二次更改**。

------

#### 详细回答

- final作为Java中的一个关键字可以用来修饰 类 ， 方法 ，和 变量

  。（但final不能修饰构造器）

  1. **修饰类**： ① 核心特点： 被final修饰的类**不能被继承，但该类可以去继承别的 (没有被final修饰的)类**，例如String类和System类，它们被final修饰，是不可以被继承的，但是它们有自己的父类——即顶层父类Object类。 被final修饰的类虽然不能被继承，但 **可以被实例化**。例如，**Java中所有的包装类都被final关键字修饰了**。也就是说，所有的包装类都不能被继承，但都可以被实例化。 一般地，如果**一个类已经被final关键字**修饰，那么从逻辑上讲，**该类中的方法是没有必要再次用final修饰的**。这是因为用final修饰方法的目的就是为了不让该方法被子类重写；而final修饰的类本身就已经不能被继承了，也就不可能被重写。 ② 设计意图： 保证类的**不可变性**（如 **String** 类防止子类破坏字符串内容）。 确保**安全性**（如 **System** 类防止核心 API 被篡改）。
  2. **修饰方法**： ① 核心特点： 被final修饰的方法**不能被子类重写，但可以被子类继承并使用（在满足访问权限规则的前提下）**。当修饰方法时， **final关键字不能与abstract关键字共存**；因为abstract修饰的方法是必须被非抽象子类重写的。 ② 设计意图： **防止核心逻辑被修改**（如模板方法模式中的关键步骤）。
  3. **修饰变量**： ① 核心特点： 被final修饰的变量称为**最终变量，即常量**——根据被修饰变量的定义位置又可分为**成员常量和局部常量**。**常量只能赋值一次，不能被二次更改**。 **成员常量**——成员常量必须进行初始化，可以在定义成员常量时就对它赋初值来显式初始化，若在定义成员常量时没有赋初值——需要在构造器 或者 代码块中进行初始化。 **局部常量**——局部常量如果未被使用，可以不赋初值；但如果局部常量被调用了，就必须赋初值。 **静态常量**——对于静态常量来说，只能通过在定义时为其赋初值；或者先定义，然后在静态代码块中为其赋值，这样来初始化。但是不可以在构造器中进行静态常量的初始化。 ② 设计意图： 确保变量引用或值的**不可变性**（提升线程安全性与代码可读性）。

------

#### 知识拓展

1. final 修饰类的示意图如下：

    

   ![final_class.jpg](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/dd914233-9ebf-4ce8-a6eb-dd63c0e7e425.jpg)

2. final 修饰属性和方法的示意图如下：

    

   ![final_method_and_field.jpg](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/682205e4-c147-4bbe-8f1d-0081f957037b.jpg)

3. 关于 常量的命名：

   - 一般来说，常量名所有字母都大写，多个单词之间用下划线隔开。eg : MAX_VALUE（最大值）。

4. 关于 引用常量：

   - 若final关键字修饰的是一个引用类型变量，则该引用指向的地址值无法改变。（相当于一个 固定指针）
   - PS : 然而，需要注意的是，`final` 仅保证引用本身不可变，即不能再指向其他对象。但如果引用的对象是可变的（例如 `List`、`StringBuilder`），则该对象内部的数据仍然可以被修改。这在设计不可变类时需要注意，如果希望对象内容也完全不可变，需要额外的设计（如防御性拷贝或使用不可变集合）。

5. final and Method Parameters：

   - When a method parameter is declared as **final**, it means: ① **The parameter cannot be reassigned** within the method body. ② For **primitive types** (eg: `int`, `double`), the value cannot be modified. ③ For **reference types** (eg: `String`, `List`), the reference cannot point to a new object, but the object’s internal state can still be modified.

   - Codeing Demonstration:

     ```
     public void process(final int id, final List<String> data) {
     	id = 100;          			// WRONG, Compile error (primitive)
     	data = new ArrayList<>();  // WRONG, Compile error (reference)
     	data.add("newItem");       // OK, Allowed (modify object state)
     }
     ```

## 解释一下Java中的自动装箱和拆箱。 (考点：自动装箱与拆箱机制) 【简单】

#### 概念

自动装箱：编译器自动将基本数据类型转换为对应的包装类型

自动拆箱：编译器自动将包装类型转换为对应的基本数据类型

#### 作用

Java 5 引入，增强代码可读性，减少手动转换，方便开发者

#### 常见于

集合如 List 通过自动装箱可将 基本数据类型 int 转换为 Integer 存入集合

#### 底层实现

通过调用包装类的 valueOf() 和 xxxValue 方法

```
Integer a = Integer.valueOf(10);  // 自动装箱
int b = a.intValue();             // 自动拆箱
```

#### 注意点

①性能影响 ②NPE

## Java中的和equals()方法有什么区别？ (考点：与equals()的区别) 【简单】

#### == 运算符

- **用途**：`==` 运算符用于比较两个引用是否指向同一个对象实例。
- **比较对象**：当用于对象时，`==` 比较的是对象的**内存地址**，即它们是否是同一个对象。
- **基本类型**：对于基本数据类型（如 `int`、`char` 等），`==` 比较的是它们的值。

#### equals()

`equals()` 方法在 `Object` 类中定义，默认情况下，它与 `==` 等价（比较内存地址）。但是，许多类（如 `String` 和 `Integer`）重写了此方法，以提供基于内容的比较。

## Java中的访问修饰符有哪些？各自的访问范围是什么？ (考点：Java访问修饰符) 【简单】

Java中有四种访问修饰符：

**一、public（公共的）**

1. 访问范围 • 可以被任何类访问，无论是在同一个包内还是不同包内的类。

**二、protected（受保护的）**

1. 访问范围 • 在同一个包内的类可以访问。 • 不同包中的子类可以访问（这里的子类是通过继承得到的）。

**三、默认（无修饰符，也叫包级私有）**

1. 访问范围 • 只能在同一个包内的类访问。

**四、private（私有的）**

1. 访问范围 • 只能在定义它的类内部访问，类外部的任何类（包括同一个包内的其他类和不同包中的子类等）都不能访问。

## Java中的静态变量（static）和非静态变量有什么区别？ (考点：静态变量与非静态变量的区别) 【中等】

#### 静态变量

- 静态变量存储在方法区的静态存储区，在类加载时分配内存
- 静态变量是全局共享的，所有的类的实例和静态方法都可以访问，且修改静态变量会影响所有实例。
- 可以通过**类名.变量名**的方式来访问

#### 非静态变量

- 非静态变量存储在堆内存中
- 随实例的创建而创建，随实例的销毁而销毁
- 必须通过实例对象访问，不能直接通过类名访问

## Java中的方法重载（Overloading）和方法覆盖（Overriding）（重写与方法覆盖是同一概念的不同表述））有什么区别？ (考点：方法重载与覆盖) 【中等】

#### Java中的方法重载（Overloading）和方法覆盖（Overriding）（重写与方法覆盖是同一概念的不同表述））有什么区别？

##### **1. 方法重载（Overloading）**

方法重载指的是**在同一个类中，多个方法具有相同的名字，但参数列表不同**。方法重载是**编译时多态**的一种表现，它通过方法参数的不同来区分方法。

##### 比喻：

假设你是一个餐厅的服务员，客人点餐时，你问他要什么。对于不同的需求，你可以有不同的回答：

- 一个客人点一杯水，你给他一杯普通的水。
- 另一个客人点水时还要求冰块，你就给他加冰块的水。
- 还有一个客人点水，但要求加柠檬，你则给他柠檬水。

这里，“点水”是方法的名字，而不同的需求（加冰块、加柠檬）就是**参数的不同**。你使用相同的**方法名**（点水），但是根据客人的需求（不同的参数）来提供不同的服务（方法实现）。

##### 特点：

- 方法名相同，但参数列表不同（参数个数、类型、顺序）。
- 返回值类型可以相同，也可以不同，但如果只有返回值不同，不能作为重载的依据。
- 方法重载发生在同一个类中。

```
class Restaurant {
    // 点水的方法
    public void orderWater() {
        System.out.println("Here is a glass of water.");
    }

    // 点水加冰的方法
    public void orderWater(boolean withIce) {
        if (withIce) {
            System.out.println("Here is a glass of water with ice.");
        } else {
            System.out.println("Here is a glass of water without ice.");
        }
    }

    // 点水加柠檬的方法
    public void orderWater(String withLemon) {
        System.out.println("Here is a glass of water with lemon.");
    }
}
```

##### **2. 方法覆盖（Overriding）**

方法覆盖是指**子类重新实现父类中已经存在的方法**，并且方法签名（方法名、参数列表）保持一致。 方法覆盖发生在**继承关系中**，是**运行时多态**的一种体现，允许子类通过自己的实现覆盖父类的方法。

##### 比喻：

假设你是一个公司经理，下面有两个部门的员工。 每个部门都有一个任务——向顾客提供报告。 不同部门的员工可能会有不同的方式来做报告：

- 一个部门的员工用文字报告。
- 另一个部门的员工用图表报告。

这里，“提供报告”是方法名，而每个部门根据自己的特点（不同的实现方式）来提供报告（重写方法的具体实现）。

##### 特点：

- 子类**重写**父类的方法，方法名、参数列表、返回类型必须一致。
- 只能发生在继承关系中（子类继承父类）。
- 可以改变方法的实现，但不能改变方法签名。
- **运行时多态**：方法的调用决定于对象的实际类型，而不是引用类型。

```
class Animal {
    public void sound() {
        System.out.println("Animal makes a sound");
    }
}

class Dog extends Animal {
    // 重写父类的 sound 方法
    @Override
    public void sound() {
        System.out.println("Dog barks");
    }
}

class Cat extends Animal {
    // 重写父类的 sound 方法
    @Override
    public void sound() {
        System.out.println("Cat meows");
    }
}

public class Test {
    public static void main(String[] args) {
        Animal myDog = new Dog();
        Animal myCat = new Cat();

        myDog.sound();  // 输出 Dog barks
        myCat.sound();  // 输出 Cat meows
    }
}
```

### **重载和重写的主要区别：**

|      特性      |         **方法重载(Overloading)**          |              **方法覆盖(Overriding)**              |
| :------------: | :----------------------------------------: | :------------------------------------------------: |
|    **定义**    |     在同一个类中，方法名相同，参数不同     |           子类重新实现父类的已存在的方法           |
|  **发生地点**  |                  同一类中                  |                 子类继承父类时发生                 |
|  **方法签名**  |            方法名相同，参数不同            |                方法名相同，参数相同                |
|  **返回类型**  |    返回类型可以不同（不作为重载的依据）    |       返回类型必须相同（或是子类类型的子类）       |
| **访问修饰符** | 子类的访问修饰符可以更宽松（但不能更严格） | 子类的访问修饰符不能更严格，必须是**相同或更宽松** |
|  **多态类型**  |                 编译时多态                 |                     运行时多态                     |
|  **调用方式**  |       通过方法参数来区分调用哪个方法       |            通过对象的实际类型来调用方法            |

## Java中的异常处理机制是怎样的？ (考点：Java异常处理机制) 【中等】

- 编写代码时，将可能抛出异常的代码放在`try`块中。
- 在`try`块后面添加一个或多个`catch`块来捕获并处理可能发生的不同类型的异常。
- 可选地，在`try`块和`catch`块之后添加一个`finally`块来执行必要的清理代码。
- 在方法签名中使用`throws`子句声明方法可能抛出的异常。
- 在代码中，可以使用`throw`语句显式地抛出异常。

## 解释一下Java中的泛型（Generics）及其作用。 (考点：Java泛型) 【中等】

Java中的**泛型（Generics）\**是一种通过参数化类型来增强代码重用性和类型安全性的机制。它使得类、接口、方法能够\**操作指定类型的对象**，而不需要指定具体的类型。通过使用泛型，程序员可以编写**类型安全**的代码，同时避免强制类型转换，增加了代码的可读性和维护性。

##### **1. 泛型的基本概念**

泛型允许你在编写类、接口和方法时，**不确定它们将操作的对象的类型**，而是在实例化时指定具体的类型。你可以将泛型看作一个**“模板”**，它能在运行时确定操作的数据类型。

##### **2. 泛型的作用**

- **类型安全**：使用泛型可以让代码在编译时检查类型，避免了运行时错误。
- **代码复用**：泛型允许你编写更具通用性的代码，可以处理不同的数据类型，而不需要为每个数据类型编写不同的类或方法。
- **避免强制类型转换**：使用泛型，编译器会自动推断类型，避免了手动进行类型转换的麻烦。

##### **3. 泛型的基本语法**

泛型通常通过尖括号`<>`来指定，`<>`内是**占位符**，用来表示类型。例如：

- **泛型类**：`class ClassName<T>`，`T`代表一种类型。
- **泛型方法**：`<T> void method(T param)`，`T`是传入方法的类型。

##### 比喻：

假设你在开一个**果汁店**，你提供不同类型的果汁（橙汁、苹果汁、葡萄汁等）。如果你不使用泛型，每次做一个新类型的果汁时，你都需要创建一个新的方法（例如做橙汁、做苹果汁、做葡萄汁的独立方法）。但是，如果你使用了泛型，你只需要一个通用的“果汁制作方法”，然后根据不同的果实类型来制作相应的果汁。

##### **4. 泛型类示例**

假设我们有一个容器类（比如`Box`），它可以存储任何类型的对象。如果没有泛型，我们就只能存储特定类型的对象，且取出时需要做类型转换。使用泛型后，容器可以存储任何类型的对象，同时避免了类型转换的问题。

##### 没有泛型的例子：

```
public class Box {
    private Object value;

    public void setValue(Object value) {
        this.value = value;
    }

    public Object getValue() {
        return value;
    }

    public static void main(String[] args) {
        Box box = new Box();
        box.setValue("Hello");
        String message = (String) box.getValue();  // 强制类型转换
        System.out.println(message);
    }
}
```

这种方式虽然能存储任何类型，但**每次取出数据时都需要强制类型转换**，这容易出错。

##### 使用泛型的例子：

```
public class Box<T> {  // 使用泛型 T
    private T value;

    public void setValue(T value) {
        this.value = value;
    }

    public T getValue() {
        return value;
    }

    public static void main(String[] args) {
        Box<String> box = new Box<>();  // 创建一个存储 String 类型的 Box
        box.setValue("Hello");
        String message = box.getValue();  // 不需要强制类型转换
        System.out.println(message);
    }
}
```

在这个例子中，`Box`类是一个**泛型类**，它可以存储任何类型的数据（通过类型参数`T`来指定）。通过在创建`Box`实例时指定类型（例如`Box<String>`），我们可以确保类型安全，而且不需要手动进行类型转换。

##### **5. 泛型方法**

泛型不仅可以用于类，还可以用于方法。泛型方法允许你在方法中使用泛型参数，使得方法在不同的类型之间共享。

##### 泛型方法示例：

```
public class GenericMethodExample {
    public static <T> void printArray(T[] array) {
        for (T element : array) {
            System.out.println(element);
        }
    }

    public static void main(String[] args) {
        Integer[] intArray = {1, 2, 3, 4};
        String[] strArray = {"Apple", "Banana", "Cherry"};

        printArray(intArray);  // 输出整数数组
        printArray(strArray);  // 输出字符串数组
    }
}
```

这里的`<T>`表示该方法是一个**泛型方法**，可以接收任何类型的数组作为参数。无论是`Integer`类型的数组，还是`String`类型的数组，都可以通过这个方法进行打印。

##### **6. 泛型的边界（Bounded Type Parameters）**

泛型类型参数可以加上**边界（Bound）**，限制它可以接受的类型范围。使用`extends`关键字，你可以指定泛型的上边界，这样泛型参数就只能是指定类或其子类的类型。

##### 上边界（Upper Bounded Wildcards）：

```
public class BoundedTypeExample {
    public static <T extends Number> void printNumbers(T[] numbers) {
        for (T num : numbers) {
            System.out.println(num);
        }
    }

    public static void main(String[] args) {
        Integer[] intArray = {1, 2, 3};
        Double[] doubleArray = {1.1, 2.2, 3.3};

        printNumbers(intArray);  // 适用于 Integer 类型
        printNumbers(doubleArray);  // 适用于 Double 类型
    }
}
```

在这个例子中，`<T extends Number>`表示`T`只能是`Number`类或它的子类（如`Integer`、`Double`等）。这确保了`T`的类型是数字类型。

##### **7. 通配符（Wildcard）**

泛型中的**通配符（Wildcard）**可以用来表示不确定的类型。例如，`?`表示任何类型。常见的通配符有：

- `? extends T`：表示类型是`T`或`T`的子类。
- `? super T`：表示类型是`T`或`T`的父类。

##### 示例：

```
public class WildcardExample {
    public static void printList(List<? extends Number> list) {
        for (Number num : list) {
            System.out.println(num);
        }
    }

    public static void main(String[] args) {
        List<Integer> intList = List.of(1, 2, 3);
        List<Double> doubleList = List.of(1.1, 2.2, 3.3);

        printList(intList);  // 适用于 Integer 类型
        printList(doubleList);  // 适用于 Double 类型
    }
}
```

这里的`List<? extends Number>`表示可以接受任何`Number`及其子类的`List`（如`Integer`、`Double`等）。

##### **8. 泛型的类型擦除**

Java中的泛型是在**编译时**通过类型擦除来实现的。在运行时，泛型的类型参数会被擦除，转换为原始类型（例如，`T`被替换为`Object`，`List<T>`变成了`List`）。因此，泛型的类型信息是不会保留到运行时的。

##### **9. 总结**

- **泛型的作用**：
  - 提供类型安全的代码。
  - 增强代码的可重用性。
  - 避免强制类型转换和运行时错误。
- **泛型语法**：
  - 泛型类：`class ClassName<T>`。
  - 泛型方法：`<T> void method(T param)`。
  - 边界（Bounded Type）：`<T extends Number>`。
- **通配符**：`? extends T`表示类型是`T`的子类，`? super T`表示类型是`T`的父类。

## Java中的String类为什么是不可变的？ (考点：String类的不可变性) 【中等】

Java中的`String`类是**不可变的**（immutable），这意味着一旦创建了一个`String`对象，它的值就不能被改变。这个设计带来了很多好处，包括线程安全、性能优化和安全性等。

### **1. 为什么要设计成不可变？**

#### **1.1 线程安全**

不可变的`String`类是天然线程安全的，因为它的值不能被修改。这就意味着多个线程可以共享同一个`String`对象，而不必担心并发修改带来的问题。

- **比喻**：想象你和几个朋友一起共享一部旅行指南（`String`对象）。每个人都可以自由地阅读这本书，但没有人能在别人看书的时候悄悄改动里面的内容。所以，不会发生因为修改内容而导致争议或错误的情况。

#### **1.2 安全性**

不可变对象的另一个好处是**安全性**。例如，`String`常常用于存储用户名、密码、URL等敏感信息。如果`String`是可变的，那在某些情况下，其他代码就有可能不小心或故意地修改它的值。而不可变的`String`确保了它的内容不会被改变，保障了数据的安全性。

- **比喻**：假设你在图书馆借书（`String`对象）。一旦借走，你就不能随意修改书的内容，这样其他借书的人才能放心使用。

#### **1.3 优化性能（常量池）**

Java通过**字符串常量池**来优化内存使用。因为`String`对象不可变，当你创建多个相同内容的`String`时，JVM会使用同一个对象而不是创建多个相同的`String`对象，从而节省内存。

- **比喻**：假设你在一家餐馆吃饭，每次你点了一样的菜，餐馆都会直接给你一份已经做好的，而不是每次都重新做一份，这样就避免了重复劳动和资源浪费。

#### **1.4 提高效率**

不可变的`String`对象可以**共享**，并且JVM可以对其进行各种优化（如缓存）。例如，`String`的`intern()`方法会检查常量池中是否已经存在相同的字符串，如果存在就返回相同的引用，这减少了内存的使用。

- **比喻**：想象你在购物时，商店有很多相同的商品，商店会在库存中有一份相同的商品，而不是每次都去生产新商品，这样节省了时间和资源。

### **2. 如何保证String不可变？**

Java的`String`类通过以下几个方面来实现不可变：

#### **2.1 `String`类的字段是`final`**

`String`类中存储字符串内容的字段是`private final char[] value`。`final`关键字意味着这个字段只能被赋值一次，赋值后无法更改。因此，`String`的内容一旦设置好就无法修改。

#### **2.2 `String`类没有提供修改内容的方法**

`String`类没有提供可以直接修改其内容的方法，例如没有`setCharAt()`、`append()`等方法。所有对`String`的“修改”操作实际上都会生成一个新的`String`对象。例如，`String`类的`concat()`方法不会改变原始`String`对象，而是返回一个新的`String`对象。

- **比喻**：如果你正在写一个日记（`String`），你不能直接在原来页面上修改内容。每次你想修改内容时，必须在新的日记本上记录，这样旧的日记本内容不受影响。

#### **2.3 `String`的不可变设计**

每当对`String`进行修改时，都会生成一个新的`String`对象，而不是修改原来的对象。例如，调用`+`操作符或`concat()`方法连接字符串时，实际上会创建一个新的`String`对象。

- **比喻**：假设你想加装饰画到墙上（`String`）。虽然你可以在原有墙面上画画，但实际是把画作挂在了新墙面上（新的`String`对象），原墙面没有任何变化。

### **3. `String`不可变的实现示例**

```
public class StringExample {
    public static void main(String[] args) {
        String str1 = "Hello";
        String str2 = str1;
        str1 = str1 + " World";  // 创建了一个新的String对象

        System.out.println("str1: " + str1);  // 输出 "Hello World"
        System.out.println("str2: " + str2);  // 输出 "Hello"
    }
}
```

在上面的例子中，虽然我们通过`+`操作符给`str1`增加了内容，但实际上它指向的是一个新的`String`对象，原始的`str1`对象内容没有改变。因此，`str2`仍然指向原始的`"Hello"`。

### **4. String的不可变性带来的影响**

#### **4.1 性能考虑**

虽然不可变性带来了很多好处，但它也有一些缺点，尤其是在字符串频繁修改的场景下，因为每次修改都会创建一个新的`String`对象。为了优化性能，通常可以使用`StringBuilder`或`StringBuffer`类，它们是**可变的**，适合做频繁的字符串拼接操作。

#### **4.2 对比String和StringBuilder**

```
public class StringBuilderExample {
    public static void main(String[] args) {
        StringBuilder sb = new StringBuilder("Hello");
        sb.append(" World");  // 不会创建新对象，而是修改原有对象
        System.out.println(sb.toString());  // 输出 "Hello World"
    }
}
```

在上面的代码中，`StringBuilder`是可变的，它不会每次修改时创建新的对象，而是在原对象上进行操作，这样可以提高效率。

### **5. 总结**

- `String`类是不可变的，意味着它一旦被创建就不能改变。
- **不可变性**带来了**线程安全**、**安全性**、**性能优化**等优点。
- `String`的不可变设计是通过`final`字段、没有修改内容的方法、以及每次操作都会创建新的`String`对象来实现的。
- 如果需要频繁修改字符串，可以考虑使用`StringBuilder`或`StringBuffer`，它们是可变的。

不可变的设计是`String`类的一大优势，帮助Java程序在多线程和内存管理上变得更加高效和安全。

## String、StringBuffer和StringBuilder有什么区别？ (考点：String、StringBuffer与StringBuilder的区别) 【简单】

`String`、`StringBuffer` 和 `StringBuilder` 是 Java 中用于处理字符串的三种类。它们之间有许多不同的特点，适用于不同的场景。

### 1. **String**

- **定义**：`String` 是不可变的字符序列。它的值一旦被赋值就不能改变，任何对 `String` 对象的操作（如连接、修改等）都会生成一个新的 `String` 对象。
- 特点：
  - **不可变性**：一旦创建，字符串的值不能改变。任何修改字符串的操作都会生成一个新的对象，而原有的字符串对象保持不变。
  - **线程安全**：由于是不可变的，不需要额外的同步机制，因此是线程安全的。
  - **内存效率问题**：由于 `String` 是不可变的，所以它的字符串值会被多次复制，频繁操作时可能会造成内存浪费（特别是字符串连接操作）。
- 使用场景：
  - 当字符串内容不需要频繁改变时（例如固定内容、常量池中的字符串等），使用 `String` 是合适的。
  - 适合用于不需要改变的、较小的字符串处理操作。

### 2. **StringBuffer**

- **定义**：`StringBuffer` 是一个可以变更的字符序列，允许在原有字符序列上进行修改（比如追加、删除字符等）。它是可变的，并且线程安全的。
- 特点：
  - **可变性**：`StringBuffer` 对象中的内容是可以改变的（例如：添加、删除字符等）。它会直接修改原有字符数组，而不创建新的对象。
  - **线程安全**：`StringBuffer` 的方法是同步的，因此它是线程安全的，适用于多线程环境。
  - **性能**：由于其线程安全性，`StringBuffer` 的性能相对较低，特别是在不涉及多线程的情况下，可能会比 `StringBuilder` 慢。
- 使用场景：
  - 当需要在多线程环境下进行字符串拼接或者修改时使用 `StringBuffer`。
  - 在保证线程安全的情况下，需要进行字符串频繁修改的场景（比如构建动态的字符串）。

### 3. **StringBuilder**

- **定义**：`StringBuilder` 与 `StringBuffer` 类似，也是一个可以变更的字符序列。与 `StringBuffer` 不同的是，`StringBuilder` 并不是线程安全的，适合单线程环境下使用。
- 特点：
  - **可变性**：`StringBuilder` 也可以修改其内部的字符序列，直接在原有字符数组上进行修改。
  - **线程不安全**：`StringBuilder` 的方法没有同步，因此在多线程环境下，它不保证线程安全。
  - **性能**：因为它没有同步机制，相比 `StringBuffer` 来说，`StringBuilder` 在单线程下的性能更好，适合单线程环境中的高效字符串操作。
- 使用场景：
  - 在单线程环境下频繁修改字符串时，使用 `StringBuilder` 可以获得更好的性能。
  - 当线程安全不是问题时，并且操作频繁时，推荐使用 `StringBuilder`。

### 总结：

|     特性     |            String            |           StringBuffer           |          StringBuilder           |
| :----------: | :--------------------------: | :------------------------------: | :------------------------------: |
| **是否可变** |            不可变            |               可变               |               可变               |
| **线程安全** |              是              |    是 (通过同步实现线程安全)     |                否                |
|   **性能**   | 性能较低（频繁修改时不推荐） |   性能较低（同步操作影响性能）   |    性能较高（适合单线程环境）    |
| **适用场景** |  字符串不变时，常量池等使用  | 多线程环境下需要修改字符串时使用 | 单线程环境下频繁修改字符串时使用 |

### 结论：

- 如果你不需要修改字符串，使用 `String`。
- 如果在多线程环境下需要修改字符串，使用 `StringBuffer`。
- 如果在单线程环境下需要频繁修改字符串，使用 `StringBuilder`。

## Java中的lambda表达式是什么？它带来了哪些便利？ (考点：Java lambda表达式) 【中等】

想象一下，你去咖啡店点了一杯咖啡。原来你得等服务员跑去厨房，然后带着咖啡回来给你。这个过程就像传统的代码，你要去写一个方法，然后传递给某个地方去执行。你看，整个过程慢得像乌龟。

但是，**lambda 表达式**就像是你告诉咖啡师：“嘿，我不想等，你直接在这儿做完就行了。” 这样，你自己只需要告诉咖啡师“做一杯咖啡”就行，省去了不必要的繁琐步骤。

**Lambda表达式的好处**就是让代码变得简洁，功能也变得更灵活。

#### 看个例子：

如果你要做一个加法运算：

**传统写法**：

```
// 使用匿名类来写
public int add(int a, int b) {
    return a + b;
}
```

**Lambda表达式写法**：

```
// 使用Lambda表达式来写
BinaryOperator<Integer> add = (a, b) -> a + b;
```

### 1. **Lambda表达式的基本结构**：

```
(参数列表) -> {方法体}
```

**参数列表**：就是你要传给这个函数的值，比如 `(a, b)`。 **方法体**：就是具体的操作，像 `a + b`，它决定了这个表达式要做什么。

### 2. **Lambda表达式带来的便利**：

- **简洁性**：减少了冗长的代码，像上面的加法例子，传统方法需要很多代码，而Lambda表达式只需要一行。
- **可读性**：代码变得简洁，其他人阅读起来更容易理解。
- **函数式编程**：让你可以像使用“工具”一样去操作代码，提高了代码的灵活性。

### 3. **实际应用场景**：

比如，Lambda 在 **Java 8 的流式操作**中，允许你通过一种更加直观的方式来处理集合数据，像是筛选、映射等。

```
List<String> names = Arrays.asList("Alice", "Bob", "Charlie");
names.stream()
     .filter(name -> name.startsWith("A")) // 用Lambda表达式过滤
     .forEach(System.out::println); // 输出符合条件的元素
```

看！简单的几行代码就搞定了原本复杂的过滤和遍历操作，Lambda大大提高了代码的简洁度和效率。

------

Lambda表达式是Java 8引入的一种新的语法特性，它主要目的是实现**函数式编程**风格，使得代码更加简洁、可读性更高，并且能够轻松地处理一些常见的操作，特别是在集合框架和并行处理方面。

Lambda表达式的基本语法形式如下：

```
(参数) -> {表达式}
```

#### 核心特点：

- **简洁性**：Lambda允许我们直接在需要的地方传递行为（函数），无需冗长的匿名类或方法定义。
- **函数式接口**：Lambda表达式的目标是简化实现**函数式接口**（仅有一个抽象方法的接口）的方法体，通常用于回调、事件监听等场景。
- **延迟计算与更强大的集合操作**：与 `Stream API` 配合使用时，Lambda表达式能够高效地进行集合操作，比如筛选、排序、映射等，且具有支持并行流的优势。

#### 应用场景：

1. **集合操作**：Java 8 引入的 `Stream API`，使得使用Lambda表达式可以进行过滤、映射、排序等操作，大大提高了代码的简洁性。
2. **事件监听**：Lambda常用于回调或事件处理中，通过简化代码提高可维护性。

总的来说，Lambda表达式不仅仅是为了简化代码，它还提升了Java编程语言的表达能力，增强了函数式编程的特性，尤其在处理集合和并行处理时表现得尤为突出。

## Java中的Optional类是什么？为什么需要它？ (考点：Java Optional类及其必要性) 【中等】

#### 简要回答

1. Optional类的定义：
   - **包装类**：将可能为 `null` 的值封装成 `Optional` 对象（如 `Optional<String>`）。
   - **明确空值意图**：通过方法名（如 `isPresent()`、`orElse()`）显式表达“值可能不存在”的逻辑。
2. Optional类的作用：
   - **避免 `NullPointerException`**：强制开发者主动处理空值，减少运行时错误。
   - **代码更简洁**：链式调用替代多层 `if (obj != null)` 判空。
   - **API 设计更清晰**：方法签名中明确表示返回值可能为空（如 `Optional<User> findUser()`）。

## 谈谈JDK8新特性。（考点：JDK8新特性）【困难】

JDK 8 是 Java 的一次重要升级，引入了多个新特性，主要用于提升语言的表达能力、增强代码的简洁性和提高开发效率。

### 1. **Lambda表达式：**

Lambda 表达式允许以简洁的方式传递行为，它使得 Java 编程更具函数式编程风格。Lambda 表达式的基本语法是 `(parameter) -> expression`，它为 Java 提供了匿名方法的替代，常常用于简化集合操作和并行流处理等。

```
List<String> list = Arrays.asList("apple", "banana", "cherry");
list.forEach(s -> System.out.println(s));  // 使用Lambda表达式简化代码
```

### 2. **Stream API：**

Stream API 是对集合的增强，支持声明式地进行数据处理，包括排序、过滤、映射等操作。Stream 的操作支持链式调用，并且可以通过 `parallelStream()` 轻松实现并行处理，提高大数据量处理的效率。

```
List<String> list = Arrays.asList("apple", "banana", "cherry");
long count = list.stream()
                 .filter(s -> s.startsWith("a"))
                 .count();
```

### 3. **Optional类：**

Optional 类是为了避免 NullPointerException 的发生，作为一种容器来表示可能存在或者不存在的值。它为值存在与否提供了明确的语义，并提供了一些方法，如 `orElse` 和 `ifPresent` 来处理空值问题。

```
Optional<String> optional = Optional.ofNullable("Hello");
optional.ifPresent(s -> System.out.println(s));  // 如果值存在，打印
```

### 4. **新的日期时间API：**

JDK 8 引入了新的 `java.time` 包（包括 `LocalDate`, `LocalTime`, `LocalDateTime` 等类），大大简化了日期和时间的处理。新的 API 解决了老旧的 `Date` 类和 `Calendar` 类存在的线程不安全、复杂性等问题。

```
LocalDate date = LocalDate.of(2023, 10, 1);
LocalDate today = LocalDate.now();
```

### 5. **默认方法（Default Methods）：**

默认方法是接口的一个新特性，允许在接口中定义有实现的方法，这样接口新增方法时不会影响到实现该接口的类，减少了代码的侵入性。

```
interface MyInterface {
    default void show() {
        System.out.println("Default method");
    }
}

class MyClass implements MyInterface {
    // 无需实现show方法
}
```

### 6. **函数式接口和`@FunctionalInterface`：**

JDK 8 引入了 **函数式接口** 的概念，旨在支持 Lambda 表达式。函数式接口是只包含一个抽象方法的接口，可以使用 `@FunctionalInterface` 注解来标识，常用于与 Lambda 表达式结合使用。

```
@FunctionalInterface
interface MyFunction {
    void apply();
}
```

### 7. **方法引用（Method References）：**

方法引用是 Lambda 表达式的简化形式，允许直接引用类中的方法，增强了代码的可读性和简洁性。

```
List<String> list = Arrays.asList("apple", "banana", "cherry");
list.forEach(System.out::println);  // 方法引用，简化代码
```