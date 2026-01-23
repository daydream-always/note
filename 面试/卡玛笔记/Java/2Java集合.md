# Java 集合

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/_Javarongqisiweidaotu_posper.png)

Sting 导图

![img](https://file1.kamacoder.com/i/bagu/_StringTable_posper.png)

List导图

![img](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/_Java_List_sufeng.png)

## ArrayList 和 Array 有什么区别？ArrayList 和 LinkedList 的区别是什么？（考点：底层数据结构、性能差异）【简单】

### ArrayList 和 Array 的区别：

1. 类型：
   - `Array` 是Java中的一个基本数据结构，可以存储基本类型数据或对象引用。
   - `ArrayList` 是Java集合框架中的一个类，实现了`List`接口，只能存储对象引用。
2. 大小可变性：
   - `Array` 的大小在创建时确定，一旦创建就无法改变。
   - `ArrayList` 的大小是动态的，可以根据需要自动扩容。
3. 性能：
   - 访问元素时，`Array` 通常比 `ArrayList` 快，因为 `Array` 直接通过索引访问。
   - `ArrayList` 在添加或删除元素时可能更高效，尤其是在数组末尾操作时。
4. 泛型支持：
   - `Array` 可以是泛型的，也可以不是。
   - `ArrayList` 必须是泛型的，提供了类型安全。
5. 方法：
   - `Array` 提供的操作比较有限，主要是基本的数据访问和修改。
   - `ArrayList` 提供了更多的方法，如添加、删除、迭代等。

### ArrayList 和 LinkedList 的区别：

1. 数据结构：
   - `ArrayList` 是基于动态数组实现的，适合随机访问。
   - `LinkedList` 是基于双向链表实现的，适合插入和删除操作。
2. 性能：
   - `ArrayList` 在随机访问元素时更快，因为它是通过索引直接访问。
   - `LinkedList` 在插入和删除元素时更快，因为它不需要移动其他元素。
3. 内存占用：
   - `ArrayList` 由于是基于数组，它在存储大量元素时可能会更高效。
   - `LinkedList` 每个元素都需要额外的内存空间来存储前驱和后继元素的引用。
4. 扩容：
   - `ArrayList` 在元素数量达到容量时需要扩容，这个过程涉及到创建新数组和复制旧数组元素。
   - `LinkedList` 不需要扩容，因为它通过链接节点来增加元素。
5. 功能：
   - `ArrayList` 提供了更快的随机访问和更高效的内存使用。
   - `LinkedList` 提供了更高效的插入和删除操作，并且可以更有效地实现栈和队列等数据结构。

在选择`ArrayList`还是`LinkedList`时，应该根据具体的应用场景和性能需求来决定。如果频繁进行随机访问操作，`ArrayList`是更好的选择；如果频繁进行插入和删除操作，`LinkedList`可能更合适。

## HashSet是如何保证元素不重复的？（考点：哈希算法、equals和hashCode方法）【简单】

**HashSet** 是Java集合框架中的一个实现了 `Set` 接口的类，用于存储不允许重复的元素。HashSet通过以下机制来确保元素的唯一性：

1. 基于哈希表实现：
   - HashSet内部实际上是通过一个 `HashMap` 来存储元素。每个存储在HashSet中的元素作为HashMap的键（key），对应的值（value）是一个固定的常量对象（通常是一个私有的 `PRESENT` 对象）。
2. 使用`hashCode()`和`equals()`方法：
   - **`hashCode()`方法**：当向HashSet添加一个元素时，首先调用该元素的 `hashCode()` 方法来计算其哈希值。这个哈希值决定了元素在哈希表中的存储位置（即桶的位置）。
   - **`equals()`方法**：在确定元素存储位置后，HashSet会检查该位置是否已经存在一个具有相同哈希值的元素。如果存在，会调用该元素的 `equals()` 方法来判断两个元素是否相等。如果两个元素相等，则认为该元素已经存在，添加操作失败；否则，元素被添加到哈希表中。
3. 避免重复：
   - 通过上述的 `hashCode()` 和 `equals()` 方法，HashSet可以快速检测和防止重复元素的添加，确保每个元素在Set中是唯一的。

## List接口和Set接口的区别是什么？（考点：接口特性、集合类型）【简单】

- 1、是否允许元素重复
- 2、是否保证元素的插入顺序
- 3、元素位置访问：
  - List提供了按照索引访问元素的方法，如：get（），Set没有提供这样的方法

## Java中的HashMap了解吗？HashMap 的底层实现是什么?（考点：底层数据结构）【简单】

HashMap存储数据采用了哈希表的结构，底层使用 一维数组+单向链表+红黑树 进行key-value数据的存储

- 红黑树出现的时机：当某个索引位置i上的链表的长度达到8，且数组的长度超过64时，此索引位置上的元素要从单向链表改为红黑树。--->原因：红黑树进行put()/get()/remove()操作的时间复杂度时o(logn)，比单向链表的时间复杂度o(n)好。
- 红黑树退化成单向链表：如果索引i位置是红黑树的结构，当不断删除元素的情况下，当前索引i位置上的元素的个数低于6时，要从红黑树改为单向链表。

![image.png](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/9cca7bdf-b107-41a5-bef2-7dfd011e6f11.png)

## HashMap 的扩容机制是怎样的？（考点：数组复制、内存分配）【简单】

简单来说，`HashMap` 的扩容机制是这样的：

1. **触发条件：** 当 `HashMap` 中存储的键值对数量（`size`）超过了一个**阈值**时，就会触发扩容。这个阈值通常是 `当前容量 * 加载因子（loadFactor，默认0.75）`。
2. **扩容过程：**
   - **创建新数组：** 创建一个**新的、更大的数组**，通常是原数组容量的**两倍**。
   - **重新计算哈希与迁移 (Rehashing)：** 遍历旧数组中的**每一个**键值对，**重新计算**它们在新数组中的位置（因为数组长度变了，哈希映射的索引也会变），然后将它们放入新数组的对应位置。这个过程很重要，因为同一个元素在新旧数组中的桶（bucket）索引很可能不同。
3. **目的：**
   - **减少哈希冲突：** 通过扩大数组容量，使得键值对能更均匀地分布，从而减少哈希冲突，保持 `HashMap` 的查找、插入等操作的效率（接近 O(1)）。
   - **保持性能：** 如果不扩容，当元素越来越多时，链表（或红黑树）会越来越长，性能会下降。

简单讲就是：**装不下了（或快装不下了，为了性能） -> 造个更大的新家 -> 把旧家里的东西重新摆放到新家里。**

## TreeMap和HashMap的区别是什么？（考点：底层数据结构、排序特性）【简单】

- 实现原理：
  - HashMap基于hash表实现，计算键的hash值来确定存储位置。默认情况下，hashmap不保证元素的存储顺序，从java8之后，h链表过长会转化为红黑树
  - TreeMap基于红黑树实现，是一种自平衡二叉查找树，能够保持键的有序性，因此，TreeMap中的元素总是按照键的自然顺序或者创建时提供的Comparator进行排序。
- 性能特点：
  - HashMap查找、插入、删除的平均复杂度均为O（1）
  - TreeMap查找、插入、删除的时间复杂度均为O（logn）

## HashSet 和 HashMap 的区别？（考点：底层数据结构）【简单】

1. **存储内容不同：**
   - `HashSet`：存储的是**不重复的单个元素**（对象）。它主要用来快速检查某个元素是否存在于集合中。
   - `HashMap`：存储的是**键值对 (Key-Value pairs)**。它用来根据键快速查找对应的值。
2. **内部实现关系：**
   - `HashSet` **内部实际上是基于 `HashMap` 实现的**。当你向 `HashSet` 添加一个元素时，这个元素会作为 `HashMap` 的键 (Key)，而对应的值 (Value) 则是一个固定的虚拟对象 (dummy Object)。

简单说：

- `HashSet` 就像一个只有“物品清单”的集合，只关心物品本身在不在。
- `HashMap` 像一个“字典”或“名册”，每个“词条”（键）都有对应的“解释”（值）。

所以，如果你只需要存储一堆不重复的东西，用 `HashSet`；如果你需要给这些东西关联额外的信息，用 `HashMap`。

## HashMap 和 HashTable 的区别？（考点：底层数据结构）【简单】

简要回答 `HashMap` 和 `Hashtable` 的主要区别：

1. **线程安全性：**
   - `HashMap`：**非线程安全**。
   - `Hashtable`：**线程安全**。它的方法大多是 `synchronized` 的，并发性能较低。
2. **null 键和 null 值：**
   - `HashMap`：**允许**一个 `null` 键和多个 `null` 值。
   - `Hashtable`：**不允许** `null` 键，也**不允许** `null` 值（会抛出 `NullPointerException`）。
3. **性能：**
   - `HashMap`：由于非线程安全，单线程下性能通常比 `Hashtable` 好。
   - `Hashtable`：由于方法同步，多线程开销较大，性能通常较低。在需要线程安全的场景下，更推荐使用 `ConcurrentHashMap`。
4. **父类：**
   - `HashMap`：继承自 `AbstractMap` 类。
   - `Hashtable`：继承自 `Dictionary` 类（一个比较老的类）。

**总结：** `Hashtable` 是一个遗留的线程安全类，性能较差。如果需要线程安全，**推荐使用 `ConcurrentHashMap`**。如果不需要线程安全，**使用 `HashMap`**。

## HashMap的put方法的流程是怎样的？

### 简要回答

1. 计算哈希值和索引：
   - 对传入的 `key` 计算哈希值，并通过扰动函数和位运算确定其在底层数组中的**存储位置**（索引）。
2. 判断位置是否为空：
   - 如果该索引位置**为空**，直接创建新结点并放入。
   - 如果该索引位置**不为空**（发生**哈希冲突**），则需要进一步处理。
3. 处理哈希冲突：
   - **Key已存在：** 如果链表/红黑树中已存在相同的 `key`，则放弃添加元素，更新其对应的 `value`，并返回旧值。
   - **Key不存在：** 在链表末尾添加新结点。
   - **链表转红黑树：** 如果链表长度达到阈值（默认为 8），会尝试将链表转换为红黑树，以提高查找效率。
4. 扩容检查：
   - 元素添加成功后，会检查 `HashMap` 的当前元素数量 `size` 是否超过了扩容阈值 `threshold`。如果超过，则进行扩容操作，将底层数组的容量翻倍，并重新计算所有元素的索引位置。

------

### 详细回答（结合 JDK 17.0 源码）

#### HashMap源码解读

1. `HashMap` 的 `put` 方法内部调用了 `putVal` 方法。 `putVal` 方法的源码流程如下：

   ```
   final V putVal(int hash, K key, V value, boolean onlyIfAbsent, boolean evict) {
       Node<K,V>[] tab; Node<K,V> p; int n, i; // 定义局部变量：tab(当前哈希表数组), p(当前索引位置的第一个结点), n(数组长度), i(计算出的索引)
   
       // 1. 检查并初始化/扩容哈希表数组
       // 如果当前哈希表为空或长度为0，说明是第一次put或者之前被清空了，需要进行初始化或扩容
       if ((tab = table) == null || (n = tab.length) == 0)
           n = (tab = resize()).length; // 调用 resize() 方法进行初始化或扩容，并获取新的数组长度
   
       // 2. 计算索引位置并尝试直接插入
       // (n - 1) & hash 是计算索引位置的核心逻辑，利用位运算替代取模，效率更高。
       // 如果计算出的索引位置 tab[i] 为空，则直接创建新结点并放入
       if ((p = tab[i = (n - 1) & hash]) == null)
           tab[i] = newNode(hash, key, value, null); // null 表示没有下一个结点
       else {
           // 3. 处理哈希冲突（索引位置不为空）
           Node<K,V> e; K k; // e 用于存储找到的匹配结点，k 用于存储当前结点的key
   
           // 3.1 检查链表/红黑树的第一个结点是否就是目标key
           // 如果第一个结点的哈希值和key都匹配（key相同或equals），则 e 指向该结点
           if (p.hash == hash && ((k = p.key) == key || (key != null && key.equals(k))))
               e = p;
           // 3.2 如果第一个结点是红黑树结点（说明该桶已树化）
           else if (p instanceof TreeNode)
               // 调用红黑树的 putTreeVal 方法进行插入或更新
               e = ((TreeNode<K,V>)p).putTreeVal(this, tab, hash, key, value);
           // 3.3 如果是链表（非红黑树）
           else {
               // 遍历链表，查找是否存在相同的key
               for (int binCount = 0; ; ++binCount) { // binCount 统计链表长度
                   if ((e = p.next) == null) { // 如果遍历到链表末尾，没有找到相同key
                       p.next = newNode(hash, key, value, null); // 在链表末尾添加新结点
                       // 检查链表长度是否达到树化阈值（TREEIFY_THRESHOLD - 1），如果达到，则尝试树化
                       // -1 是因为 binCount 是从0开始计数，且当前结点是第 binCount+1 个
                       if (binCount >= TREEIFY_THRESHOLD - 1)
                           treeifyBin(tab, hash); // 尝试将链表转换为红黑树
                       break; // 插入完成，跳出循环
                   }
                   // 如果找到相同key的结点
                   if (e.hash == hash && ((k = e.key) == key || (key != null && key.equals(k))))
                       break; // 找到，跳出循环，e 指向该结点
                   p = e; // p 移动到下一个结点，继续遍历
               }
           }
   
           // 4. 更新已存在的key的value
           // 如果 e 不为 null，说明在链表或红黑树中找到了与新key相同的旧key
           if (e != null) { // existing mapping for key
               V oldValue = e.value; // 保存旧值
               // 如果 onlyIfAbsent 为 false (put方法默认是false，表示总是更新)
               // 或者旧值为 null (表示旧key存在但value是null，也允许更新)
               if (!onlyIfAbsent || oldValue == null)
                   e.value = value; // 更新value
               afterNodeAccess(e); // 钩子方法，用于LinkedHashMap等
               return oldValue; // 返回旧值
           }
       }
   
       // 5. 插入成功后的通用处理
       ++modCount; // 结构修改次数加1，用于迭代器快速失败
       if (++size > threshold) // 插入后，如果当前元素数量 size 超过了扩容阈值 threshold
           resize(); // 调用 resize() 方法进行扩容
       afterNodeInsertion(evict); // 钩子方法，用于LinkedHashMap等
       return null; // 返回null表示没有旧值被替换
   }
   ```

2. **`resize()` 方法的流程（扩容）：** 当 `size` 超过 `threshold` 或者 `HashMap` 首次初始化时，会调用 `resize()` 方法。

   ```
   final Node<K,V>[] resize() {
       Node<K,V>[] oldTab = table; // 旧的哈希表数组
       int oldCap = (oldTab == null) ? 0 : oldTab.length; // 旧的容量
       int oldThr = threshold; // 旧的扩容阈值
       int newCap, newThr = 0; // 新的容量和新的扩容阈值
   
       // 1. 计算新的容量和阈值
       if (oldCap > 0) { // 如果旧容量大于0（非首次初始化）
           if (oldCap >= MAXIMUM_CAPACITY) { // 如果旧容量已达到最大容量
               threshold = Integer.MAX_VALUE; // 阈值设为最大值，不再扩容
               return oldTab; // 返回旧表
           }
           // 新容量为旧容量的两倍，且不超过最大容量
           // 新阈值为旧阈值的两倍
           else if ((newCap = oldCap << 1) < MAXIMUM_CAPACITY && oldCap >= DEFAULT_INITIAL_CAPACITY)
               newThr = oldThr << 1; // double threshold
       }
       // 首次初始化，但指定了初始容量（initial capacity was placed in threshold）
       else if (oldThr > 0)
           newCap = oldThr;
       // 首次初始化，使用默认值
       else {
           newCap = DEFAULT_INITIAL_CAPACITY; // 默认初始容量 16
           newThr = (int)(DEFAULT_LOAD_FACTOR * DEFAULT_INITIAL_CAPACITY); // 默认加载因子 0.75 * 16 = 12
       }
   
       // 2. 确保新阈值被正确计算
       if (newThr == 0) {
           float ft = (float)newCap * loadFactor;
           newThr = (newCap < MAXIMUM_CAPACITY && ft < (float)MAXIMUM_CAPACITY ? (int)ft : Integer.MAX_VALUE);
       }
       threshold = newThr; // 更新 HashMap 的扩容阈值
   
       // 3. 创建新的哈希表数组
       @SuppressWarnings({"rawtypes","unchecked"})
       Node<K,V>[] newTab = (Node<K,V>[])new Node[newCap];
       table = newTab; // 将 HashMap 的内部数组指向新创建的数组
   
       // 4. 将旧表中的元素转移到新表
       if (oldTab != null) {
           for (int j = 0; j < oldCap; ++j) { // 遍历旧表的每个桶
               Node<K,V> e;
               if ((e = oldTab[j]) != null) { // 如果当前桶不为空
                   oldTab[j] = null; // 清空旧桶，帮助GC
                   if (e.next == null) // 如果桶中只有一个结点
                       newTab[e.hash & (newCap - 1)] = e; // 直接将其放到新表中对应的位置
                   else if (e instanceof TreeNode) // 如果是红黑树
                       ((TreeNode<K,V>)e).split(this, newTab, j, oldCap); // 调用红黑树的split方法进行分裂
                   else { // 如果是链表（非红黑树）
                       // 链表拆分优化：将链表中的结点分成两部分
                       // 基于 (e.hash & oldCap) == 0 判断，将结点分配到原索引或新索引 (原索引 + oldCap)
                       Node<K,V> loHead = null, loTail = null; // 存储在新索引 j 的链表头尾
                       Node<K,V> hiHead = null, hiTail = null; // 存储在新索引 j + oldCap 的链表头尾
                       Node<K,V> next;
                       do {
                           next = e.next;
                           // 关键优化：判断结点的哈希值在旧容量二进制表示下，最高位是否为0
                           // 如果为0，则在新数组中的索引位置不变 (j)
                           // 如果为1，则在新数组中的索引位置变为 j + oldCap
                           if ((e.hash & oldCap) == 0) {
                               if (loTail == null)
                                   loHead = e;
                               else
                                   loTail.next = e;
                               loTail = e;
                           }
                           else {
                               if (hiTail == null)
                                   hiHead = e;
                               else
                                   hiTail.next = e;
                               hiTail = e;
                           }
                       } while ((e = next) != null); // 继续遍历链表
                       // 将拆分后的两个链表分别挂载到新数组的对应位置
                       if (loTail != null) {
                           loTail.next = null;
                           newTab[j] = loHead;
                       }
                       if (hiTail != null) {
                           hiTail.next = null;
                           newTab[j + oldCap] = hiHead;
                       }
                   }
               }
           }
       }
       return newTab; // 返回新的哈希表数组
   }
   ```

#### `putVal` 的核心流程：

1. 计算所添加元素的哈希值和索引值

   - 当调用 `put(key, value)` 时，首先会对 `key` 进行哈希计算。`HashMap` 内部会调用 `key.hashCode()` 获取原始哈希值，然后通过一个**扰动函数**对其进行处理，以减少哈希冲突的概率，使哈希值分布更均匀。最终，这个处理后的哈希值（`int hash`）会被传递给 `putVal` 方法。

   - 如果 `HashMap` 尚未初始化（`table` 为 `null`）或者其容量为 0，会首先调用 `resize()` 方法进行初始化。`resize()` 方法会创建一个默认容量（16）的数组，或根据构造函数指定的容量进行初始化。

   - 接着，通过位运算确定 `key` 在数组中的 **索引位置 `i`** ，代码如下：

     ```
     // 计算索引位置
     if ((p = tab[i = (n - 1) & hash]) == null) // (n - 1) & hash 是核心的索引计算逻辑
         tab[i] = newNode(hash, key, value, null); // 如果该位置为空，直接插入新结点
     ```

   - 这里的 `(n - 1) & hash` 是一个高效的位运算，等价于 `hash % n`，但仅适用于 `n` 是 2 的幂次方的情况。它将哈希值映射到数组的有效索引范围内。如果计算出的索引位置 `tab[i]` 当前为 `null`，说明该桶是空的，没有发生哈希冲突，此时会直接创建一个新的 `Node` 并将其放入该位置。

2. 发生哈希冲突时的处理情况

   - 如果 `tab[i]` 不为 `null`，则表示发生了**哈希冲突**，需要进一步处理。
   - **检查首结点：** 此时，HashMap 会首先判断 **`tab[i]`** 的**第一个结点** `p` 是否与待插入的 `key` **相同**（通过哈希值和 `equals()` 方法判断）。如果相同，则同为Node<K,V>类型的 `e` 会指向 `p`，后续会更新它的 `value`。
   - **红黑树处理：** 如果 `p` 是 `TreeNode` 类型（表示该桶已经转换为**红黑树**），则会调用 `TreeNode` 的 `putTreeVal` 方法，以红黑树的逻辑进行插入或更新操作，保证 **O(logN)** 的查找效率。
   - **链表处理：** 如果是**普通链表**，则会遍历链表。在遍历过程中，如果找到与待插入 `key` 相同的结点，则 `e` 指向该结点，并在后续更新它的 `value`，用新值替换旧值。如果遍历到链表末尾仍未找到相同 `key`，则在链表的末尾添加新的 `Node`。
   - **树化检查：** 在链表末尾添加新结点后，会立即检查当前链表的长度（`binCount`）。如果链表长度达到 `TREEIFY_THRESHOLD` (默认为 8)，并且数组容量也满足树化条件（默认为 64），则会调用 `treeifyBin` 方法，将整个链表转换为红黑树，以优化后续的查找性能。
   - **关于value更新的决策：** 对于有相同key的情况，HashMap 根据 `onlyIfAbsent` 参数的设置，决定是否更新 `key` 对应的 `value`。默认情况下 (`onlyIfAbsent` 为 `false`)，旧值会被新值覆盖。

3. 扩容检查

   - 无论是否发生哈希冲突，只要成功插入了一个新的键值对（即 `e` 为 `null`，表示没有替换旧值），`HashMap` 的 `size` 都会增加。所以在 `putVal` 方法的最后，HashMap 会进行扩容检查。代码如下：

     ```
     // 插入成功后的通用处理
     ++modCount; // 结构修改次数加1
     if (++size > threshold) // 如果当前元素数量超过扩容阈值
         resize(); // 调用 resize() 方法进行扩容
     // ... (afterNodeInsertion 钩子方法)
     return null; // 返回null表示没有旧值被替换
     ```

   - `modCount` 会增加，用于 `Iterator` 的快速失败机制。

   - `size` 也会增加。但如果 `size` 超过了 `threshold`（扩容阈值，通常是 `容量 * 加载因子`），就会触发 `resize()` 方法。

------

### 知识图解

1. HashMap解决哈希冲突的方案，如下图所示：

    

   ![image](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/Collection_HashMap_solve_collision.jpg)

2. HashMap的底层数据结构，如下图所示：

    

   ![image](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/Collection_HashMap_put.jpg)

3. HashMap的put方法的流程图如下：

    

   ![image](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/Collection_HashMap_put_flowchart.jpg)

------

### 知识拓展

1. 面试官可能的追问 1：在 `resize()` 方法中，为什么链表在扩容时，元素只会分到两个位置（原位置 `j` 或 `j + oldCap`），而不是完全重新计算哈希值？这种优化是如何实现的？
   - 这种优化是基于哈希值和扩容特性实现的。当容量从 `oldCap` 翻倍到 `newCap` (`2 * oldCap`) 时，一个元素在新数组中的索引位置只可能保持不变或变为 `原索引 + oldCap`。
   - 这是因为 `newCap` 总是 `oldCap` 的两倍，且两者都是 2 的幂。通过检查元素的 `hash` 值在 `oldCap` 位上的二进制位是 0 还是 1 (`(e.hash & oldCap) == 0`)，就可以直接判断它应该去新数组的哪个位置，避免了重新计算 `(newCap - 1) & hash`，从而大幅提高了扩容时链表元素重新分配的效率。
2. 面试官可能的追问 2：`putVal` 方法中，`onlyIfAbsent` 和 `evict` 这两个参数的作用是什么？`afterNodeAccess` 和 `afterNodeInsertion` 钩子方法又是用来做什么的？
   - **`onlyIfAbsent`：** 这是一个布尔参数，控制是否只在键不存在时才插入。如果为 `true`，则当 `key` 已存在时，不会更新其 `value`；如果为 `false` (默认值)，则会更新 `value`。
   - **`evict`：** 这是一个布尔参数，通常用于 `LinkedHashMap`。它指示在插入结点后是否需要执行逐出策略（例如删除最不常用的结点）。对于 `HashMap` 本身，这个参数通常不发挥作用。
   - **`afterNodeAccess` 和 `afterNodeInsertion`：** 这些是**钩子方法 (hook methods)** ，它们是 `HashMap` 提供给其子类（如 `LinkedHashMap`）进行扩展的。 **`afterNodeAccess`** 是在**结点被访问**（如 `get` 或 `put` 更新值）后调用，`LinkedHashMap` 利用它来调整结点的访问顺序，实现 LRU (Least Recently Used) 缓存策略。 **`afterNodeInsertion`** 则是在**结点被成功插入后**调用，`LinkedHashMap` 利用它来维护其双向链表结构。 这些钩子方法使得 `LinkedHashMap` 可以在不修改 `HashMap` 核心逻辑的情况下，实现额外的功能。

------

## Java的集合类有哪些，那些是线程安全的，那些是线程不安全的？（考点：线程安全）【简单】

#### Java的集合类

> Java的集合主要是由Map和Collection这两个接口派生出来的。Collection接口又派生出三个重要的接口Set, List， Queue。

Java所有的集合类，都是Set, List，Map, Queue这几个接口的实现类。

- Set接口：Set接口的主要实现类有：HashSet, TreeSet, LinkedHashSet。Set集合最大的特征就是不允许存储重复的元素。
- List接口：List接口的主要实现类有：ArrayList, LinkedList。List接口里面存储的元素是有序的，并且允许存放重复的元素。
- Map接口: Map接口的主要实现类有：HashMap，TreeMap, LinkedHashMap。Map接口存放的就是键值对。
- Queue接口: Queue接口的主要实现类有：ArrayDeque, PriorityQueue。Queue接口主要是用来实现队列的。

#### 线程安全集合类

- Vector:这个和ArrayList类比较像，只不过Vector中的每个方法都被synchronized关键字修饰，所以Vector集合是线程安全的。
- HashTable:这个和HashMap类比较像，同样的HashTable中的每个方法都被synchronized关键字修饰。

java.util.concurrent 包提供的都是线程安全的集合：

- ConcurrentHashMap: ConcurrentHashMap通过锁分离技术实现了线程安全。

#### 线程不安全集合类

ArrayList，LinkedList， HashSet，HashMap，TreeSet，TreeMap 这些类都是线程不安全的集合类，只能在单线程环境下使用，在多线程环境下，如果没有合适的同步措施，就会造成数据不一致等并发问题。

## ArrayList和普通数组的区别是什么？

### ArrayList 和 普通数组 的概念

1. 普通数组（Array）：
   - **定义**：它是 Java 语言中一个内置的、**固定大小**的数据结构，用于存储一系列**相同类型**的元素。
   - **优点**：**访问速度快**（通过索引/下标直接访问元素），可以存储基本数据类型，内存开销小。
   - **缺点**：数组长度固定**不可变**，**增删元素不方便**，功能单一。
   - **适用场景**：元素数量已知且固定，对性能要求比较高，或仅需存储基本数据类型。
2. `ArrayList`：
   - **定义**：它是 `java.util` 包下的一个集合类，是 `List` 接口的最常用的实现类，ArrayList 的底层是基于**动态数组**实现的。
   - **优点**：长度可变（动态扩容），具有丰富的API操作，且支持泛型。
   - **缺点**：**增删元素（特别是中间位置）效率相对较低**，存储基本类型时 存在装箱拆箱带来的开销。
   - **适用场景**：元素数量不确定，需要频繁查询或在末尾增删，需要集合框架提供的API操作。

### ArrayList 和 普通数组 的区别

- 如下表所示：

  | 维度          | 普通数组（Array）                                     | `ArrayList`                                                |
  | ------------- | ----------------------------------------------------- | ---------------------------------------------------------- |
  | **长度/容量** | **固定长度**，一旦创建，长度不可变。                  | **长度可变**，可根据需要自动扩容和缩容。                   |
  | **元素类型**  | 可存储**基本数据类型**和**引用类型**，但不能混用。    | 只能存储**引用类型**（基本类型会自动装箱）。               |
  | **API/操作**  | 功能单一，通过 `[]` 运算符访问，无内置方法。          | 提供了丰富的 API 方法（`add()`, `remove()`, `get()` 等）。 |
  | **泛型支持**  | 不直接支持泛型，编译时类型检查不如 `ArrayList` 严格。 | **原生支持泛型**，提供编译时类型安全。                     |
  | **底层实现**  | 语言内置的底层数据结构。                              | 基于**动态数组**实现，是集合框架的一部分。                 |

------

### 详细回答

#### ArrayList 和 普通数组 的概念

1. 普通数组（Array）：
   - **定义**：数组是 Java 语言内置的一种最基本、最底层的数据结构。它的本质是一个**固定大小**的同类型元素的集合，数组的长度在创建时就已经确定，并且在程序运行过程中不可更改。
   - **优点**： ① **访问速度快**：因为数组在内存中是**连续存储**的，所以我们可以直接通过 **索引/下标** 直接计算出元素的内存地址，实现 **O(1)** 时间复杂度的 **随机访问**。 ② **内存开销小**：数组可以直接存储 `int`, `char`, `boolean` 等基本数据类型，避免了拆装箱带来的开销。
   - **缺点**： ① **数组一旦被创建，长度就无法改变**。如果需要增加或减少元素，必须创建一个新数组并将旧数组的元素复制过去，效率较低。 ② **增删元素不便**：在数组**中间位置插入或删除元素**需要移动大量后续元素，时间复杂度是 **O(n)** 。
   - **适用场景**： ① 当**元素数量已知且固定**时； ② 对**性能要求极高**，且主要进行随机访问操作的场景； ③ 需要存储**多维数据**（比如说矩阵）时。
2. `ArrayList`：
   - **定义**：`ArrayList` 是 `java.util` 包中的一个集合类，底层是基于一个**动态数组**来实现的。它允许存储重复元素，并保持了元素的插入顺序。
   - **优点**： ① **长度可变（根据实际存储情况动态扩容）**：当元素数量超过当前容量时，它会自动扩容（通常是当前容量的 1.5 倍）。 ② 作为 Java 集合框架的一部分，`ArrayList` 提供了比方说是 `add()`, `remove()`, `get()`, `size()`, `contains()` 这些很方便操作元素的方法。 ③ **原生支持泛型**：`ArrayList<E>` 原生支持泛型，**在编译时进行类型检查**，提供了类型安全，避免了运行时 `ClassCastException`。
   - **缺点**： ① **存储基本类型时有装箱拆箱带来的开销**：因为 `ArrayList` 只能存储引用类型。如果存储 `int` 等基本数据类型，Java 会自动进行**装箱（Autoboxing）**转换为 `Integer` 等包装类，带来了额外的内存开销。 ② **扩容带来的开销**：扩容操作本身（创建新数组和复制元素）也是有性能开销的。
   - **适用场景**： ① 当需要存储的**元素数量不确定**时。 ② 当需要利用 Java 集合框架提供的 **丰富功能** 和 **类型安全** 时。

#### ArrayList 和 普通数组 的区别

1. 长度/容量：
   - **普通数组**：具有**固定长度**，一旦数组被创建，数组的大小就无法更改。如果需要一个更大或更小的数组，就必须创建一个新数组，并将旧数组中的元素复制到新数组中。
   - **`ArrayList`**：具有**动态可变长度**。它是一个可变大小的集合，当集合内的元素数量达到了内部数组的当前容量，并需要添加新元素时，`ArrayList` 会自动创建一个更大的新数组，并将所有现有元素复制到新数组中（通常是当前容量的 1.5 倍），然后丢弃旧数组。
2. 元素类型：
   - **普通数组**：可以直接存储**基本数据类型**（如 `int`, `char`, `boolean`等），也可以直接存储 **引用类型**（如 `String`, `Object`等）。但是不能混用，即一旦数组被声明为某种类型，它就只能存储该类型或其子类型的元素。
   - **`ArrayList`**：只能存储**引用类型**，存储基本数据类型会自动执行**装箱（Autoboxing）** 操作，将其转换为对应的包装类（例如，`int` 会被转换为 `Integer` 对象）。
3. API/操作：
   - **普通数组**：功能相对单一，主要通过 **`[]` 运算符** 来进行元素的存取，并没有内置的方法来执行常见的集合操作，如添加、删除、查找元素、获取当前大小等，这些操作需要我们手动实现。
   - **`ArrayList`**：作为 Java 集合框架的一部分，内部封装了很多实用的 **API 方法**。例如，`add()` 用于添加元素，`remove()` 用于删除元素，`get()` 用于获取元素，`size()` 用于获取当前元素数量，`contains()` 用于判断元素是否存在等。
4. 泛型支持：
   - **普通数组**：泛型支持不如 `ArrayList` 严格。虽然我们可以去声明 `Object[]` 类型的数组来存储不同类型的对象，但它在编译时不会提供严格的类型检查，这可能会导致**运行时**出现 `ArrayStoreException`。例如，`String[]` 可以赋值给 `Object[]`（数组是**协变**的），但向 `Object[]` 中添加 `Integer` 会在运行时报错。
   - **`ArrayList`**：**原生支持泛型**（例如 `ArrayList<String>`）。这意味着在编译时，编译器会强制检查 要添加或获取的元素，它的类型是否与泛型参数一致，保证了**编译时类型安全**，避免了运行时出现 `ClassCastException`。
5. 底层实现：
   - **普通数组**：是 Java 语言内置的**底层数据结构**。
   - **`ArrayList`**：是 Java 集合框架中的一个**集合类**，其底层是基于**普通数组**来实现的。`ArrayList` 内部维护一个 `Object[]` 数组elementData，并在此基础上封装了动态扩容、增删改查一套逻辑。

------

### 知识拓展

1. **ArrayList 和 普通数组 的区别**示意图如下： 

   ![image](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/Collection_ArrayList_vs_array.jpg)

2. **面试官可能的追问1：在 Java 中，当需要存储大量基本数据类型时，除了数组，还有其他什么选择吗？**

   - **Apache Commons Lang 库**：这个库提供了 `ArrayUtils` 等工具类，以及 `PrimitiveIterator` 等，可以更方便地操作基本类型数组。
   - **Guava 库**：提供了 `Ints`, `Longs` 等工具类，以及 `ImmutableList` 的基本类型版本，用于处理基本类型的集合，避免装箱。
   - **FastUtil 或 Trove 库**：这些是专门为高性能基本类型集合设计的第三方库，它们提供了 `IntArrayList`, `LongHashSet` 等，直接在内部使用基本类型数组，完全避免了装箱拆箱，性能远超 `java.util` 包中的标准集合类，适用于大数据量和对性能要求比较高的场景。

------

## ArrayList扩容机制是什么？

### 简要回答

- ArrayList的扩容机制：
  - 当其**内部存储元素的数组**，它的容量不足以容纳新元素时，`ArrayList` 会自动创建一个更大的新数组，并将原数组中的所有元素都复制到这个新数组中。
  - 这个过程发生在当内部数组的 `size` 等于 `elementData.length` 并且还调用 `add()` 方法时触发。
  - 默认的扩容策略是**将当前容量扩大 1.5 倍**（`newCapacity = oldCapacity + (oldCapacity >> 1)`）。虽然单次扩容涉及元素复制，时间复杂度为 O(N)，但由于容量是指数级增长的，因此向 `ArrayList` 中添加元素的**均摊时间复杂度为 O(1)** 。

------

### 详细回答 (基于 JDK 17.0 源码)

#### 无参构造下扩容机制的底层实现

1. **初始状态：** 内部的 **`elementData`** 数组会被初始化为 `DEFAULT_CAPACITY_EMPTY_ELEMENTDATA`，这是一个**共享的、静态的空数组**。此时 `size` 为 0。

   ```
   // ArrayList.java (JDK 17)
   private static final Object[] DEFAULT_CAPACITY_EMPTY_ELEMENTDATA = {};
   transient Object[] elementData; // non-private to simplify nested class access
   public ArrayList() {
       this.elementData = DEFAULT_CAPACITY_EMPTY_ELEMENTDATA;
   }
   ```

2. **第一次 `add()` 方法调用：**

   - 在 **`add(E e)`** 方法内部，jvm会进一步调用一个 **私有的、重载的** `add` 方法—— **`add(e, elementData, size)`** 。

     ```
     public boolean add(E e) {
         modCount++;
         add(e, elementData, size);
         return true;
     }
     
     private void add(E e, Object[] elementData, int s) {
         if (s == elementData.length)
             elementData = grow();
         elementData[s] = e;
         size = s + 1;
     }
     ```

   - 在 `private void add(E e, Object[] elementData, int s)` 方法中，形参`s` (大小等于当前 `size`，为 0) 等于 `elementData.length` (大小也为 0，因为是空数组 **`DEFAULT_CAPACITY_EMPTY_ELEMENTDATA`**)，条件 `s == elementData.length` 成立。

   - 于是调用 `elementData = grow(s + 1)`，此时 `s + 1` 为 `1`。这个 `1` 就是 `minCapacity` (最小所需容量)。

   - 接着进入 **`grow(int minCapacity)`** 方法：

     ```
     private Object[] grow(int minCapacity) {
         int oldCapacity = elementData.length;
         if (oldCapacity > 0 || elementData != DEFAULTCAPACITY_EMPTY_ELEMENTDATA) {
             int newCapacity = ArraysSupport.newLength(oldCapacity,
                     minCapacity - oldCapacity, /* minimum growth */
                     oldCapacity >> 1           /* preferred growth */);
             return elementData = Arrays.copyOf(elementData, newCapacity);
         } else {
             return elementData = new Object[Math.max(DEFAULT_CAPACITY, minCapacity)];
         }
     }
     ```

   - 可以看到，对于无参构造器创建的 `ArrayList`，第一次添加元素时，`grow` 方法的 `else` 分支会被执行，`elementData` 会被初始化为一个大小为 `Math.max(DEFAULT_CAPACITY, minCapacity)` 的数组。由于 **`DEFAULT_CAPACITY`** 是 10，`minCapacity` 是 1，所以第一次扩容后新数组的容量是 **10**。

   - `grow` 方法返回这个新的、容量为 10 的数组，并将其赋值给 `this.elementData`。

   - 回到 `add(E e, Object[] elementData, int s)` 方法，元素被放置到 `elementData[0]`，`size` 更新为 1。

3. **后续 `add()` 方法调用（第二次扩容时）：**

   - 当 `size` 达到 `elementData.length`（例如，已经添加了 10 个元素，`size` 就变成10了，`elementData.length` 也为10），再次调用 `add()` 时，内层 **`add(e, elementData, size)`** 方法中，`s == elementData.length` 再次成立，会触发第二次扩容。

   - 调用 `elementData = grow(s + 1)`，此时 `s + 1` 为 11。

   - 进入 `grow(int minCapacity)` 方法， `oldCapacity` 是 10，此时 `oldCapacity > 0` 条件成立，进入 `if` 分支。

   - if分支中会调用newLength方法，如下所示：

     ```
     int newCapacity = ArraysSupport.newLength(oldCapacity,
                 minCapacity - oldCapacity, /* minimum growth */
                 oldCapacity >> 1           /* preferred growth */);  
     ```

     其中 `oldCapacity >> 1` 表示原来的数组长度对2取整，相当于传入了三个形参——①原来的数组长度；②新数组的自小增长量；③优先希望的增长量。newLength方法的源码如下：

     ```
     public static int newLength(int oldLength, int minGrowth, int prefGrowth) {
         // preconditions not checked because of inlining
         // assert oldLength >= 0
         // assert minGrowth > 0
     
         int prefLength = oldLength + Math.max(minGrowth, prefGrowth); // might overflow
         if (0 < prefLength && prefLength <= SOFT_MAX_ARRAY_LENGTH) {
             return prefLength;
         } else {
             // put code cold in a separate method
             return hugeLength(oldLength, minGrowth);
         }
     }
     ```

   - 从 ArraysSupport.newLength 返回的 newCapacity 将是 15。

   - 回到 grow 方法，elementData 会被 Arrays.copyOf(elementData, 15) 复制到一个新的、容量为 15 的数组。

   - 此后，每次扩容都会按照类似的逻辑进行，即 ArraysSupport.newLength 会根据 1.5 倍的“首选增长量” (oldCapacity >> 1) 和“最小增长量” (minCapacity - oldCapacity) 的最大值来计算新的容量，直到达到 MAX_ARRAY_SIZE 的限制。

#### 带参构造下扩容机制的底层实现

1. 初始状态：

   - 如果 `initialCapacity > 0`：`elementData` 数组会直接被初始化为指定大小的数组。

     ```
     // ArrayList.java (JDK 17)
     private static final Object[] EMPTY_ELEMENTDATA = {}; // 注意与 DEFAULT_CAPACITY_EMPTY_ELEMENTDATA 的区别
     public ArrayList(int initialCapacity) {
         if (initialCapacity > 0) {
             this.elementData = new Object[initialCapacity];
         } else if (initialCapacity == 0) {
             this.elementData = EMPTY_ELEMENTDATA; // 初始容量为0时，使用另一个共享空数组
         } else {
             throw new IllegalArgumentException("Illegal Capacity: "+ initialCapacity);
         }
     }
     ```

   - 如果 `initialCapacity == 0`：`elementData` 数组会被初始化为 `EMPTY_ELEMENTDATA`，这是另一个**共享的、静态的空数组**，与无参构造器的 `DEFAULT_CAPACITY_EMPTY_ELEMENTDATA` 不同。

2. `initialCapacity > 0` 时的 `add()` 行为：

   - 假设 `new ArrayList(3)`，此时 `elementData.length` 为 3。那么在添加前 3 个元素时，`s == elementData.length` 不成立，不会触发扩容。
   - 添加第 4 个元素时 (`s` 为 3)， **`add(e, elementData, size)`** 中，`s == elementData.length` (即 `3 == 3`) 成立，会进行扩容。此时内层grow方法的形参 `minCapacity` 为 4。
   - 内层grow方法中，`oldCapacity` 是 3。此时`oldCapacity > 0` 成立，进入 `if` 分支。ArraysSupport.newLength方法传入的三个形参就分别是——①oldCapacity = 3， ②minCapacity - oldCapacity = 1, ③oldCapacity >> 1 = 1;
   - 新数组的长度就等于旧数组的长度加上minGrowth和prefGrowth中的最大值，也就是3 + 1 = 4.
   - 最终，`elementData` 会被 `Arrays.copyOf(elementData, 4)` 复制到一个新的、容量为 **4** 的数组。

3. “线性增长”的效果：

   - 如果带参构造传入的 `initialCapacity` 小于4，那么在最初的几次扩容中，宏观上会呈现出“逐步加一”的效果。这就使得当oldCapacity等于0、1的情况下，prefGrowth都等于0；而oldCapacity等于2、3的情况下，prefGrowth都等于1。
   - 直到size>=4之后，才会在宏观上更明显地看到1.5倍的扩容。

------

### 知识图解

1. ArrayList初始状态和首次扩容的示意图如下：

   ![image](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/ArrayList_initialState_AND_FirstGorw.jpg)

2. ArrayList第二次扩容的示意图如下：

   ![image](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/ArrayList_Second_Grow.jpg)

------

### 知识拓展——Java 8 和 Java 17 `ArrayList` 源码上的区别？以及为什么要这么改进？

#### Java 8 `ArrayList` 扩容流程及源码特点

在 Java 8 中，`ArrayList` 的 `add()` 方法触发扩容的调用链相对直接：

1. `public boolean add(E e)` 方法：

   - 直接调用 `ensureCapacityInternal(size + 1)` 来确保容量。

     ```
     // (Java 8)
     public boolean add(E e) {
         ensureCapacityInternal(size + 1);  // Increments modCount!!
         elementData[size++] = e;
         return true;
     }
     ```

2. `ensureCapacityInternal(int minCapacity)` 方法：

   - 这个方法不再直接包含容量初始化的逻辑，而是调用了一个新的私有静态方法 calculateCapacity 来计算实际所需的容量。

   - 然后将计算出的容量传递给 ensureExplicitCapacity(calculatedCapacity)。

     ```
     //  (Java 8)
     private void ensureCapacityInternal(int minCapacity) {
         ensureExplicitCapacity(calculateCapacity(elementData, minCapacity));
     }
     ```

3. `private static int calculateCapacity(Object[] elementData, int minCapacity)` 方法：

   - 这个方法专门用于计算在当前 elementData 状态下，所需的最小容量。

   - 它处理了无参构造器创建的 ArrayList 在第一次添加元素时，将容量从 0 初始化为 DEFAULT_CAPACITY (10) 的逻辑。

     ```
     // (Java 8u40+)
     // 这是一个辅助方法，用于计算实际所需的容量
     private static int calculateCapacity(Object[] elementData, int minCapacity) {
         if (elementData == DEFAULTCAPACITY_EMPTY_ELEMENTDATA) {
             return Math.max(DEFAULT_CAPACITY, minCapacity);
         }
         return minCapacity;
     }
     ```

4. `ensureExplicitCapacity(int minCapacity)` 方法：

   - 检查 `modCount` 以支持快速失败（fail-fast）机制。

   - 如果 `minCapacity` 大于当前数组长度 (`elementData.length`)，则调用 `grow(minCapacity)` 进行实际的扩容。

     ```
     // ArrayList.java (Java 8)
     private void ensureExplicitCapacity(int minCapacity) {
         modCount++; // 记录修改次数，用于迭代器快速失败
         // overflow-conscious code
         if (minCapacity - elementData.length > 0)
             grow(minCapacity);
     }
     ```

5. `grow(int minCapacity)` 方法：

   - 这是实际执行扩容逻辑的方法。

   - **直接在方法内部计算新容量：** `int newCapacity = oldCapacity + (oldCapacity >> 1);` (即 1.5 倍)。

   - **直接在方法内部处理各种边界条件：** 包括 `newCapacity < minCapacity`（取 `minCapacity`）、`newCapacity > MAX_ARRAY_SIZE`（调用 `hugeCapacity`）。

   - **直接修改 `this.elementData` 字段：** `elementData = Arrays.copyOf(elementData, newCapacity);`

     ```
     // ArrayList.java (Java 8)
     private void grow(int minCapacity) {
         // overflow-conscious code
         int oldCapacity = elementData.length;
         int newCapacity = oldCapacity + (oldCapacity >> 1); // 直接计算 1.5 倍
         if (newCapacity - minCapacity < 0)
             newCapacity = minCapacity;
         if (newCapacity - MAX_ARRAY_SIZE > 0)
             newCapacity = hugeCapacity(minCapacity);
         // minCapacity is usually close to size, so this is a win:
         elementData = Arrays.copyOf(elementData, newCapacity); // 直接赋值给 elementData
     }
     ```

#### Java 17 `ArrayList` 扩容流程及源码特点

在 Java 17 中，`ArrayList` 的 `add()` 方法的调用链和 `grow` 方法的实现方式发生了变化：

1. `public boolean add(E e)` 方法：

   - 不再直接调用 `ensureCapacityInternal`，而是调用一个新的私有辅助方法 `add(E e, Object[] elementData, int s)`。新的辅助方法将 `elementData` 和 `size` 作为参数传入，这有助于 JIT 编译器进行优化。

     ```
     private void add(E e, Object[] elementData, int s) {
         if (s == elementData.length)
             elementData = grow();
         elementData[s] = e;
         size = s + 1;
     }
     
     public boolean add(E e) {
         modCount++;
         add(e, elementData, size);
         return true;
     }
     ```

2. `private Object[] grow(int minCapacity)` 方法：

   - **容量计算相关代码位置的变化** 不再自己计算 1.5 倍，而是将容量计算逻辑委托给 `jdk.internal.util.ArraysSupport.newLength` 方法。

   - `ArraysSupport.newLength` 接收 `oldLength`、`minGrowth` (即 `minCapacity - oldCapacity`) 和 `prefGrowth` (即 `oldCapacity >> 1`) 作为参数，内部会处理 1.5 倍增长的逻辑。

   - `grow` 方法在计算出新容量并执行 `Arrays.copyOf` 后，会**将新数组赋值给 `this.elementData` 字段，同时也将这个新数组作为方法的返回值返回**。

     ```
     // ArrayList.java (JDK 17)
     private Object[] grow(int minCapacity) {
         int oldCapacity = elementData.length;
         if (oldCapacity > 0 || elementData != DEFAULT_CAPACITY_EMPTY_ELEMENTDATA) {
             int newCapacity = ArraysSupport.newLength(oldCapacity,
                                                       minCapacity - oldCapacity, /* minimum growth */
                                                       oldCapacity >> 1 /* preferred growth */);
             return elementData = Arrays.copyOf(elementData, newCapacity); // 赋值并返回
         } else {
             return elementData = new Object[Math.max(DEFAULT_CAPACITY, minCapacity)];
         }
     }
     ```

#### 为什么要这么改进？

1. 让代码变得更加模块化，提高代码复用性：
   - **`ArraysSupport.newLength` 的引入**是最大的变化。在 **Java 9** 之后，Oracle 将许多集合类（如 `ArrayList`, `Vector`, `HashMap` 等）中通用的数组/哈希表容量计算和增长逻辑抽象并封装到了 `jdk.internal.util.ArraysSupport` 类中。
   - 这样做避免了在不同集合类中重复编写相似的扩容逻辑，提高了代码的**复用性**和**可维护性**。当需要修改扩容策略或处理边界条件时，只需修改 `ArraysSupport` 中的一处代码即可影响所有依赖它的集合类。
2. JIT 编译器优化（性能提升）：
   - **参数传递而非字段访问：** 在 `private void add(E e, Object[] elementData, int s)` 方法中，将 `elementData` 和 `size` 作为参数传入，而不是直接访问 `this.elementData` 和 `this.size` 字段。这为 JIT 编译器提供了更好的优化机会，例如**逃逸分析**。
   - **`grow` 方法的返回值：** 尽管 `grow` 方法仍然修改了 `this.elementData`，但它同时返回新数组的设计，使得调用者能够明确接收并使用这个新数组。
3. 代码清晰度与可读性：
   - 虽然引入了更多的内部方法，但从公共 API (`public boolean add(E e)`) 的角度看，代码整体的调用逻辑变得更加清晰明了。
   - 将容量计算的复杂性隐藏在 `ArraysSupport` 之后，使得 `ArrayList` 自身的 `grow` 方法逻辑更清晰，专注于数组复制。

------

## HashMap 为什么是线程不安全的? 如何实现线程安全？（考点：线程安全、底层数据结构）【中等】

### 简要回答

1. HashMap为什么是线程不安全的？
   - HashMap的**操作不是原子的**，多个线程操作一个HashMap对象时，可能会导致数据不一致,并发修改异常。
2. 如何实现线程安全？
   - 使用**Collections.synchronizedMap()** 方法，返回一个线程安全的Map对象。
   - 使用**ConcurrentHashMap**类，它是线程安全的。
   - 使用**锁机制**，在HashMap的操作中加显式锁。

### 详细回答

1. HashMap存在的问题
   - JDK1.7 采用数组+链表的数据结构，在多线程背景下，**数组扩容时可能会导致Entry链死循环**。
   - HashMap并发执行**put()操作时会出现数据覆盖问题**，因为put()方法没有加锁，多线程环境可能会出现数据覆盖问题。
   - HashMap的迭代器是快速失败迭代器，**并发修改会破坏迭代器的遍历逻辑**，导致数据不一致。
2. 实现HashMap线程安全的方法

- 使用**Collections.synchronizedMap()方法**，通过该方法创建一个线程安全的HashMap对象，返回一个同步的Map包装器，使所有对Map的操作都同步执行。

```
Map<String,String> synchronizedMap = Collections.synchronizedMap(new HashMap<>());
```

- 使用**ConcurrentHashMap**类，它专门设计用于多线程环境的哈希表实现。它使用分段锁机制，允许多个线程同时进行读操作，提高并发性能。

```
Map<String,String> concurrentHashMap = new ConcurrentHashMap<>();
```

- 使用**锁机制**，在HashMap的操作中加显式锁（如ReentrantLock）来保证线程安全。

```
Map<String,String> map = new HashMap<>();
ReentrantLock lock = new ReentrantLock();

// 在需要线程安全的操作中使用锁
lock.lock();
try {
    // 进行线程安全的操作
} finally {
    lock.unlock();
}
```

### 知识图解

1. HashMap死循环形成图解

    

   ![image](https://gitee.com/CHENKAIforyou/image-bed/raw/master/imag/20250905HashMap_safety.jpg)

### 知识扩展

1. 扩展
   - 并发编程的3个核心特性：**原子性、可见性、有序性**。
   - 迭代器设计模式：
     - 快速失败：迭代器实时检查modCount，一旦发现并发修改就抛出异常，实现强一致性，牺牲并发性能。
     - 弱一致性：允许并发修改，迭代器可能不是最新的，支持高并发。
2. 面试官可能追问：

- Q1：你能从并发编程的角度解释一下HashMap为什么是线程不安全的吗？
  1. **原子性**：HashMap的put()方法不是原子操作，并发时会被中断，导致数据覆盖。
  2. **可见性**：HashMap的modCount数组元素等共享变量未使用volatile修饰，线程A修改后，线程B可能看到旧值，导致迭代器判断错误。
  3. **有序性**：HashMap红黑树的插入/删除有复杂的指针操作，并发时指令重排序可能会破坏树结构。
- Q2：如果需要“强一致性”的线程安全Map，应该使用什么？
  1. 选Collections.synchronizedMap()方法。
  2. 在ConcurrentHashMap的迭代前后手动加锁。
- Q3："读多写少"的场景下，适合使用哪种线程安全的容器存储键值对？
  - 适合使用ConcurrentHashMap，其**读操作无锁，写操作加桶级锁**，“读多写少”的场景下，ConcurrentHashMap几乎无竞争，性能好。
- Q4：为什么ConcurrentHashMap不支持键为null？但是HashMap支持？
  - 在单线程场景下，null的hash值为0可以正常存储，但ConcurrentHashMap是并发容器，若允许null，调用get()方法时返回null，**无法区分键不存在还是键存在但是值为null**，导致并发场景下的逻辑错误。

## 如何在遍历集合时删除元素？

在Java中遍历集合时删除元素，不能直接在遍历过程中使用常规方式删除，否则会抛出ConcurrentModificationException异常，以下是几种常见的正确做法：

1.使用迭代器删除元素：Iterator提供了remove方法，可在遍历过程中安全删除元素。示例代码如下：

```
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<Integer> list = new ArrayList<>();
        list.add(1);
        list.add(2);
        list.add(3);
        list.add(4);
        list.add(5);

        Iterator<Integer> iterator = list.iterator();
        while (iterator.hasNext()) {
            Integer num = iterator.next();
            if (num % 2 == 0) {
                iterator.remove();
            }
        }

        System.out.println(list);
    }
}
```

2.倒序遍历删除元素：从集合末尾开始遍历并删除元素，这样不会影响前面元素的索引。示例代码如下：

```
import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<Integer> list = new ArrayList<>();
        list.add(1);
        list.add(2);
        list.add(3);
        list.add(4);
        list.add(5);

        for (int i = list.size() - 1; i >= 0; i--) {
            Integer num = list.get(i);
            if (num % 2 == 0) {
                list.remove(i);
            }
        }

        System.out.println(list);
    }
}
```

3.使用removeIf方法：Java 8及以上版本的Collection接口新增了removeIf方法，可根据条件删除元素。示例代码如下：

```
import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        List<Integer> list = new ArrayList<>();
        list.add(1);
        list.add(2);
        list.add(3);
        list.add(4);
        list.add(5);

        list.removeIf(num -> num % 2 == 0);

        System.out.println(list);
    }
}
```

## Collection接口和Collections类的区别是什么？（考点：接口与类的区别、工具类作用）【简单】

- collection是一个接口，是java集合框架的根接口之一
- collections是一个工具类，包含了很多操作集合的静态方法

## Vector和ArrayList的区别是什么？（考点：线程安全、性能差异）【简单】

- 线程安全性：
  - Vector是线程安全的，他的每个方法都被声明为synchronized，多线程环境下可以直接使用不需要额外开销
  - ArrayList不是线程安全的
- 性能：
  - Vector由于所有公开的方法都是同步的，所以性能可能不如ArrayList
- 扩容机制：
  - Vector容量不足的情况下，会扩容至两倍
  - ArrayList容量不足的情况下，通常会扩容1.5倍

## HashMap在JDK1.8中有哪些改动？（考点：Java版本更新的影响）【中等】

1. 引入红黑树（TreeBin）

- **JDK 1.7 之前**：哈希冲突时采用 **拉链法**（链表存储），在链表过长时查询效率退化为 **O(n)**。
- JDK 1.8：当单个桶内元素过多（默认阈值 8）时，链表会转化为红黑树，查找效率提升为O(log n)。
  - 当元素减少到 **6** 以下时，会退回链表，避免频繁树化的性能损耗。
  - 这样能显著提升在高碰撞场景下的性能。

------

1. 数组 + 链表/红黑树的混合结构

- JDK 1.7：数组 + 链表。
- JDK 1.8：数组 + 链表 + 红黑树，存储结构更加灵活。

------

1. 使用 **尾插法** 替代头插法

- **JDK 1.7**：插入时用 **头插法**，可能导致链表反转，在多线程环境下容易出现环形链表 → 死循环。
- **JDK 1.8**：改为 **尾插法**，保持元素插入顺序，避免了并发问题。

------

1. 扩容机制优化

- **JDK 1.7**：扩容时需要 **重新计算所有元素的哈希值**。
- **JDK 1.8**：利用 **高位运算**（元素要么在原索引，要么移动到原索引 + oldCap），只需判断一个二进制位即可，减少了计算开销。

------

1. hash 函数优化

- **JDK 1.7**：直接用 key 的 `hashCode()` 高位参与运算。
- **JDK 1.8**：引入 `扰动函数 (hash >>> 16) ^ hash`，减少哈希冲突，分布更均匀。

------

总结（面试速答）

JDK 1.8 中 HashMap 主要的优化是：**引入红黑树优化链表查询效率、采用尾插法避免并发问题、扩容机制更高效、hash 函数优化，整体性能和稳定性更好。**