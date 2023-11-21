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
name                            time           std        iterations
--------------------------------------------------------------------
Huggingface n=32_000, k=3       1255458.500 ns ±   1.72 %       1016
Huggingface n=32_000, k=10      1260417.000 ns ±   2.52 %       1122
Huggingface n=32_000, k=50      1269708.000 ns ±   1.32 %       1088
Huggingface n=32_000, k=100     1495000.000 ns ±   1.87 %        941
Huggingface n=65_000, k=3       2512270.500 ns ±   1.19 %        556
Huggingface n=65_000, k=10      2514250.000 ns ±   1.18 %        552
Huggingface n=65_000, k=50      2548417.000 ns ±   1.29 %        548
Huggingface n=65_000, k=100     2800875.000 ns ±   1.22 %        499
Huggingface n=128_000, k=3      4947625.000 ns ±   0.93 %        282
Huggingface n=128_000, k=10     5040458.500 ns ±   1.29 %        280
Huggingface n=128_000, k=50     4987791.500 ns ±   1.09 %        280
Huggingface n=128_000, k=100    5254834.000 ns ±   1.10 %        264

Accelerate n=32_000, k=3        1278625.000 ns ±   1.34 %       1093
Accelerate n=32_000, k=10       1258729.500 ns ±   1.05 %       1086
Accelerate n=32_000, k=50       1290375.000 ns ±   1.43 %       1089
Accelerate n=32_000, k=100      1309666.000 ns ±   1.51 %       1077
Accelerate n=65_000, k=3        2560624.500 ns ±   1.75 %        544
Accelerate n=65_000, k=10       2556584.000 ns ±   1.00 %        547
Accelerate n=65_000, k=50       2576979.000 ns ±   1.36 %        538
Accelerate n=65_000, k=100      2587438.000 ns ±   1.20 %        532
Accelerate n=128_000, k=3       5026666.000 ns ±   1.29 %        271
Accelerate n=128_000, k=10      5115375.000 ns ±   1.18 %        275
Accelerate n=128_000, k=50      5131667.000 ns ±  20.94 %        273
Accelerate n=128_000, k=100     5151166.000 ns ±   1.90 %        275

Collections V1 n=32_000, k=3    1262500.000 ns ±   1.95 %       1117
Collections V1 n=32_000, k=10   1273250.000 ns ±   1.19 %       1098
Collections V1 n=32_000, k=50   1375125.000 ns ±   1.36 %       1022
Collections V1 n=32_000, k=100  1663479.500 ns ±   1.90 %        842
Collections V1 n=65_000, k=3    2563583.000 ns ±   2.05 %        545
Collections V1 n=65_000, k=10   2574084.000 ns ±   0.96 %        543
Collections V1 n=65_000, k=50   2690500.000 ns ±   1.62 %        523
Collections V1 n=65_000, k=100  3005791.000 ns ±   2.23 %        465
Collections V1 n=128_000, k=3   5052167.000 ns ±   0.84 %        277
Collections V1 n=128_000, k=10  5060625.000 ns ±   1.00 %        275
Collections V1 n=128_000, k=50  5183667.000 ns ±   0.64 %        270
Collections V1 n=128_000, k=100 5538166.000 ns ±   1.38 %        253

Collections V2 n=32_000, k=3    1508542.000 ns ±   1.07 %        927
Collections V2 n=32_000, k=10   1509542.000 ns ±   1.07 %        928
Collections V2 n=32_000, k=50   1512458.000 ns ±   3.20 %        923
Collections V2 n=32_000, k=100  1516875.000 ns ±   1.48 %        913
Collections V2 n=65_000, k=3    3077104.000 ns ±   0.81 %        454
Collections V2 n=65_000, k=10   3074687.500 ns ±   0.79 %        454
Collections V2 n=65_000, k=50   3081250.000 ns ±   1.41 %        451
Collections V2 n=65_000, k=100  3085021.000 ns ±   1.58 %        454
Collections V2 n=128_000, k=3   6078479.000 ns ±   1.22 %        230
Collections V2 n=128_000, k=10  6075375.000 ns ±   1.55 %        230
Collections V2 n=128_000, k=50  6074770.500 ns ±   0.79 %        230
Collections V2 n=128_000, k=100 6097750.000 ns ±   1.07 %        229

Collections V3 n=32_000, k=3    1255917.000 ns ±   0.95 %       1114
Collections V3 n=32_000, k=10   1259041.000 ns ±   1.10 %       1099
Collections V3 n=32_000, k=50   1273625.000 ns ±   1.58 %       1098
Collections V3 n=32_000, k=100  1289125.000 ns ±   0.89 %       1077
Collections V3 n=65_000, k=3    2550458.000 ns ±   0.96 %        548
Collections V3 n=65_000, k=10   2555667.000 ns ±   2.84 %        547
Collections V3 n=65_000, k=50   2569958.000 ns ±   0.97 %        543
Collections V3 n=65_000, k=100  2588271.000 ns ±   0.90 %        540
Collections V3 n=128_000, k=3   5024104.500 ns ±   1.09 %        278
Collections V3 n=128_000, k=10  5025541.500 ns ±   0.84 %        278
Collections V3 n=128_000, k=50  5043416.000 ns ±   0.77 %        277
Collections V3 n=128_000, k=100 5066167.000 ns ±   0.90 %        275
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