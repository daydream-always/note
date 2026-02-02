#  Java集合面试题

## 概念

### 数组与集合区别，用过哪些集合？

数组和集合的区别：

1. 数组是固定长度的数据结构，一旦创建长度就无法改变，而集合是动态长度的数据结构，可以根据需要动态增加或减少元素。
2. 数组可以包含基本数据类型和对象，而集合只能包含对象。
3. 数组可以直接访问元素，而集合需要通过迭代器或其他方法访问元素。

我用过的一些 Java 集合类：

1. **ArrayList：** 动态数组，实现了List接口，支持动态增长。
2. **LinkedList：** 双向链表，也实现了List接口，支持快速的插入和删除操作。
3. **HashMap：** 基于哈希表的Map实现，存储键值对，通过键快速查找值。
4. **HashSet：** 基于HashMap实现的Set集合，用于存储唯一元素。
5. **TreeMap：** 基于红黑树实现的有序Map集合，可以按照键的顺序进行排序。
6. **LinkedHashMap：** 基于哈希表和双向链表实现的Map集合，保持插入顺序或访问顺序。
7. **LinkedHashMap：** 基于哈希表和双向链表实现的Map集合，保持插入顺序或访问顺序。

### 说说Java中的集合？

### Java中的线程安全的集合是什么？

### Collections和Collection的区别

### 集合遍历的方法有哪些？



## List

讲一下java里面list的几种实现，几种实现有什么不同？

list可以一边遍历一边修改元素吗？

list如何快速删除某个指定下标的元素？

Arraylist 和 LinkedList的区别，哪个集合是线程安全的？

arraylist 和 vector 区别是什么?



ArrayList线程安全吗？把ArrayList变成线程安全有哪些方法？

为什么ArrayList不是线程安全的，具体来说是哪里不安全?

ArrayList 和 LinkedList 的应用场景？

ArrayLlist的扩容机制说一下

线程安全的 List，CopyonWriteArraylist是如何实现线程安全的？

List里面填基本数据类型为什么会报错？

List和数组如何互相转换?

## Set

Java 集合中 List 和 Set区别是什么？

如何对Set排序？

Set集合有什么特点？如何实现key无重复的?

有序的Set是什么？记录插入顺序的集合是什么?

## Map

如何对map进行快速遍历？

HashMap实现原理介绍一下?

HashMap链表发生转换后为什么不用平衡二叉树？

了解的哈希冲突解决方法有哪些?

HashMap是线程安全的吗？



在 Java 的 hashmap 中 get一个元素的过程是怎样的？

hashmap的put过程介绍一下

HashMap的put(key,val) 和 get(key)过程

hashmap 调用get方法一定安全吗？

HashMap一般用什么做Key？为啥String适合做Key呢?



为什么HashMap要用红黑树而不是平衡二叉树？

hashmap的key可以为 null 吗?

重写HashMap的equal和hashcode方法需要注意什么？

重写HashMap的equal方法不当会出现什么问题？

列举HashMap在多线程下可能会出现的问题？



HashMap的扩容机制介绍一下

HashMap的大小为什么是2的n次方大小呢?

往hashmap存20个元素，会扩容几次?

说说hashmap的负载因子

Hashmap和Hashtable有什么不一样的？Hashmap一般怎么用？



ConcurrentHashMap怎么实现的？

分段锁怎么加锁的?

分段锁是可重入的吗？

已经用了synchronized，为什么还要用CAS呢?

ConcurrentHashMap用了悲观锁还是乐观锁?



HashTable 底层实现原理是什么?

HashTable线程安全是怎么实现的？

hashtable 和 concurrentHashMap有什么区别

说一下HashMap 和 Hashtable、ConcurrentMap的区别