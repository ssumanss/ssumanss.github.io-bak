---
layout: post
title:  Dynamic Programming
date:   2019-05-28 00:00:00
description: Fundamentals of Dynamic Programming
---

It’s a general powerful algorithm design technique.  It is a careful exhaustive search. Exhaustive search are usually not good because they are exponential time but if we find a dynamic programming algorithm then it solves the problem in polynomial time.  It is mostly used to solve optimisation problem, i.e., problem required to maximise something or to minimise something. Richard bellman is considered as the founder of this theory and he named it as a dynamic programming. The fundamental idea of dynamic programming is to reduce the problem into a bunch of subproblems such that some subproblems occur many times, so if we solve the subproblem once and use its result at other places then the computational complexity of the problem will be significantly reduced. 

> Bellman explained that tell me the name dynamic programming to hide the fact that he is doing mathematical research.  ...   

Lecture Overview

* Memorisation and subproblem
* Fibonacci
* Shortest path
* Guessing and DAG view

## Fibonacci Numbers 

```python
F1 = F2 = 1
Fn = Fn-1 + Fn-2
```

A naive recursive algorithm to compute the Fibonacci number will be the following

```python
fib(n):
    if n <= 2: 
        f = 1
    else:
        f = fib(n-1)+fib(n-2)
    return f
```

Running time of above algorithm is exponential as we see below
![image](../../../img/Dynamic%20Programming/bear_sketch@2x.png)

So naive recursive algorithm is a bad algorithm.

## Memorised based Dynamic programming algorithm

![image](../../../img/Dynamic%20Programming/bear_sketch@2x%202.png)

So the idea is to store the value of Fibonacci number in an empty dictionary once we compute it and use it later when needed.

![image](../../../img/Dynamic%20Programming/bear_sketch@2x%203.png)

![image](../../../img/Dynamic%20Programming/bear_sketch@2x%204.png)
 
So DP is

* Memorise and reuse solution to subproblems, that helps to solve the actual problem.
* Time = # subproblems x (time per subproblems) 

### Bottom up dynamic programming algorithm 

![image](../../../img/Dynamic%20Programming/bear_sketch@2x%205.png)

We can generalise this algorithm with following properties

* It will do the same number of competition as memorised version of dynamic programming.
* Topology sort of subproblem dependency DAG![image](../../../img/Dynamic%20Programming/bear_sketch@2x%206.png)
* It often saves space.

## Shortest paths
The problem is to find the ::shortest path:: from a fixed node to all other nodes. S(s,v), for all v. 

We will analyse the problem the same way we have done to Fibonacci numbers. We will first write the naive recursive algorithm then a memorised DP algorithm, finally we will write a bottom up algorithm.

![image](../../../img/Dynamic%20Programming/bear_sketch@2x%207.png)
 
Alternatively we start from last,
![image](../../../img/Dynamic%20Programming/bear_sketch@2x%208.png)
This is our naive recursive algorithm and we hope that it will not be great, and it is really not good as it is exponential. But we know how we can make it better using memorisation.  We will memorise the value of S(s,u) for all u in the graph. 
![](../../../img/Dynamic%20Programming/bear_sketch@2x%209.png)

In this case case the algorithm will runs infinitely many times. This represent the presence of cycle in the graph.

This is typed using a Microsoft keyboard.  This is great keyboard. It is small so it will take some time to get used to it.
