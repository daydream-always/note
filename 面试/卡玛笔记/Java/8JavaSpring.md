![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/2025-09-03_12-49-26.jpg)

**如果能做完[手写spring框架（第三版）](https://programmercarl.com/other/project_spring.html)这个项目，不仅可以在简历上添加一个项目，spring相关八股基本活学活用了**

## Spring

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/_Spring_Horse.png)

### SpringBoot、SpringMVC、Spring有什么区别

**1、Spring**

[SpringBoot、SpringMVC、Spring有什么区别](https://zhuanlan.zhihu.com/p/101970214)

Spring是一个全面的Java企业级应用程序开发框架，提供了广泛的功能，包括依赖注入、AOP（面向切面编程）、事务管理等。

**2、SpringMVC**

Spring MVC 是 Spring 中的一个很重要的模块，主要赋予 Spring 快速构建 MVC 架构的 Web 程序的能力。MVC 是模型(Model)、视图(View)、控制器(Controller)的简写，其核心思想是通过将业务逻辑、数据、显示分离来组织代码。 主要关注于处理Web请求、管理用户会话、控制应用程序流程等。

**3、SpringBoot**

Springboot是一个微服务框架，延续了spring框架的核心思想IOC和AOP，简化了应用的开发和部署。Spring Boot是为了简化Spring应用的创建、运行、调试、部署等而出现的，提供约定大于配置的方式, 使用它可以做到专注于Spring应用的开发，而无需过多关注XML的配置。使得构建独立的、自包含的Spring应用程序变得更加容易。

简而言之，Spring是一个全面的框架，Spring MVC是Spring框架的一部分，专注于Web应用程序开发，而Spring Boot是基于Spring的微服务框架，旨在简化和加速Spring应用程序的开发。

### 简单介绍一下Spring的框架体系

Spring框架至今已集成了20多个模块，这些模块分布在以下模块中:

- 核心容器(Core Container)
- 数据访问/集成(Data Access/Integration)层
- Web层
- AOP(Aspect Oriented Programming)模块
- 植入(Instrumentation)模块
- 消息传输(Messaging)
- 测试(Test)模块

![image-20231208161703377](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/image-20231208161703377.png)

1. 核心容器

Spring的核心容器是其他模块建立的基础，有Spring-core、Spring-beans、Spring-context、Spring-context-support和Spring-expression(String表达式语言)等模块组成。

- Spring-core模块**:提供了框架的基本组成部分，包括控制反转(Inversion of Control，IOC)和 依赖注入(Dependency Injection，DI)功能。 **
- Spring-beans模块**: 提供了BeanFactory，是工厂模式的一个经典实现，Spring将管理对象称为 Bean。 **
- Spring-context模块**:建立在Core和Beans模块的基础之上，提供一个框架式的对象访问方式， 是访问定义和配置的任何对象的媒介。ApplicationContext接口是Context模块的焦点。 **
- Spring-context-support模块**:支持整合第三方库到Spring应用程序上下文，特别是用于高速缓 存(EhCache、JCache)和任务调度(CommonJ、Quartz)的支持。 **
- Spring-expression模块:提供了强大的表达式语言去支持运行时查询和操作对象图。这是对 JSP2.1规范中规定的统一表达式语言(Unified EL)的扩展。该语言支持设置和获取属性值、属性 分配、方法调用、访问数组、集合和索引器的内容、逻辑和算术运算、变量命名以及从Spring的 IOC容器中以名称检索对象。它还支持列表投影、选择以及常用的列表聚合。

1. AOP和**Instrumentation**

- Spring-aop模块**:提供了一个符合AOP要求的面向切面的编程实现，允许定义方法拦截器和切入 点，将代码按照功能进行分离，以便干净地解耦。 **
- Spring-aspects模块**:提供了与AspectJ的集成功能，AspectJ是一个功能强大且成熟的AOP框架。**
- Spring-instrument模块: 提供了类植入(Instrumentation)支持和类加载器的实现，可以在特定的应用服务器中使用。

1. 消息

- Spring4.0以后新增了消息(Spring-messaging)模块，该模块提供了对消息传递体系结构和协议

  的支持。

1. 数据访问/集成

数据访问/集成层由JDBC、ORM、OXM、JMS和事务模块组成。

- Spring-jdbc模块:提供了一个JDBC的抽象层，消除了烦琐的JDBC编码和数据库厂商特有的错误 代码解析
- Spring-orm模块:为流行的对象关系映射(Object-Relational Mapping)API提供集成层，包括 JPA和Hibernate。使用Spring-orm模块可以将这些O/R映射框架与Spring提供的所有其他功能结 合使用，例如声明式事务管理功能。
- Spring-oxm模块:提供了一个支持对象/XML映射的抽象层实现，例如JAXB、Castor、JiBX和 XStream
- Spring-jms模块(Java Messaging Service):指Java消息传递服务，包含用于生产和使用消息 的功能。自Spring4.1以后，提供了与Spring-messaging模块的集成。
- Spring-tx模块(事务模块): 支持用于实现特殊接口和所有POJO(普通Java对象)类的编程和声 明式事务管理。

1. Web

Web层由Spring-web、Spring-webmvc、Spring-websocket和Portlet模块组成。

- Spring-web模块:提供了基本的Web开发集成功能，例如多文件上传功能、使用Servlet监听器初 始化一个IOC容器以及Web应用上下文
- Spring-webmvc模块:也称为Web-Servlet模块，包含用于web应用程序的Spring MVC和REST Web Services实现。Spring MVC框架提供了领域模型代码和Web表单之间的清晰分离，并与 Spring Framework的所有其他功能集成。
- Spring-websocket模块 :Spring4.0以后新增的模块，它提供了WebSocket和SocketJS的实现。

1. 测试

- Spring-test模块支持使用JUnit或TestNG对Spring组件进行单元测试和集成测试。

### 介绍一下Spring中的AOP

#### 1. 什么是AOP

AOP (Aspect Orient Programming),直译过来就是 面向切面编程。AOP 是一种编程思想，是面 向对象编程的一种补充。面向对象编程将程序抽象成各个层次的对象，而面向切面编程是将程序抽 象成各个切面。

#### 2. 为什么需要AOP

AOP采用的是横向切面的方式，注入与主业务流程无关的功能，例如事务管理和日志管理。

![image-20231204161312125](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/image-20231204161312125.png)

#### 3. AOP实现分类

AOP 要达到的效果是，保证开发者不修改源代码的前提下，去为系统中的业务组件添加某种通用 功能。

按照 AOP 框架修改源代码的时机，可以将其分为两类:

- **AspectJ** 静态 AOP 实现， AOP 框架在编译阶段对程序源代码进行修改，生成了静态的 AOP

  代理类(生成的 *.class 文件已经被改掉了，需要使用特定的编译器)。

![image-20231204161457464](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/image-20231204161457464.png)

- 动态 AOP 实现， AOP 框架在运行阶段对动态生成代理对象(在内存中以 JDK 动态代理，或 CGlib 动态地生成 AOP 代理类)，如 SpringAOP。

JDK动态代理:使用JDK动态代理，目标类必须实现的某个接口，如果某个类没有实现接口则不能 生成代理对象。

CGLIB代理:Cglib原理是针对目标类生成一个子类，覆盖其中的所有方法，所以目标类和方法不 能声明为final类型。

### 谈一谈你对Spring AOP的理解

> 将AOP的几个核心概念说出来，将AOP的实现方式说出来

#### **AOP**

AOP(Aspect Oriented Programming)，即面向切面编程，可以说是OOP(Object Oriented Programming，面向对象编程)的补充和完善。OOP引入封装、继承、多态等概念来建立一种对象层 次结构，用于模拟公共行为的一个集合。不过OOP允许开发者定义纵向的关系，但并不适合定义横向的 关系，例如日志功能。日志代码往往横向地散布在所有对象层次中，而与它对应的对象的核心功能毫无 关系对于其他类型的代码，如安全性、异常处理和透明的持续性也都是如此，这种散布在各处的无关的 代码被称为横切(cross cutting)，在OOP设计中，它导致了大量代码的重复，而不利于各个模块的重 用。

AOP技术恰恰相反，它利用一种称为"横切"的技术，剖解开封装的对象内部，并将那些影响了多个类的 公共行为封装到一个可重用模块，并将其命名为"Aspect"，即切面。所谓"切面"，简单说就是那些与业 务无关，却为业务模块所共同调用的逻辑或责任封装起来，便于减少系统的重复代码，降低模块之间的 耦合度，并有利于未来的可操作性和可维护性。

使用"横切"技术，AOP把软件系统分为两个部分:**核心关注点**和**横切关注点**。业务处理的主要流程是核 心关注点，与之关系不大的部分是横切关注点。横切关注点的一个特点是，他们经常发生在核心关注点 的多处，而各处基本相似，比如权限认证、日志、事物。AOP的作用在于分离系统中的各种关注点，将 核心关注点和横切关注点分离开来。

#### AOP核心概念

1、横切关注点 

对哪些方法进行拦截，拦截后怎么处理，这些关注点称之为横切关注点 

2、切面(aspect) 

类是对物体特征的抽象，切面就是对横切关注点的抽象 

3、连接点(joinpoint) 

被拦截到的点，因为Spring只支持方法类型的连接点，所以在Spring中连接点指的就是被拦截到的方 法，实际上连接点还可以是字段或者构造器

4、切入点(pointcut) 

对连接点进行拦截的定义

5、通知(advice)

所谓通知指的就是指拦截到连接点之后要执行的代码，通知分为前置、后置、异常、最终、环绕通知五 类

6、目标对象 

代理的目标对象 

7、织入(weave) 

将切面应用到目标对象并导致代理对象创建的过程 

8、引入(introduction) 

在不修改代码的前提下，引入可以在**运行期**为类动态地添加一些方法或字段

#### Spring对AOP的支持

Spring中AOP代理由Spring的IOC容器负责生成、管理，其依赖关系也由IOC容器负责管理。因此， AOP代理可以直接使用容器中的其它bean实例作为目标，这种关系可由IOC容器的依赖注入提供。 Spring创建代理的规则为:

1、默认使用Java动态代理来创建AOP代理，这样就可以为任何接口实例创建代理了

2、当需要代理的类不是代理接口的时候，Spring会切换为使用CGLIB代理，也可强制使用CGLIB AOP编程其实是很简单的事情，纵观AOP编程，程序员只需要参与三个部分:

1、定义普通业务组件

2、定义切入点，一个切入点可能横切多个业务组件

3、定义增强处理，增强处理就是在AOP框架为普通业务组件织入的处理动作

所以进行AOP编程的关键就是定义切入点和定义增强处理，一旦定义了合适的切入点和增强处理，AOP 框架将自动生成AOP代理，即:代理对象的方法=增强处理+被代理对象的方法。

#### 动态代理的方式

Spring AOP中的动态代理主要有两种方式，JDK动态代理和CGLIB动 态代理:

- JDK动态代理只提供接口的代理，不支持类的代理。核心InvocationHandler接口和Proxy类， InvocationHandler 通过invoke()方法反射来调用目标类中的代码，动态地将横切逻辑和业务编织在一 起;接着，Proxy利用 InvocationHandler动态创建一个符合某一接口的的实例, 生成目标类的代理对 象。
- 如果代理类没有实现 InvocationHandler 接口，那么Spring AOP会选择使用CGLIB来动态代理目标 类。CGLIB(Code Generation Library)，是一个代码生成的类库，可以在运行时动态的生成指定类的 一个子类对象，并覆盖其中特定方法并添加增强代码，从而实现AOP。CGLIB是通过继承的方式做的动 态代理，因此如果某个类被标记为final，那么它是无法使用CGLIB做动态代理的。

静态代理与动态代理区别在于生成AOP代理对象的时机不同，相对来说AspectJ的静态代理方式具 有更好的性能，但是AspectJ需要特定的编译器进行处理，而Spring AOP则无需特定的编译器处理。

### 介绍一下Spring中的IOC和DI

1. 什么是IOC

Ioc—Inversion of Control，即控制反转，不是什么技术，而是一种设计思想。在Java开发 中，Ioc意味着将你设计好的对象交给容器控制，而不是传统的在你的对象内部直接控制。

1. IOC的好处

使用IOC后，我们不需要自己去创建某个类的实例，而由IOC容器去创建，当我们需要使用某个对 象时，直接到容器中去获取就可以了

![image-20231204161910618](https://file1.kamacoder.com/i/bagu/image-20231204161910618.png)

1. 什么是DI

创建被调用对象由Spring来完成，在容器实例化对象的时候主动的将被调用者注入给调用者，这样

就产生为了“依赖注入”的概念，也就是"DI"。

1. Ioc和DI的关系

其实它们是同一个概念的不同角度描述，由于控制反转概念比较含糊(可能只是理解为容器控制对 象这一个层面，很难让人想到谁来维护对象关系)，所以2004年大师级人物Martin Fowler又给出 了一个新的名字:“依赖注入”，相对IoC 而言，“依赖注入”明确描述了“被注入对象依赖IoC容器配 置依赖对象”。

### IoC

IoC: 控制反转，意思就是将创建对象的控制权从自己硬编码new的一个对象反转到了第三方身上。

IoC的主要实现方式是依赖注入，Spring中的依赖注入方式有：构造方法注入、settter注入、接口注入。

**目的：**

帮助我们接耦各种有依赖关系的业务对象之间的绑定关系

#### IoC-Provider

虽然不需要我们自己来做绑定关系，但是这部分的工作还是需要有人来实现的，所以IoC Provider就担任了这个角色，同时IoC Provider的职责也不仅仅这些，其基础职责如下：

**1、业务对象的构建管理：**

IoC中，业务对象不需要关心所依赖的对象如何构建如何获取，这部分任务交由IoC Provider

**2、业务对象之间的依赖绑定：**

通过结合之前构建和管理的所有业务对象，以及各个业务对象之间可识别的依赖关系，将这些对象所依赖的对象注入绑定。从而保证每个业务对象在使用的时候，可以出狱就绪状态。

#### Spring的IoC容器

担任了IoC Provider的职责，同时在此基础上，还增加了对Bean生命周期的管理、AOP支持内容。

从整体来看Spring的IoC容器的作用，共分为两部分：

**1、容器启动阶段：**

以某种方式将配置的Bean信息（XML、注解、Java编码）加载如整个Spring应用

**2、Bean实例化阶段：**

将加载的Bean配置信息组装成应用需要的业务对象

在此基础上，还充分运用了这两个阶段不同的特点，都预留了拓展钩子，供我们根据业务场景进行自定义拓展。

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/_Loc_weikunkun_01.png)

**一些核心的接口、类介绍：**

1. Resource: 用于解决 IoC 容器中的内容从哪里来的问题，也就是 配置文件从哪里读取、配置文件如何读取 的问题
2. BeanDefinition: 用于解决 Bean 的具体定义问题，包括 Bean 的名字是什么、它的类型是什么，它的属性赋予了哪些值或者引用，也就是 如何在 IoC 容器中定义一个 Bean，使得 IoC 容器可以根据这个定义来生成实例 的问题。
3. BeanFactoy: 用于解决 IoC 容器在 已经获取 Bean 的定义的情况下，如何装配、获取 Bean 实例 的问题。
4. ApplcationContext: 对上述的内容进行了功能的封装，解决 根据地址获取 IoC 容器并使用 的问题。

从Bean的角度来看，其整个生命周期如下：

![img](https://file1.kamacoder.com/i/bagu/_LoC_weikunkun_02.png)

Spring只帮我们管理单例Bean的生命周期，对于prototype类型的bean，Spring在创建好交给使用者使用之后，就不在管理其后续的生命周期了。

**粗略涉及具体源码的整体流程：**

1. BeanDefinitionReader读取Bean的配置信息（XML等），将读取到的每个Bean的配置信息使用BeanDefinition表示，同时注册到相应的BeanDefinitionRegistry（一个map）中 。
2. 通过实现了BeanFactoryPostProcessor的类，自定义修改BeanDefinition中的信息（如果有的话）
3. Bean的实例化: (1) 采用策略化bean的实例， 两种方式：cglib、反射 (2) 获取Bean的实例之后，根据BeanDefinition中信息，填充Bean的属性、依赖
4. 检测各种Aware接口，BeanFactory的、ApplicationContext的等
5. 调用BeanPostProcessor接口的前置处理方法，处理符合要求的Bean实例
6. 如果实现了InitializingBean接口，执行对应的afterPropertiesSet()方法
7. 如果定义了init-method，执行对应的自定义初始化方法
8. 调用BeanPostProcessor接口的前置处理方法，处理符合要求的Bean实例
9. 使用
10. 判断Bean的Scope，如果是prototype类型，不再管理
11. 如果是单例类型，如果实现了DisposableBean接口，执行对应的destoy方法
12. 如果定义了destory-method，执行对应的自定义销毁方法

**两个拓展点：**

1、BeanFactoryPostProcess

Spring提供的容器扩展机制，允许我们在bean实例化之前修改bean的定义信息即BeanDefinition的信息

2、BeanPostProcessor

也是Spring提供的容器扩展机制，不同于BeanFactoryPostProcessor的是，BeanPostProcessor在bean实例化后修改bean或替换bean。BeanPostProcessor是后面实现AOP的关键。

### Bean的作用域

```
将五种作用域的详细的介绍一下，其次要将它从创建到销毁的过程说一遍。
```

在 Spring 中，那些组成应用程序的主体及由 Spring IOC 容器所管理的对象，被称之为 bean。简单地 讲，bean 就是由 IOC 容器初始化、装配及管理的对象，除此之外，bean 就与应用程序中的其他对象 没有什么区别了。而 bean 的定义以及 bean 相互间的依赖关系将通过配置元数据来描述。

**Spring**中的bean默认都是单例的，这些单例Bean在多线程程序下如何保证线程安全呢? 例如对于 Web应用来说，Web容器对于每个用户请求都创建一个单独的Sevlet线程来处理请求，引入Spring框架 之后，每个Action都是单例的，那么对于Spring托管的单例Service Bean，如何保证其安全呢? Spring的单例是基于BeanFactory也就是Spring容器的，单例Bean在此容器内只有一个，Java的单例是基于 JVM，每个JVM内只有一个实例。

#### 作用域

创建一个bean定义，其实质是用该bean定义对应的类来创建真正实例的“配方”。把bean定义看成一个 配方很有意义，它与class很类似，只根据一张“处方”就可以创建多个实例。不仅可以控制注入到对象中 的各种依赖和配置值，还可以控制该对象的作用域。这样可以灵活选择所建对象的作用域，而不必在 Java Class级定义作用域。Spring Framework支持五种作用域，分别阐述如下表。

![image-20240115150911444](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/image-20240115150911444.png)

五种作用域中，**request**、session 和 **global session** 三种作用域仅在基于web的应用中使用(不必关 心你所采用的是什么web应用框架)，只能用在基于 web 的 Spring ApplicationContext 环境。

#### Signleton-唯一bean实例

当一个 bean 的作用域为 singleton，那么Spring IoC容器中只会存在一个共享的bean实例，并且所 有对bean 的请求，只要 id 与该bean定义相匹配，则只会返回bean的同一实例。 singleton 是单例 类型(对应于单例模式)，就是在创建起容器时就同时自动创建了一个bean的对象，不管你是否使用，他 都存在了，每次获取到的对象都是同一个对象。注意，singleton 作用域是Spring中的缺省作用域。要 在XML中将 bean 定义成 singleton ，可以这样配置:

```
<bean id="ServiceImpl" class="cn.csdn.service.ServiceImpl" scope="singleton">
```

也可以通过 @Scope 注解(它可以显示指定bean的作用范围。)的方式

```
@Service
@Scope("singleton")
public class ServiceImpl{
}
```

#### prototyoe

> **每次请求都会创建一个新的** **bean** **实例**

当一个bean的作用域为 prototype，表示一个 bean 定义对应多个对象实例。prototype 作用域的 bean 会导致在每次对该 bean 请求**(将其注入到另一个** **bean** **中，或者以程序的方式调用容器的** **getBean()** **方法**)时都会创建一个新的 bean 实例。prototype 是原型类型，它在我们创建容器的时候 并没有实例化，而是当我们获取bean的时候才会去创建一个对象，而且我们每次获取到的对象都不是 同一个对象。根据经验，对有状态的 bean 应该使用 prototype 作用域，而对无状态的 bean 则应该使 用 singleton 作用域。 在 XML 中将 bean 定义成 prototype ，可以这样配置:

```
<bean id="account" class="com.foo.DefaultAccount" scope="prototype"/>
或者
<bean id="account" class="com.foo.DefaultAccount" singleton="false"/>
```

#### request

> 每一次**HTTP请求都会产生一个新的bean，该bean仅在当前**HTTP request内有效

**request**只适用于Web程序，每一次HTTP 请求都会产生一个新的**bean，同时该bean仅在当前HTTP request内有效，当请求结束后，该对象的生命周期即告结束。** 在 XML 中将 bean 定义成 prototype ，可以这样配置:

#### session

> 每一次HTTP请求都会产生一个新的 bean，该bean 仅在当前 HTTP session 内有效

session只适用于Web程序，session 作用域表示该针对每一次 HTTP 请求都会产生一个新的 bean， 同时该 bean 仅在当前 HTTP session 内有效.与request作用域一样，可以根据需要放心的更改所创建 实例的内部状态，而别的 HTTP session 中根据 userPreferences 创建的实例，将不会看到这些特定 于某个 HTTP session 的状态变化。当HTTP session最终被废弃的时候，在该HTTP session作用域内的bean也会被废弃掉。

#### globalSession

global session 作用域类似于标准的 HTTP session 作用域，不过仅仅在基于 portlet 的 web 应用中才 有意义。Portlet 规范定义了全局 Session 的概念，它被所有构成某个 portlet web 应用的各种不同的 portle t所共享。在global session 作用域中定义的 bean 被限定于全局portlet Session的生命周期范围 内。

### Bean的生命周期

#### ApplicationContext Bean生命周期

![image-20240115150350122](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/image-20240115150350122.png)

ApplicationContext容器中，Bean的生命周期流程如上图所示，流程大致如下:

1.首先容器启动后，会对scope为singleton且非懒加载的bean进行实例化，

2.按照Bean定义信息配置信息，注入所有的属性，

3.如果Bean实现了BeanNameAware接口，会回调该接口的setBeanName()方法，传入该Bean的id， 此时该Bean就获得了自己在配置文件中的id，

4.如果Bean实现了BeanFactoryAware接口,会回调该接口的setBeanFactory()方法，传入该Bean的 BeanFactory，这样该Bean就获得了自己所在的BeanFactory，

5.如果Bean实现了ApplicationContextAware接口,会回调该接口的setApplicationContext()方法，传入 该Bean的ApplicationContext，这样该Bean就获得了自己所在的ApplicationContext，

6.如果有Bean实现了BeanPostProcessor接口，则会回调该接口的postProcessBeforeInitialzation()方 法，

7.如果Bean实现了InitializingBean接口，则会回调该接口的afterPropertiesSet()方法， 8.如果Bean配置了init-method方法，则会执行init-method配置的方法，

9.如果有Bean实现了BeanPostProcessor接口，则会回调该接口的postProcessAfterInitialization()方 法，

10.经过流程9之后，就可以正式使用该Bean了,对于scope为singleton的Bean,Spring的ioc容器中会缓 存一份该bean的实例，而对于scope为prototype的Bean,每次被调用都会new一个新的对象，期生命周 期就交给调用方管理了，不再是Spring容器进行管理了

11.容器关闭后，如果Bean实现了DisposableBean接口，则会回调该接口的destroy()方法， 12.如果Bean配置了destroy-method方法，则会执行destroy-method配置的方法，至此，整个Bean的

生命周期结束

#### BeanFactory Bean生命周期

ApplicationContext会利用Java反射机制自动识别出配置文件中定义的 BeanPostProcesser,InstantiationAwareBeanPostProcessor和BeanFactoryPostProcessor，并自动 将它们注册到应用上下文中。而BeanFactory需要手动addBeanPostProcessor()去进行注册。

![image-20240115150557543](https://file1.kamacoder.com/i/bagu/image-20240115150557543.png)

init-method 属性指定一个方法，在实例化 bean 时，立即调用该方法。同样，destroy-method 指定 一个方法，只有从容器中移除 bean 之后，才能调用该方法。

### @Autowired和@Resource注解有什么区别？

1. @Autowired是Spring提供的注解，@Resource是JDK提供的注解。
2. @Autowired是只能按类型注入，@Resource默认按名称注入，也支持按类型注入。
3. @Autowired按类型装配依赖对象，默认情况下它要求依赖对象必须存在，如果允许null值，可以设置它required属性为false，如果我们想使用按名称装配，可以结合@Qualifier注解一起使用。@Resource有两个中重要的属性：name和type。name属性指定byName，如果没有指定name属性，当注解标注在字段上，即默认取字段的名称作为bean名称寻找依赖对象，当注解标注在属性的setter方法上，即默认取属性名作为bean名称寻找依赖对象。需要注意的是，@Resource如果没有指定name属性，并且按照默认的名称仍然找不到依赖对象时， @Resource注解会回退到按类型装配。但一旦指定了name属性，就只能按名称装配了。

### 说说你知道的关于**BeanFactory**和**FactoryBean**的区别

1、区别

BeanFactory是Spring容器的顶级接口，给具体的IOC容器的实现提供了规范。

FactoryBean也是接口，为IOC容器中Bean的实现提供了更加灵活的方式，FactoryBean在IOC容器的基 础上给Bean的实现加上了一个简单工厂模式和装饰模式(如果想了解装饰模式参考:修饰者模式(装饰者 模式，Decoration) 我们可以在getObject()方法中灵活配置。其实在Spring源码中有很多FactoryBean 的实现类.

区别：BeanFactory是个Factory，也就是IOC容器或对象工厂，FactoryBean是个Bean。在Spring中， 所有的**Bean**都是由**BeanFactory(\**也就是\**IOC**容器**)**来进行管理的。

但对**FactoryBean**而言，这个**Bean**不是简单的**Bean**，而是一个能生产或者修饰对象生成的工厂**Bean,** 它的实现与设计模式中的工厂模式和修饰器模式类似。

2、BeanFactory

BeanFactory，以Factory结尾，表示它是一个工厂类(接口)， 它负责生产和管理bean的一个工厂。在 **Spring**中，**BeanFactory**是**IOC**容器的核心接口，它的职责包括:******实例化、定位、配置应用程序中的 对象及建立这些对象间的依赖。

BeanFactory只是个接口，并不是IOC容器的具体实现，但是Spring容器给出了很多种实现，如 DefaultListableBeanFactory、XmlBeanFactory、ApplicationContext等，其中XmlBeanFactory就是 常用的一个，该实现将以XML方式描述组成应用的对象及对象间的依赖关系。XmlBeanFactory类将持 有此XML配置元数据，并用它来构建一个完全可配置的系统或应用。

都是附加了某种功能的实现。它为其他具体的IOC容器提供了最基本的规范，例如 DefaultListableBeanFactory,XmlBeanFactory,ApplicationContext 等具体的容器都是实现了 BeanFactory，再在其基础之上附加了其他的功能。

**BeanFactory**和**ApplicationContext**就是**spring**框架的两个**IOC**容器，现在一般使用 **ApplicationnContext**，其不但包含了**BeanFactory**的作用，同时还进行更多的扩展。

BeanFacotry是spring中比较原始的Factory。如XMLBeanFactory就是一种典型的BeanFactory。 原始的BeanFactory无法支持spring的许多插件，如AOP功能、Web应用等。ApplicationContext接口,

它由BeanFactory接口派生而来， ApplicationContext包含BeanFactory的所有功能，通常建议比BeanFactory优先

ApplicationContext以一种更向面向框架的方式工作以及对上下文进行分层和实现继承， ApplicationContext包还提供了以下的功能:

MessageSource, 提供国际化的消息访问 资源访问，如URL和文件 事件传播 载入多个(有继承关系)上下文 ，使得每一个上下文都专注于一个特定的层次，比如应用的web 层;

BeanFactory提供的方法及其简单，仅提供了六种方法供客户调用:

**boolean containsBean(String beanName)** 判断工厂中是否包含给定名称的bean定义，若有 则返回true **Object getBean(String)** 返回给定名称注册的bean实例。根据bean的配置情况，如果是 singleton模式将返回一个共享实例，否则将返回一个新建的实例，如果没有找到指定bean,该方法 可能会抛出异常

**Object getBean(String, Class)** 返回以给定名称注册的bean实例，并转换为给定class类型 **Class getType(String name)** 返回给定名称的bean的Class,如果没有找到指定的bean实例，则排 除NoSuchBeanDefinitionException异常 **boolean isSingleton(String)** 判断给定名称的bean定义是否为单例模式 **String[] getAliases(String name)** 返回给定bean名称的所有别名

3、FactoryBean

一般情况下，**Spring**通过反射机制利用 <bean> 的**class**属性指定实现类实例化**Bean**，在某些情况下， 实例化**Bean**过程比较复杂，如果按照传统的方式，则需要在 <bean> 中提供大量的配置信息。配置方 式的灵活性是受限的，这时采用编码的方式可能会得到一个简单的方案。

Spring为此提供了一个org.springframework.bean.factory.FactoryBean的工厂类接口，用户可以通过 实现该接口定制实例化Bean的逻辑。FactoryBean接口对于Spring框架来说占用重要的地位，Spring自 身就提供了70多个FactoryBean的实现。它们隐藏了实例化一些复杂**Bean**的细节，给上层应用带来了 便利。从Spring3.0开始，FactoryBean开始支持泛型，即接口声明改为 FactoryBean<T> 的形式

以Bean结尾，表示它是一个Bean，不同于普通Bean的是:它是实现了 FactoryBean<T> 接口的 Bean，根据该Bean的ID从BeanFactory中获取的实际上是FactoryBean的getObject()返回的对象，而 不是FactoryBean本身，如果要获取FactoryBean对象，请在id前面加一个&符号来获取。

例如自己实现一个FactoryBean，功能:用来代理一个对象，对该对象的所有方法做一个拦截，在调用 前后都输出一行LOG，模仿ProxyFactoryBean的功能。

FactoryBean是一个接口，当在IOC容器中的Bean实现了FactoryBean后，通过getBean(String BeanName)获取到的Bean对象并不是FactoryBean的实现类对象，而是这个实现类中的getObject()方 法返回的对象。要想获取FactoryBean的实现类，就要getBean(&BeanName)，在BeanName之前加上 &。

```
package org.springframework.beans.factory;
public interface FactoryBean<T> {
    T getObject() throws Exception;
    Class<?> getObjectType();
    boolean isSingleton();
}
```

在该接口中还定义了以下3个方法:

- **TgetObject()**:返回由FactoryBean创建的Bean实例，如果isSingleton()返回true，则该实例会放 到Spring容器中单实例缓存池中;
- **booleanisSingleton()**:返回由FactoryBean创建的Bean实例的作用域是singleton还是 prototype;
- **ClassgetObjectType()**:返回FactoryBean创建的Bean类型。

当配置文件中 <bean> 的class属性配置的实现类是FactoryBean时，通过getBean()方法返回的不是 FactoryBean本身，而是FactoryBean#getObject()方法所返回的对象，相当于 FactoryBean#getObject()代理了getBean()方法。

1. 总结

BeanFactory是个Factory，也就是IOC容器或对象工厂，FactoryBean是个Bean。在Spring中，所有的 Bean都是由BeanFactory(也就是IOC容器)来进行管理的。但对FactoryBean而言，这个Bean不是简单 的Bean，而是一个能生产或者修饰对象生成的工厂Bean,它的实现与设计模式中的工厂模式和修饰器模 式类似

### Spring循环依赖及解决方式

1. 什么是循环依赖

循环依赖其实就是循环引用，也就是两个或者两个以上的bean互相持有对方，最终形成闭环。比如A依

赖于B，B依赖于C，C又依赖于A。如下图:

![image-20240115153440439](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/image-20240115153440439.png)

注意，这里不是函数的循环调用，是对象的相互依赖关系。循环调用其实就是一个死循环，除非有终结条件。

Spring中循环依赖场景有:

(1)构造器的循环依赖

(2)field属性的循环依赖

其中，构造器的循环依赖问题无法解决，只能拋出BeanCurrentlyInCreationException异常，在解决属 性循环依赖时，spring采用的是提前暴露对象的方法。

1. 怎么检测是否存在循环依赖

检测循环依赖相对比较容易，Bean在创建的时候可以给该Bean打标，如果递归调用回来发现正在创建中的话，即说明了循环依赖了。

1. 如何解决

Spring的循环依赖的理论依据基于Java的引用传递，当获得对象的引用时，对象的属性是可以延后设置 的。(但是构造器必须是在获取引用之前)

Spring的单例对象的初始化主要分为三步:

![image-20240115153548237](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/image-20240115153548237.png)

(1)createBeanInstance:实例化，其实也就是调用对象的构造方法实例化对象

(2)populateBean:填充属性，这一步主要是多bean的依赖属性进行填充

(3)initializeBean:调用spring xml中的init 方法。

从上面单例bean的初始化可以知道:循环依赖主要发生在第一、二步，也就是构造器循环依赖和field 循环依赖。那么我们要解决循环引用也应该从初始化过程着手，对于单例来说，在Spring容器整个生命 周期内，有且只有一个对象，所以很容易想到这个对象应该存在Cache中，Spring为了解决单例的循环 依赖问题，使用了**三级缓存**。

这三级缓存分别指: singletonFactories : 单例对象工厂的cache

earlySingletonObjects :提前曝光的单例对象的Cache

singletonObjects:单例对象的cache

在创建bean的时候，首先想到的是从cache中获取这个单例的bean，这个缓存就是singletonObjects。 如果获取不到，并且对象正在创建中，就再从二级缓存earlySingletonObjects中获取。如果还是获取不 到且允许singletonFactories通过getObject()获取，就从三级缓存singletonFactory.getObject()(三级缓 存)获取，如果获取到了则:从singletonFactories中移除，并放入earlySingletonObjects中。其实也就 是从三级缓存移动到了二级缓存。

从上面三级缓存的分析，我们可以知道，Spring解决循环依赖的诀窍就在于singletonFactories这个三 级cache。这个cache的类型是ObjectFactory。这里就是解决循环依赖的关键，发生在 createBeanInstance之后，也就是说单例对象此时已经被创建出来(调用了构造器)。这个对象已经被生 产出来了，虽然还不完美(还没有进行初始化的第二步和第三步)，但是已经能被人认出来了(根据对 象引用能定位到堆中的对象)，所以Spring此时将这个对象提前曝光出来让大家认识，让大家使用。

这样做有什么好处呢?让我们来分析一下“A的某个field或者setter依赖了B的实例对象，同时B的某个 field或者setter依赖了A的实例对象”这种循环依赖的情况。A首先完成了初始化的第一步，并且将自己 提前曝光到singletonFactories中，此时进行初始化的第二步，发现自己依赖对象B，此时就尝试去 get(B)，发现B还没有被create，所以走create流程，B在初始化第一步的时候发现自己依赖了对象A，

于是尝试get(A)，尝试一级缓存singletonObjects(肯定没有，因为A还没初始化完全)，尝试二级缓存 earlySingletonObjects(也没有)，尝试三级缓存singletonFactories，由于A通过ObjectFactory将自 己提前曝光了，所以B能够通过ObjectFactory.getObject拿到A对象(虽然A还没有初始化完全，但是总 比没有好呀)，B拿到A对象后顺利完成了初始化阶段1、2、3，完全初始化之后将自己放入到一级缓存 singletonObjects中。此时返回A中，A此时能拿到B的对象顺利完成自己的初始化阶段2、3，最终A也 完成了初始化，进去了一级缓存singletonObjects中，而且更加幸运的是，由于B拿到了A的对象引用， 所以B现在hold住的A对象完成了初始化。

知道了这个原理时候，肯定就知道为啥Spring不能解决“A的构造方法中依赖了B的实例对象，同时B的构 造方法中依赖了A的实例对象”这类问题了!因为加入singletonFactories三级缓存的前提是执行了构造 器，所以构造器的循环依赖没法解决。

1. 基于构造器的循环依赖

Spring容器会将每一个正在创建的Bean 标识符放在一个“当前创建Bean池”中，Bean标识符在创建过程 中将一直保持在这个池中，因此如果在创建Bean过程中发现自己已经在“当前创建Bean池”里时将抛出 BeanCurrentlyInCreationException异常表示循环依赖;而对于创建完毕的Bean将从“当前创建Bean 池”中清除掉。

Spring容器先创建单例A，A依赖B，然后将A放在“当前创建Bean池”中，此时创建B,B依赖C ,然后将B放 在“当前创建Bean池”中,此时创建C，C又依赖A， 但是，此时A已经在池中，所以会报错，，因为在池中 的Bean都是未初始化完的，所以会依赖错误 ，(初始化完的Bean会从池中移除)

1. 基于setter属性的循环依赖

![image-20240115153727348](https://file1.kamacoder.com/i/bagu/image-20240115153727348.png)

我们结合上面那张图看，Spring先是用构造实例化Bean对象 ，创建成功后，Spring会通过以下代码提 前将对象暴露出来，此时的对象A还没有完成属性注入，属于早期对象，此时Spring会将这个实例化结 束的对象放到一个Map中，并且Spring提供了获取这个未设置属性的实例化对象引用的方法。 结合我 们的实例来看，当Spring实例化了A、B、C后，紧接着会去设置对象的属性，此时A依赖B，就会去Map 中取出存在里面的单例B对象，以此类推，不会出来循环的问题喽

### Spring可以配置多例对象吗

在Spring中，bean可以被定义为两种模式:prototype(多例)和singleton(单例)。所谓单例，就 是所有的请求都由一个对象来进行处理，比如我们常用的service和dao层的对象通常都是单例的，而多 例则指每个请求用一个新的对象来处理。

- singleton单例):只有一个共享的实例存在，所有对这个bean的请求都会返回这个唯一的实 例。不管new多少次，只生成一个对象。
- prototype(多例):对这个bean的每次请求都会创建一个新的bean实例，类似于new。

什么时候用单例？什么时候用多例？

 当对象含有可改变的状态时(更精确的说就是在实际应用中该状态会改变)，则多例，否则单例。就 如dao和service这两层的数据一般不会有相应的属性修改，所以可以考虑用单例，而Controller层会存 储很多需要操作的vo类(value object值对象)，此时这个对象的状态就会被改变，就要使用多例。

如何配置多例

- 单例模式:每个bean定义只生成一个对象实例,每次getBean请求获得的都是此实例
- 单例模式分为饿汉模式和懒汉模式

![image-20231204162346048](https://file1.kamacoder.com/i/bagu/image-20231204162346048.png)

spring bean 默认是单例默认，在对应.xml文件中的配置是:

singleton就是配置这个bean是否是单例的，如果不写，就是默认值true。

```
<bean id="user" class="..." scope="singleton"/>
```

- 多例模式:任何一个实例都是新的实例，调用getBean时,就new一个新实例

```
<bean id="user" class="..." scope="prototype"/>
```

### Spring中用到了哪些设计模式

- 工厂设计模式 : Spring使用工厂模式通过 BeanFactory、ApplicationContext 创建 bean 对象。
- 代理设计模式 : Spring AOP 功能的实现。
- 单例设计模式 : Spring 中的 Bean 默认都是单例的。
- 模板方法模式 : Spring 中 jdbcTemplate、hibernateTemplate 等以 Template 结尾的对数据库操 作的类，它们就使用到了模板模式。
- 包装器设计模式 : 我们的项目需要连接多个数据库，而且不同的客户在每次访问中根据需要会去访 问不同的数据库。这种模式让我们可以根据客户的需求能够动态切换不同的数据源。
- 观察者模式: Spring 事件驱动模型就是观察者模式很经典的一个应用。
- 适配器模式 :Spring AOP 的增强或通知(Advice)使用到了适配器模式、spring MVC 中也是用到了 适配器模式适配Controller。

### Spring事务的传播机制和隔离级别

**Spring**事务 事务是逻辑处理原子性的保证手段，通过使用事务控制，可以极大的避免出现逻辑处理失败导致的脏数据等问题。 事务最重要的两个特性，是事务的传播级别和数据隔离级别。传播级别定义的是事务的控制范围，事务 隔离级别定义的是事务在数据库读写方面的控制范围。

#### 事务传播机制

1)**PROPAGATION_REQUIRED** ，Spring默认的事务传播级别，使用该级别的特点是，如果上下文中 已经存在事务，那么就加入到事务中执行，如果当前上下文中不存在事务，则新建事务执行。所以这个 级别通常能满足处理大多数的业务场景。

2)**PROPAGATION_SUPPORTS** ，从字面意思就知道，supports，支持，该传播级别的特点是，如果 上下文存在事务，则支持事务加入事务，如果没有事务，则使用非事务的方式执行。所以说，并非所有 的包在transactionTemplate.execute中的代码都会有事务支持。这个通常是用来处理那些并非原子性 的非核心业务逻辑操作。应用场景较少。

3)**PROPAGATION_MANDATORY** ， 该级别的事务要求上下文中必须要存在事务，否则就会抛出异 常!配置该方式的传播级别是有效的控制上下文调用代码遗漏添加事务控制的保证手段。比如一段代码 不能单独被调用执行，但是一旦被调用，就必须有事务包含的情况，就可以使用这个传播级别。

4)**PROPAGATION_REQUIRES_NEW** ，从字面即可知道，new，每次都要一个新事务，该传播级别的 特点是，每次都会新建一个事务，并且同时将上下文中的事务挂起，执行当前新建事务完成以后，上下 文事务恢复再执行。

这是一个很有用的传播级别，举一个应用场景:现在有一个发送100个红包的操作，在发送之前，要做 一些系统的初始化、验证、数据记录操作，然后发送100封红包，然后再记录发送日志，发送日志要求 100%的准确，如果日志不准确，那么整个父事务逻辑需要回滚。 怎么处理整个业务需求呢?就是通过这个PROPAGATION_REQUIRES_NEW 级别的事务传播控制就可以 完成。发送红包的子事务不会直接影响到父事务的提交和回滚。

5)**PROPAGATION_NOT_SUPPORTED** ，这个也可以从字面得知，not supported ，不支持，当前级 别的特点就是上下文中存在事务，则挂起事务，执行当前逻辑，结束后恢复上下文的事务。

