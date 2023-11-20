# TopK

Comparasion of different implementations of topk function.

* Huggingface - original implementation of topk function taken from `https://github.com/huggingface/swift-transformers` repo
* Accelerate - implementation of topk function using `BNNSNearestNeighbors` from `Accelerate` framework
* Collections V1 - implementation of topk function using `Deque` from `swift-collections` package
* Collections V2 - implementation of topk function using `Heap` from `swift-collections` package and putting all elements into heap
* Collections V3 - implementation of topk function using `Heap` from `swift-collections` package and putting only k elements into heap

## Usage

To run benchmark for all implementations use:

```
$ swift run -c release topk
```

To run benchmark for excluding `Accelerate` implementation use:

```
$ swift run -c release topk --filter-not Accelerate 
```

## Results

For higher values of `n` and `k` `Accelerate` implementation take too long to finish.

```
name                              time            std        iterations
-----------------------------------------------------------------------
Huggingface n=10, k=3                  583.000 ns ±  28.99 %    1000000
Huggingface n=10_000, k=3             5667.000 ns ±  12.92 %     245367
Huggingface n=10_000, k=100         201875.000 ns ±   3.42 %       6875
Huggingface n=10_000, k=5_000     38872000.000 ns ±   0.53 %         35
Huggingface n=10_000, k=10_000    57577937.500 ns ±   0.48 %         24
Collections V1 n=10, k=3               917.000 ns ±  39.27 %    1000000
Collections V1 n=10_000, k=3          8667.000 ns ±  11.12 %     160989
Collections V1 n=10_000, k=100      315792.000 ns ±  10.40 %       4414
Collections V1 n=10_000, k=5_000  62222729.000 ns ±   0.54 %         22
Collections V1 n=10_000, k=10_000 58020854.000 ns ±   0.74 %         24
Collections V2 n=10, k=3              1125.000 ns ±  24.04 %    1000000
Collections V2 n=10_000, k=3         49375.000 ns ±   5.07 %      27055
Collections V2 n=10_000, k=100       53875.000 ns ±   4.84 %      24754
Collections V2 n=10_000, k=5_000    367520.500 ns ±   4.24 %       3912
Collections V2 n=10_000, k=10_000   574417.000 ns ±   4.31 %       2434
Collections V3 n=10, k=3               750.000 ns ±  29.83 %    1000000
Collections V3 n=10_000, k=3          4333.000 ns ±  12.16 %     320876
Collections V3 n=10_000, k=100       18792.000 ns ±   6.77 %      72123
Collections V3 n=10_000, k=5_000    490666.000 ns ±   2.17 %       2816
Collections V3 n=10_000, k=10_000   645792.000 ns ±   3.55 %       2183
```