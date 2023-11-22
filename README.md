# TopK

Comparasion of different implementations of topk function.

* Huggingface - original implementation of topk function taken from `https://github.com/huggingface/swift-transformers` repo
* Accelerate - implementation of topk function using `BNNS.applyTopK` from `Accelerate` framework
* Collections V1 - implementation of topk function using `Deque` from `swift-collections` package
* Collections V2 - implementation of topk function using `Heap` from `swift-collections` package and putting all elements into heap
* Collections V3 - implementation of topk function using `Heap` from `swift-collections` package and putting only k elements into heap

## Usage

To run Google Benchmark:

```
$ swift run -c release TopKCLI
```

To run XCTest Benchmark:

```
$ swift test 2>&1 | xcbeautify
```

## Results

MacBook Air M1 2020, 16GB RAM

Google Benchmark results

```
name                           time          std         iterations
-------------------------------------------------------------------
Huggingface.n=32_000, k=3       15291.500 ns ±   7.92 %        1000
Huggingface.n=32_000, k=10      16292.000 ns ±  13.23 %        1000
Huggingface.n=32_000, k=50      46958.000 ns ±   5.46 %        1000
Huggingface.n=32_000, k=100    244812.500 ns ±   2.50 %        1000
Huggingface.n=65_000, k=3       31583.000 ns ±   6.38 %        1000
Huggingface.n=65_000, k=10      33291.000 ns ±   6.00 %        1000
Huggingface.n=65_000, k=50      68708.000 ns ±   5.41 %        1000
Huggingface.n=65_000, k=100    291937.500 ns ±   4.00 %        1000
Huggingface.n=128_000, k=3      63750.000 ns ±   5.47 %        1000
Huggingface.n=128_000, k=10     67417.000 ns ±   3.93 %        1000
Huggingface.n=128_000, k=50     97500.000 ns ±   4.97 %        1000
Huggingface.n=128_000, k=100   352417.000 ns ±  19.57 %        1000

Accelerate.n=32_000, k=3        34458.000 ns ±   9.30 %        1000
Accelerate.n=32_000, k=10       36687.500 ns ±  14.66 %        1000
Accelerate.n=32_000, k=50       44584.000 ns ±  17.83 %        1000
Accelerate.n=32_000, k=100      66812.500 ns ±  16.82 %        1000
Accelerate.n=65_000, k=3        70708.000 ns ±  17.80 %        1000
Accelerate.n=65_000, k=10       68333.000 ns ±   8.20 %        1000
Accelerate.n=65_000, k=50       79792.000 ns ± 234.94 %        1000
Accelerate.n=65_000, k=100     105875.000 ns ±  20.15 %        1000
Accelerate.n=128_000, k=3      136833.500 ns ±   6.74 %        1000
Accelerate.n=128_000, k=10     133459.000 ns ±   9.95 %        1000
Accelerate.n=128_000, k=50     152375.000 ns ±  23.88 %        1000
Accelerate.n=128_000, k=100    178125.000 ns ± 1752.46 %       1000

CollectionsV1.n=32_000, k=3     19958.000 ns ±  58.46 %        1000
CollectionsV1.n=32_000, k=10    29500.000 ns ±   5.23 %        1000
CollectionsV1.n=32_000, k=50   140459.000 ns ±   4.17 %        1000
CollectionsV1.n=32_000, k=100  393312.500 ns ±   6.86 %        1000
CollectionsV1.n=65_000, k=3     41084.000 ns ±   8.14 %        1000
CollectionsV1.n=65_000, k=10    45875.000 ns ±   6.62 %        1000
CollectionsV1.n=65_000, k=50   166958.000 ns ±   3.52 %        1000
CollectionsV1.n=65_000, k=100  454166.500 ns ±   2.30 %        1000
CollectionsV1.n=128_000, k=3    69833.000 ns ±   5.66 %        1000
CollectionsV1.n=128_000, k=10   78958.000 ns ±   5.09 %        1000
CollectionsV1.n=128_000, k=50  192250.000 ns ±   3.96 %        1000
CollectionsV1.n=128_000, k=100 536167.000 ns ±   2.61 %        1000

CollectionsV2.n=32_000, k=3    198041.000 ns ±  10.84 %        1000
CollectionsV2.n=32_000, k=10   195312.500 ns ±  36.19 %        1000
CollectionsV2.n=32_000, k=50   194854.500 ns ±   5.48 %        1000
CollectionsV2.n=32_000, k=100  200625.000 ns ±  26.22 %        1000
CollectionsV2.n=65_000, k=3    486541.500 ns ±  11.98 %        1000
CollectionsV2.n=65_000, k=10   502229.000 ns ±   2.83 %        1000
CollectionsV2.n=65_000, k=50   498000.000 ns ±   7.68 %        1000
CollectionsV2.n=65_000, k=100  492459.000 ns ±   3.67 %        1000
CollectionsV2.n=128_000, k=3   975396.000 ns ±   3.90 %        1000
CollectionsV2.n=128_000, k=10  986937.000 ns ±   3.36 %        1000
CollectionsV2.n=128_000, k=50  986458.000 ns ±   6.47 %        1000
CollectionsV2.n=128_000, k=100 979417.000 ns ±   2.69 %        1000

CollectionsV3.n=32_000, k=3     11500.000 ns ±  11.20 %        1000
CollectionsV3.n=32_000, k=10    13375.000 ns ±  12.91 %        1000
CollectionsV3.n=32_000, k=50    22708.000 ns ±   8.86 %        1000
CollectionsV3.n=32_000, k=100   31041.000 ns ±   9.28 %        1000
CollectionsV3.n=65_000, k=3     21833.000 ns ±   7.25 %        1000
CollectionsV3.n=65_000, k=10    24500.000 ns ±   7.48 %        1000
CollectionsV3.n=65_000, k=50    34916.000 ns ±   6.71 %        1000
CollectionsV3.n=65_000, k=100   46792.000 ns ±   6.02 %        1000
CollectionsV3.n=128_000, k=3    42042.000 ns ±   7.56 %        1000
CollectionsV3.n=128_000, k=10   44541.000 ns ±   5.74 %        1000
CollectionsV3.n=128_000, k=50   57750.000 ns ±   5.39 %        1000
CollectionsV3.n=128_000, k=100  71458.000 ns ±   5.20 %        1000
```