这个级别有什么好处?可以帮助你将事务极可能的缩小。我们知道一个事务越大，它存在的⻛险也就越 多。所以在处理事务的过程中，要保证尽可能的缩小范围。比如一段代码，是每次逻辑操作都必须调用 的，比如循环1000次的某个非核心业务逻辑操作。这样的代码如果包在事务中，势必造成事务太大，导 致出现一些难以考虑周全的异常情况。所以这个事务这个级别的传播级别就派上用场了。用当前级别的 事务模板抱起来就可以了。

6)**PROPAGATION_NEVER** ，该事务更严格，上面一个事务传播级别只是不支持而已，有事务就挂 起，而PROPAGATION_NEVER传播级别要求上下文中不能存在事务，一旦有事务，就抛出runtime异 常，强制停止执行!这个级别上辈子跟事务有仇。

7)**PROPAGATION_NESTED** ，字面也可知道，nested，嵌套级别事务。该传播级别特征是，如果上 下文中存在事务，则嵌套事务执行，如果不存在事务，则新建事务

#### 事务隔离级别

1、**Serializable** :最严格的级别，事务串行执行，资源消耗最大;

2、**REPEATABLE READ** :保证了一个事务不会修改已经由另一个事务读取但未提交(回滚)的数据。 避免了“脏读取”和“不可重复读取”的情况，但是带来了更多的性能损失。

