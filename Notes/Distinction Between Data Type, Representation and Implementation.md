# Data Type
Informally, when talking about data structures like __array__, __linked list__, __pushdown stack__ or __tree__ etc., 
we're actually referting to these data types with different properties. 
For example, array is a data type whose data is accessed by index. 
It's fast at random accessting but slow at changing the sequences of the items in it. 
While linked list is a sets of nodes where each node has a link to another one. 
It's easy to visit the linked list sequencially or modify its list but hard to access randomly or by index. 
In this case, don't think too deep about the implementation details which may be too much information. 

# Representation
On the other hand, when thinking or discussing these data types using simple interface in real code or psudo code, 
or using some diagrams metephor, we're actually using the concrete representation 
(there may be many of them for one data type) of the respective data types. It's easy and intuitive for human mind
to use something less abstract than the formal defination of data types in communication and thinking. 
Some examples from internet are the following:

```
typedef struct node * link;
struct node {Item item; link next;}
```

![diagram of linked list structure](http://pages.cs.wisc.edu/~vernon/cs367/notes/LINKED-LIST-FIGURES/linked-list.gif)

![diagram of tree structure](http://pages.cs.wisc.edu/~vernon/cs367/notes/TREES-FIGURES/tree.gif)

# Implementation
From time to time, we'll also need to deal with the implementation.
In this case, yes, finally, dear developers,it's the implemation using different language on different platforms. 
Even in this scenario, it's usually helpful if not a must to think about the low level data types as well 
defined (and implemented) data types to implement the high level data type of interest. For example, when implementing 
a tree using a linked list, we're only thinking about how to use linked list to implement the tree for its unique
properties while not thinking about how to implement a linked list. That's another level of abstraction.