XCTests results

```
TestTopKAcceleratePerformance
    ◷ test_N32_000_K10 measured (134.349 kB ±4.878% -- Memory Physical)
    ◷ test_N32_000_K10 measured (0.000 s ±1.825% -- Clock Monotonic Time)
    ◷ test_N32_000_K10 measured (824.603 kC ±3.094% -- CPU Cycles)
    ◷ test_N32_000_K10 measured (0.000 s ±3.085% -- CPU Time)
    ◷ test_N32_000_K10 measured (3277.750 kI ±2.288% -- CPU Instructions Retired)
    ◷ test_N32_000_K10 measured (24260.006 kB ±0.793% -- Memory Peak Physical)
    ✔ test_N32_000_K10 (0.023 seconds)
    ◷ test_N32_000_K3 measured (131.072 kB ±0.000% -- Memory Physical)
    ◷ test_N32_000_K3 measured (0.000 s ±4.586% -- Clock Monotonic Time)
    ◷ test_N32_000_K3 measured (842.385 kC ±3.142% -- CPU Cycles)
    ◷ test_N32_000_K3 measured (0.000 s ±2.600% -- CPU Time)
    ◷ test_N32_000_K3 measured (3289.937 kI ±0.971% -- CPU Instructions Retired)
    ◷ test_N32_000_K3 measured (26052.416 kB ±0.712% -- Memory Peak Physical)
    ✔ test_N32_000_K3 (0.023 seconds)
    ◷ test_N65_000_K10 measured (209.715 kB ±50.000% -- Memory Physical)
    ◷ test_N65_000_K10 measured (0.000 s ±9.826% -- Clock Monotonic Time)
    ◷ test_N65_000_K10 measured (922.338 kC ±0.454% -- CPU Cycles)
    ◷ test_N65_000_K10 measured (0.000 s ±0.411% -- CPU Time)
    ◷ test_N65_000_K10 measured (3822.447 kI ±1.123% -- CPU Instructions Retired)
    ◷ test_N65_000_K10 measured (27772.736 kB ±1.335% -- Memory Peak Physical)
    ✔ test_N65_000_K10 (0.041 seconds)
    ◷ testN_65_000_K3 measured (262.144 kB ±0.000% -- Memory Physical)
    ◷ testN_65_000_K3 measured (0.000 s ±2.351% -- Clock Monotonic Time)
    ◷ testN_65_000_K3 measured (943.947 kC ±1.808% -- CPU Cycles)
    ◷ testN_65_000_K3 measured (0.000 s ±1.855% -- CPU Time)
    ◷ testN_65_000_K3 measured (3800.556 kI ±1.883% -- CPU Instructions Retired)
    ◷ testN_65_000_K3 measured (36325.184 kB ±1.021% -- Memory Peak Physical)
    ✔ testN_65_000_K3 (0.042 seconds)
TestTopKCollectionsV1Performance
    ◷ test_N32_000_K10 measured (3.277 kB ±200.000% -- Memory Physical)
    ◷ test_N32_000_K10 measured (0.006 s ±0.629% -- Clock Monotonic Time)
    ◷ test_N32_000_K10 measured (19115.906 kC ±0.117% -- CPU Cycles)
    ◷ test_N32_000_K10 measured (0.006 s ±0.645% -- CPU Time)
    ◷ test_N32_000_K10 measured (107715.300 kI ±0.068% -- CPU Instructions Retired)
    ◷ test_N32_000_K10 measured (37465.510 kB ±0.035% -- Memory Peak Physical)
    ✔ test_N32_000_K10 (0.058 seconds)
    ◷ test_N32_000_K3 measured (0.000 kB ±0.000% -- Memory Physical)
    ◷ test_N32_000_K3 measured (0.005 s ±0.283% -- Clock Monotonic Time)
    ◷ test_N32_000_K3 measured (17772.162 kC ±0.059% -- CPU Cycles)
    ◷ test_N32_000_K3 measured (0.005 s ±0.079% -- CPU Time)
    ◷ test_N32_000_K3 measured (100659.196 kI ±0.078% -- CPU Instructions Retired)
    ◷ test_N32_000_K3 measured (37504.832 kB ±0.000% -- Memory Peak Physical)
    ✔ test_N32_000_K3 (0.055 seconds)
    ◷ test_N65_000_K10 measured (0.000 kB ±0.000% -- Memory Physical)
    ◷ test_N65_000_K10 measured (0.011 s ±1.510% -- Clock Monotonic Time)
    ◷ test_N65_000_K10 measured (36421.894 kC ±0.034% -- CPU Cycles)
    ◷ test_N65_000_K10 measured (0.011 s ±0.048% -- CPU Time)
    ◷ test_N65_000_K10 measured (207327.767 kI ±0.009% -- CPU Instructions Retired)
    ◷ test_N65_000_K10 measured (37521.216 kB ±0.000% -- Memory Peak Physical)
    ✔ test_N65_000_K10 (0.108 seconds)
    ◷ testN_65_000_K3 measured (0.000 kB ±0.000% -- Memory Physical)
    ◷ testN_65_000_K3 measured (0.011 s ±0.359% -- Clock Monotonic Time)
    ◷ testN_65_000_K3 measured (34974.280 kC ±0.064% -- CPU Cycles)
    ◷ testN_65_000_K3 measured (0.011 s ±0.270% -- CPU Time)
    ◷ testN_65_000_K3 measured (199759.255 kI ±0.030% -- CPU Instructions Retired)
    ◷ testN_65_000_K3 measured (38111.040 kB ±0.000% -- Memory Peak Physical)
    ✔ testN_65_000_K3 (0.105 seconds)
TestTopKCollectionsV2Performance
    ◷ test_N32_000_K10 measured (108.134 kB ±200.000% -- Memory Physical)
    ◷ test_N32_000_K10 measured (0.008 s ±0.966% -- Clock Monotonic Time)
    ◷ test_N32_000_K10 measured (25198.134 kC ±0.410% -- CPU Cycles)
    ◷ test_N32_000_K10 measured (0.008 s ±0.973% -- CPU Time)
    ◷ test_N32_000_K10 measured (134346.711 kI ±0.060% -- CPU Instructions Retired)
    ◷ test_N32_000_K10 measured (38717.248 kB ±0.000% -- Memory Peak Physical)
    ✔ test_N32_000_K10 (0.070 seconds)
    ◷ test_N32_000_K3 measured (0.000 kB ±0.000% -- Memory Physical)
    ◷ test_N32_000_K3 measured (0.007 s ±0.028% -- Clock Monotonic Time)
    ◷ test_N32_000_K3 measured (25059.125 kC ±0.059% -- CPU Cycles)
    ◷ test_N32_000_K3 measured (0.008 s ±0.069% -- CPU Time)
    ◷ test_N32_000_K3 measured (134221.113 kI ±0.024% -- CPU Instructions Retired)
    ◷ test_N32_000_K3 measured (37144.384 kB ±0.000% -- Memory Peak Physical)
    ✔ test_N32_000_K3 (0.068 seconds)
    ◷ test_N65_000_K10 measured (0.015 s ±0.274% -- Clock Monotonic Time)
    ◷ test_N65_000_K10 measured (50348.221 kC ±0.229% -- CPU Cycles)
    ◷ test_N65_000_K10 measured (0.015 s ±0.231% -- CPU Time)
    ◷ test_N65_000_K10 measured (269737.268 kI ±0.060% -- CPU Instructions Retired)
    ◷ test_N65_000_K10 measured (38805.722 kB ±2.162% -- Memory Peak Physical)
    ✔ test_N65_000_K10 (0.134 seconds)
    ◷ testN_65_000_K3 measured (0.000 kB ±0.000% -- Memory Physical)
    ◷ testN_65_000_K3 measured (0.015 s ±0.810% -- Clock Monotonic Time)
    ◷ testN_65_000_K3 measured (50407.598 kC ±0.193% -- CPU Cycles)
    ◷ testN_65_000_K3 measured (0.016 s ±0.812% -- CPU Time)
    ◷ testN_65_000_K3 measured (269494.707 kI ±0.064% -- CPU Instructions Retired)
    ◷ testN_65_000_K3 measured (37128.000 kB ±0.000% -- Memory Peak Physical)
    ✔ testN_65_000_K3 (0.134 seconds)
TestTopKCollectionsV3Performance
    ◷ test_N32_000_K10 measured (0.000 kB ±0.000% -- Memory Physical)
    ◷ test_N32_000_K10 measured (0.005 s ±1.576% -- Clock Monotonic Time)
    ◷ test_N32_000_K10 measured (16665.546 kC ±0.073% -- CPU Cycles)
    ◷ test_N32_000_K10 measured (0.005 s ±0.674% -- CPU Time)
    ◷ test_N32_000_K10 measured (95912.738 kI ±0.064% -- CPU Instructions Retired)
    ◷ test_N32_000_K10 measured (37128.000 kB ±0.000% -- Memory Peak Physical)
    ✔ test_N32_000_K10 (0.053 seconds)
    ◷ test_N32_000_K3 measured (0.000 kB ±0.000% -- Memory Physical)
    ◷ test_N32_000_K3 measured (0.005 s ±0.495% -- Clock Monotonic Time)
    ◷ test_N32_000_K3 measured (16507.968 kC ±0.087% -- CPU Cycles)
    ◷ test_N32_000_K3 measured (0.005 s ±0.397% -- CPU Time)
    ◷ test_N32_000_K3 measured (95204.424 kI ±0.006% -- CPU Instructions Retired)
    ◷ test_N32_000_K3 measured (37128.000 kB ±0.000% -- Memory Peak Physical)
    ✔ test_N32_000_K3 (0.053 seconds)
    ◷ test_N65_000_K10 measured (0.000 kB ±0.000% -- Memory Physical)
    ◷ test_N65_000_K10 measured (0.010 s ±0.455% -- Clock Monotonic Time)
    ◷ test_N65_000_K10 measured (32872.376 kC ±0.046% -- CPU Cycles)
    ◷ test_N65_000_K10 measured (0.010 s ±0.341% -- CPU Time)
    ◷ test_N65_000_K10 measured (190988.612 kI ±0.028% -- CPU Instructions Retired)
    ◷ test_N65_000_K10 measured (37128.000 kB ±0.000% -- Memory Peak Physical)
    ✔ test_N65_000_K10 (0.101 seconds)
    ◷ testN_65_000_K3 measured (0.000 kB ±0.000% -- Memory Physical)
    ◷ testN_65_000_K3 measured (0.010 s ±0.134% -- Clock Monotonic Time)
    ◷ testN_65_000_K3 measured (32705.496 kC ±0.044% -- CPU Cycles)
    ◷ testN_65_000_K3 measured (0.010 s ±0.035% -- CPU Time)
    ◷ testN_65_000_K3 measured (190292.967 kI ±0.029% -- CPU Instructions Retired)
    ◷ testN_65_000_K3 measured (37128.000 kB ±0.000% -- Memory Peak Physical)
    ✔ testN_65_000_K3 (0.101 seconds)
TestTopKHuggingfacePerformance
    ◷ test_N32_000_K10 measured (0.000 kB ±0.000% -- Memory Physical)
    ◷ test_N32_000_K10 measured (0.005 s ±0.355% -- Clock Monotonic Time)
    ◷ test_N32_000_K10 measured (17077.896 kC ±0.037% -- CPU Cycles)
    ◷ test_N32_000_K10 measured (0.005 s ±0.051% -- CPU Time)
    ◷ test_N32_000_K10 measured (97327.237 kI ±0.042% -- CPU Instructions Retired)
    ◷ test_N32_000_K10 measured (37128.000 kB ±0.000% -- Memory Peak Physical)
    ✔ test_N32_000_K10 (0.054 seconds)
    ◷ test_N32_000_K3 measured (0.000 kB ±0.000% -- Memory Physical)
    ◷ test_N32_000_K3 measured (0.005 s ±0.697% -- Clock Monotonic Time)
    ◷ test_N32_000_K3 measured (16694.147 kC ±0.053% -- CPU Cycles)
    ◷ test_N32_000_K3 measured (0.005 s ±0.675% -- CPU Time)
    ◷ test_N32_000_K3 measured (95149.377 kI ±0.052% -- CPU Instructions Retired)
    ◷ test_N32_000_K3 measured (37128.000 kB ±0.000% -- Memory Peak Physical)
    ✔ test_N32_000_K3 (0.053 seconds)
    ◷ test_N65_000_K10 measured (0.000 kB ±0.000% -- Memory Physical)
    ◷ test_N65_000_K10 measured (0.010 s ±0.606% -- Clock Monotonic Time)
    ◷ test_N65_000_K10 measured (33565.820 kC ±0.050% -- CPU Cycles)
    ◷ test_N65_000_K10 measured (0.010 s ±0.636% -- CPU Time)
    ◷ test_N65_000_K10 measured (192613.898 kI ±0.045% -- CPU Instructions Retired)
    ◷ test_N65_000_K10 measured (37128.000 kB ±0.000% -- Memory Peak Physical)
    ✔ test_N65_000_K10 (0.103 seconds)
    ◷ testN_65_000_K3 measured (0.000 kB ±0.000% -- Memory Physical)
    ◷ testN_65_000_K3 measured (0.010 s ±0.554% -- Clock Monotonic Time)
    ◷ testN_65_000_K3 measured (33124.774 kC ±0.065% -- CPU Cycles)
    ◷ testN_65_000_K3 measured (0.010 s ±0.502% -- CPU Time)
    ◷ testN_65_000_K3 measured (190072.260 kI ±0.045% -- CPU Instructions Retired)
    ◷ testN_65_000_K3 measured (37128.000 kB ±0.000% -- Memory Peak Physical)
    ✔ testN_65_000_K3 (0.102 seconds)
```