# SpringBoot

## Spring Boot Starter有什么用？

Spring Boot Starter的作用是简化和加速项目的配置和依赖管理。

- Spring Boot Starter可以理解为一种预配置的模块，它封装了特定功能的依赖项和配置, ，开发者只需引入相关的Starter依赖，无需手动配置大量的参数和依赖项。
- Starter还管理了相关功能的依赖项，包括其他Starter和第三方库，确保它们能够良好地协同工作，避免版本冲突和依赖问题。
- Spring Boot Starter的设计使得应用可以通过引入不同的Starter来实现模块化的开发。每个Starter都关注一个特定的功能领域，如数据库访问、消息队列、Web开发等。
- 开发者可以创建自定义的Starter，以便在项目中共享和重用特定功能的配置和依赖项。

## SpringBoot的常用注解

```
1. @SpringBootApplication：
用于标识主应用程序类，通常位于项目的顶级包中。这个注解包含了@Configuration、@EnableAutoConfiguration和@ComponentScan。

2. @Controller：
用于标识类作为Spring MVC的Controller。

3. @RestController：
类似于@Controller，但它是专门用于RESTful Web服务的。它包含了@Controller和@ResponseBody。

4. @RequestMapping：
用于将HTTP请求映射到Controller的处理方法。可以用在类级别和方法级别。

5. @Autowired：
用于自动注入Spring容器中的Bean，可以用在构造方法、字段、Setter方法上。

6. @Service：
用于标识类作为服务层的Bean。

7. @Repository：
用于标识类作为数据访问层的Bean，通常用于与数据库交互。

8. @Component：
通用的组件注解，用于标识任何Spring托管的Bean。

9. @Configuration：
用于定义配置类，类中可能包含一些@Bean注解用于定义Bean。

10. @EnableAutoConfiguration：
用于启用Spring Boot的自动配置机制，根据项目的依赖和配置自动配置Spring应用程序。

11. @Value：
用于从属性文件或配置中读取值，将值注入到成员变量中。

12.@Qualifier：
与@Autowired一起使用，指定注入时使用的Bean名称。

13. @ConfigurationProperties：
用于将配置文件中的属性映射到Java Bean。

14. @Profile：
用于定义不同环境下的配置，可以标识在类或方法上。

15. @Async：
用于将方法标记为异步执行。
```

## SpringBoot的启动流程

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/spring_boot.png)

## Spring Boot自动装配的过程

使用Spring Boot时，我们只需引入对应的Starters，Spring Boot启动时便会自动加载相关依赖，配置相应的初始化参数，以最快捷、简单的形式对第三方软件进行集成，这便是Spring Boot的自动配置功能。Spring Boot实现该运作机制锁涉及的核心部分如下图所示：

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/4C6D51AEA1E10E3717A8BE4AE88B6F79.jpeg)

整个自动装配的过程是：Spring Boot通过@EnableAutoConfiguration注解开启自动配置，加载spring.factories中注册的各种AutoConfiguration类，当某个AutoConfiguration类满足其注解@Conditional指定的生效条件（Starters提供的依赖、配置或Spring容器中是否存在某个Bean等）时，实例化该AutoConfiguration类中定义的Bean（组件等），并注入Spring容器，就可以完成依赖框架的自动配置。

## SpringBoot如何在启动时设置初始化数据

在实际开发中，我们一般都会在配置文件(application.properties或者application.yml)中配置各个

项目中集成的属性值，来进行各个组件的设置，比如配口:server.port=8080，但是在开发中我们需要配置业务得属性值来添加到springboot容器中，那么这个时候我们应该怎么办呢?

解决方案:

- **实现ApplicationRunner 接口**
- **实现 CommandLineRunner接口**

默认情况下ApplicationRunner比CommandLineRunner 先执行

所有CommandLineRunner/ApplicationRunner的执行时点是在SpringBoot应用的 ApplicationContext完全初始化开始工作之后， callRunners() 可以看出是run方法内部最后一 个调用的方法(可以认为是main方法执行完成之前最后一步)

只要存在于当前SpringBoot应用的ApplicationContext中的任何 CommandLineRunner/ApplicationRunner，都会被加载执行(不管你是手动注册还是自动扫描去 Ioc容器) 使用@Order注解可以设置加载的顺序 一般情况我们只需要使用一个接口来加载初始化数据即可

### 发表评论

KamaCoder663388

10/17/25, 11:19 PM

springboot3已经不是用spring.factories完成自动装配了，改成了org.springframework.boot.autoconfigure.AutoConfiguration.imports