3、**READ COMMITTED** :大多数主流数据库的默认事务等级，保证了一个事务不会读到另一个并行事务 已修改但未提交的数据，避免了“脏读取”。该级别适用于大多数系统。

4、**Read Uncommitted** :保证了读取过程中不会读取到非法数据。 上面的解释其实每个定义都有一些拗口，其中涉及到几个术语:脏读、不可重复读、幻读。

这里解释一下: 脏读 :所谓的脏读，其实就是读到了别的事务回滚前的脏数据。比如事务B执行过程中修改了数据X，在

未提交前，事务A读取了X，而事务B却回滚了，这样事务A就形成了脏读。

不可重复读 :不可重复读字面含义已经很明了了，比如事务A首先读取了一条数据，然后执行逻辑的时 候，事务B将这条数据改变了，然后事务A再次读取的时候，发现数据不匹配了，就是所谓的不可重复读 了。

幻读 :小的时候数手指，第一次数十10个，第二次数是11个，怎么回事?产生幻觉了? 幻读也是这样子，事务A首先根据条件索引得到10条数据，然后事务B改变了数据库一条数据，导致也 符合事务A当时的搜索条件，这样事务A再次搜索发现有11条数据了，就产生了幻读。

#### 分布式事务

在分布式的高并发环境下，对于核心业务逻辑的检查，要采用加锁机制。 比如事务开启需要读取一条数据进行验证，然后逻辑操作中需要对这条数据进行修改，最后提交。 这样的一个过程，如果读取并验证的代码放到事务之外，那么读取的数据极有可能已经被其他的事务修 改，当前事务一旦提交，又会重新覆盖掉其他事务的数据，导致数据异常。 所以在进入当前事务的时候，必须要将这条数据锁住，使用for update就是一个很好的在分布式环境下 的控制手段。

一种好的实践方式是使用编程式事务而非生命式，尤其是在较为规模的项目中。对于事务的配置，在代 码量非常大的情况下，将是一种折磨，而且人肉的方式，绝对不能避免这种问题。 将DAO保持针对一张表的最基本操作，然后业务逻辑的处理放入manager和service中进行，同时使用 编程式事务更精确的控制事务范围。 特别注意的，对于事务内部一些可能抛出异常的情况，捕获要谨慎，不能随便的catch Exception 导致 事务的异常被吃掉而不能正常回滚。

### 发表评论

感觉这章内容太多，要些时间去消化，底层不容易理解。

好多错别字

