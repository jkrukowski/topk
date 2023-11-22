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

Google Benchmark results (1000 iterations)

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

XCTests results (1000 iterations)

```
TestTopKHuggingfacePerformance
    ◷ test_N128_000_K10 measured (5.931 kB ±470.827% -- Memory Physical)
    ◷ test_N128_000_K10 measured (0.021 s ±11.319% -- Clock Monotonic Time)
    ◷ test_N128_000_K10 measured (65334.673 kC ±2.812% -- CPU Cycles)
    ◷ test_N128_000_K10 measured (0.021 s ±5.733% -- CPU Time)
    ◷ test_N128_000_K10 measured (374111.373 kI ±0.180% -- CPU Instructions Retired)
    ◷ test_N128_000_K10 measured (3750482.570 kB ±0.101% -- Memory Peak Physical)
    ✔ test_N128_000_K10 (22.131 seconds)
    ◷ test_N128_000_K100 measured (1.491 kB ±815.499% -- Memory Physical)
    ◷ test_N128_000_K100 measured (0.023 s ±1.532% -- Clock Monotonic Time)
    ◷ test_N128_000_K100 measured (73359.835 kC ±0.391% -- CPU Cycles)
    ◷ test_N128_000_K100 measured (0.023 s ±0.890% -- CPU Time)
    ◷ test_N128_000_K100 measured (428316.860 kI ±0.019% -- CPU Instructions Retired)
    ◷ test_N128_000_K100 measured (3745551.232 kB ±0.023% -- Memory Peak Physical)
    ✔ test_N128_000_K100 (24.083 seconds)
    ◷ test_N128_000_K50 measured (8.438 kB ±1504.068% -- Memory Physical)
    ◷ test_N128_000_K50 measured (0.023 s ±3.115% -- Clock Monotonic Time)
    ◷ test_N128_000_K50 measured (73664.946 kC ±0.591% -- CPU Cycles)
    ◷ test_N128_000_K50 measured (0.023 s ±1.562% -- CPU Time)
    ◷ test_N128_000_K50 measured (429783.244 kI ±0.026% -- CPU Instructions Retired)
    ◷ test_N128_000_K50 measured (3746847.944 kB ±0.096% -- Memory Peak Physical)
    ✔ test_N128_000_K50 (24.284 seconds)
    ◷ test_N32_000_K10 measured (1.098 kB ±418.206% -- Memory Physical)
    ◷ test_N32_000_K10 measured (0.005 s ±22.190% -- Clock Monotonic Time)
    ◷ test_N32_000_K10 measured (17123.579 kC ±4.641% -- CPU Cycles)
    ◷ test_N32_000_K10 measured (0.005 s ±6.811% -- CPU Time)
    ◷ test_N32_000_K10 measured (97487.674 kI ±0.647% -- CPU Instructions Retired)
    ◷ test_N32_000_K10 measured (3745765.879 kB ±0.018% -- Memory Peak Physical)
    ✔ test_N32_000_K10 (6.067 seconds)
    ◷ test_N32_000_K100 measured (3.228 kB ±1067.945% -- Memory Physical)
    ◷ test_N32_000_K100 measured (0.008 s ±12.969% -- Clock Monotonic Time)
    ◷ test_N32_000_K100 measured (24877.074 kC ±4.087% -- CPU Cycles)
    ◷ test_N32_000_K100 measured (0.008 s ±7.896% -- CPU Time)
    ◷ test_N32_000_K100 measured (143627.598 kI ±0.157% -- CPU Instructions Retired)
    ◷ test_N32_000_K100 measured (3747361.762 kB ±0.056% -- Memory Peak Physical)
    ✔ test_N32_000_K100 (8.807 seconds)
    ◷ test_N32_000_K3 measured (1.081 kB ±388.198% -- Memory Physical)
    ◷ test_N32_000_K3 measured (0.005 s ±3.267% -- Clock Monotonic Time)
    ◷ test_N32_000_K3 measured (16652.384 kC ±1.276% -- CPU Cycles)
    ◷ test_N32_000_K3 measured (0.005 s ±2.557% -- CPU Time)
    ◷ test_N32_000_K3 measured (95065.865 kI ±0.100% -- CPU Instructions Retired)
    ◷ test_N32_000_K3 measured (3745925.164 kB ±0.019% -- Memory Peak Physical)
    ✔ test_N32_000_K3 (5.830 seconds)
    ◷ test_N32_000_K50 measured (0.770 kB ±990.656% -- Memory Physical)
    ◷ test_N32_000_K50 measured (0.008 s ±6.130% -- Clock Monotonic Time)
    ◷ test_N32_000_K50 measured (24410.843 kC ±2.038% -- CPU Cycles)
    ◷ test_N32_000_K50 measured (0.008 s ±4.012% -- CPU Time)
    ◷ test_N32_000_K50 measured (142416.819 kI ±0.459% -- CPU Instructions Retired)
    ◷ test_N32_000_K50 measured (3745373.744 kB ±0.011% -- Memory Peak Physical)
    ✔ test_N32_000_K50 (8.418 seconds)
    ◷ test_N65_000_K10 measured (4.227 kB ±1125.329% -- Memory Physical)
    ◷ test_N65_000_K10 measured (0.010 s ±2.934% -- Clock Monotonic Time)
    ◷ test_N65_000_K10 measured (33538.741 kC ±1.005% -- CPU Cycles)
    ◷ test_N65_000_K10 measured (0.011 s ±2.483% -- CPU Time)
    ◷ test_N65_000_K10 measured (192556.703 kI ±0.043% -- CPU Instructions Retired)
    ◷ test_N65_000_K10 measured (3748284.100 kB ±0.064% -- Memory Peak Physical)
    ✔ test_N65_000_K10 (11.380 seconds)
    ◷ test_N65_000_K100 measured (0.393 kB ±637.704% -- Memory Physical)
    ◷ test_N65_000_K100 measured (0.013 s ±1.298% -- Clock Monotonic Time)
    ◷ test_N65_000_K100 measured (41592.197 kC ±0.387% -- CPU Cycles)
    ◷ test_N65_000_K100 measured (0.013 s ±0.904% -- CPU Time)
    ◷ test_N65_000_K100 measured (243590.950 kI ±0.032% -- CPU Instructions Retired)
    ◷ test_N65_000_K100 measured (3745609.035 kB ±0.005% -- Memory Peak Physical)
    ✔ test_N65_000_K100 (13.870 seconds)
    ◷ test_N65_000_K50 measured (2.294 kB ±2130.009% -- Memory Physical)
    ◷ test_N65_000_K50 measured (0.013 s ±3.206% -- Clock Monotonic Time)
    ◷ test_N65_000_K50 measured (41454.074 kC ±0.891% -- CPU Cycles)
    ◷ test_N65_000_K50 measured (0.013 s ±2.237% -- CPU Time)
    ◷ test_N65_000_K50 measured (242342.723 kI ±0.036% -- CPU Instructions Retired)
    ◷ test_N65_000_K50 measured (3745405.447 kB ±0.020% -- Memory Peak Physical)
    ✔ test_N65_000_K50 (13.913 seconds)
    ◷ testN_128_000_K3 measured (1.688 kB ±1055.707% -- Memory Physical)
    ◷ testN_128_000_K3 measured (0.020 s ±1.866% -- Clock Monotonic Time)
    ◷ testN_128_000_K3 measured (64191.300 kC ±0.570% -- CPU Cycles)
    ◷ testN_128_000_K3 measured (0.020 s ±1.392% -- CPU Time)
    ◷ testN_128_000_K3 measured (371180.986 kI ±0.021% -- CPU Instructions Retired)
    ◷ testN_128_000_K3 measured (3746855.038 kB ±0.030% -- Memory Peak Physical)
    ✔ testN_128_000_K3 (21.226 seconds)
    ◷ testN_65_000_K3 measured (0.180 kB ±1249.099% -- Memory Physical)
    ◷ testN_65_000_K3 measured (0.011 s ±11.673% -- Clock Monotonic Time)
    ◷ testN_65_000_K3 measured (33354.165 kC ±3.027% -- CPU Cycles)
    ◷ testN_65_000_K3 measured (0.011 s ±6.085% -- CPU Time)
    ◷ testN_65_000_K3 measured (189989.370 kI ±0.100% -- CPU Instructions Retired)
    ◷ testN_65_000_K3 measured (3745346.055 kB ±0.002% -- Memory Peak Physical)
    ✔ testN_65_000_K3 (11.553 seconds)

TestTopKAcceleratePerformance
    ◷ test_N128_000_K10 measured (534.005 kB ±2.544% -- Memory Physical)
    ◷ test_N128_000_K10 measured (0.000 s ±6.960% -- Clock Monotonic Time)
    ◷ test_N128_000_K10 measured (1151.154 kC ±3.003% -- CPU Cycles)
    ◷ test_N128_000_K10 measured (0.000 s ±3.142% -- CPU Time)
    ◷ test_N128_000_K10 measured (4894.297 kI ±1.378% -- CPU Instructions Retired)
    ◷ test_N128_000_K10 measured (284881.776 kB ±55.001% -- Memory Peak Physical)
    ✔ test_N128_000_K10 (1.076 seconds)
    ◷ test_N128_000_K100 measured (516.195 kB ±14.287% -- Memory Physical)
    ◷ test_N128_000_K100 measured (0.000 s ±57.689% -- Clock Monotonic Time)
    ◷ test_N128_000_K100 measured (1200.777 kC ±3.262% -- CPU Cycles)
    ◷ test_N128_000_K100 measured (0.000 s ±3.308% -- CPU Time)
    ◷ test_N128_000_K100 measured (5036.340 kI ±1.480% -- CPU Instructions Retired)
    ◷ test_N128_000_K100 measured (814622.284 kB ±18.709% -- Memory Peak Physical)
    ✔ test_N128_000_K100 (0.892 seconds)
    ◷ test_N128_000_K50 measured (530.613 kB ±14.614% -- Memory Physical)
    ◷ test_N128_000_K50 measured (0.000 s ±17.790% -- Clock Monotonic Time)
    ◷ test_N128_000_K50 measured (1220.237 kC ±3.447% -- CPU Cycles)
    ◷ test_N128_000_K50 measured (0.000 s ±3.786% -- CPU Time)
    ◷ test_N128_000_K50 measured (5020.494 kI ±1.813% -- CPU Instructions Retired)
    ◷ test_N128_000_K50 measured (1345358.389 kB ±11.660% -- Memory Peak Physical)
    ✔ test_N128_000_K50 (0.910 seconds)
    ◷ test_N32_000_K10 measured (131.121 kB ±13.614% -- Memory Physical)
    ◷ test_N32_000_K10 measured (0.000 s ±18.419% -- Clock Monotonic Time)
    ◷ test_N32_000_K10 measured (826.213 kC ±4.547% -- CPU Cycles)
    ◷ test_N32_000_K10 measured (0.000 s ±5.092% -- CPU Time)
    ◷ test_N32_000_K10 measured (3205.007 kI ±3.130% -- CPU Instructions Retired)
    ◷ test_N32_000_K10 measured (1667503.491 kB ±2.330% -- Memory Peak Physical)
    ✔ test_N32_000_K10 (0.740 seconds)
    ◷ test_N32_000_K100 measured (131.089 kB ±7.654% -- Memory Physical)
    ◷ test_N32_000_K100 measured (0.000 s ±11.205% -- Clock Monotonic Time)
    ◷ test_N32_000_K100 measured (861.970 kC ±3.217% -- CPU Cycles)
    ◷ test_N32_000_K100 measured (0.000 s ±3.334% -- CPU Time)
    ◷ test_N32_000_K100 measured (3425.618 kI ±2.367% -- CPU Instructions Retired)
    ◷ test_N32_000_K100 measured (1799451.341 kB ±2.111% -- Memory Peak Physical)
    ✔ test_N32_000_K100 (0.727 seconds)
    ◷ test_N32_000_K3 measured (130.843 kB ±5.708% -- Memory Physical)
    ◷ test_N32_000_K3 measured (0.000 s ±15.740% -- Clock Monotonic Time)
    ◷ test_N32_000_K3 measured (827.623 kC ±3.223% -- CPU Cycles)
    ◷ test_N32_000_K3 measured (0.000 s ±3.386% -- CPU Time)
    ◷ test_N32_000_K3 measured (3305.899 kI ±2.335% -- CPU Instructions Retired)
    ◷ test_N32_000_K3 measured (1931567.759 kB ±1.964% -- Memory Peak Physical)
    ✔ test_N32_000_K3 (0.714 seconds)
    ◷ test_N32_000_K50 measured (131.597 kB ±4.296% -- Memory Physical)
    ◷ test_N32_000_K50 measured (0.000 s ±12.007% -- Clock Monotonic Time)
    ◷ test_N32_000_K50 measured (867.213 kC ±2.937% -- CPU Cycles)
    ◷ test_N32_000_K50 measured (0.000 s ±3.138% -- CPU Time)
    ◷ test_N32_000_K50 measured (3463.439 kI ±1.988% -- CPU Instructions Retired)
    ◷ test_N32_000_K50 measured (2063595.821 kB ±1.851% -- Memory Peak Physical)
    ✔ test_N32_000_K50 (0.727 seconds)
    ◷ test_N65_000_K10 measured (262.456 kB ±1.094% -- Memory Physical)
    ◷ test_N65_000_K10 measured (0.000 s ±10.944% -- Clock Monotonic Time)
    ◷ test_N65_000_K10 measured (939.808 kC ±3.172% -- CPU Cycles)
    ◷ test_N65_000_K10 measured (0.000 s ±3.341% -- CPU Time)
    ◷ test_N65_000_K10 measured (3868.731 kI ±1.600% -- CPU Instructions Retired)
    ◷ test_N65_000_K10 measured (2262096.769 kB ±3.353% -- Memory Peak Physical)
    ✔ test_N65_000_K10 (0.765 seconds)
    ◷ test_N65_000_K100 measured (268.125 kB ±23.869% -- Memory Physical)
    ◷ test_N65_000_K100 measured (0.000 s ±76.194% -- Clock Monotonic Time)
    ◷ test_N65_000_K100 measured (988.064 kC ±3.847% -- CPU Cycles)
    ◷ test_N65_000_K100 measured (0.000 s ±4.341% -- CPU Time)
    ◷ test_N65_000_K100 measured (3994.692 kI ±2.007% -- CPU Instructions Retired)
    ◷ test_N65_000_K100 measured (2526177.649 kB ±3.067% -- Memory Peak Physical)
    ✔ test_N65_000_K100 (0.790 seconds)
    ◷ test_N65_000_K50 measured (268.289 kB ±24.435% -- Memory Physical)
    ◷ test_N65_000_K50 measured (0.000 s ±68.271% -- Clock Monotonic Time)
    ◷ test_N65_000_K50 measured (984.269 kC ±3.324% -- CPU Cycles)
    ◷ test_N65_000_K50 measured (0.000 s ±3.423% -- CPU Time)
    ◷ test_N65_000_K50 measured (3999.813 kI ±1.859% -- CPU Instructions Retired)
    ◷ test_N65_000_K50 measured (2794720.471 kB ±2.843% -- Memory Peak Physical)
    ✔ test_N65_000_K50 (0.788 seconds)
    ◷ testN_128_000_K3 measured (526.206 kB ±1.771% -- Memory Physical)
    ◷ testN_128_000_K3 measured (0.000 s ±53.641% -- Clock Monotonic Time)
    ◷ testN_128_000_K3 measured (1161.587 kC ±4.625% -- CPU Cycles)
    ◷ testN_128_000_K3 measured (0.000 s ±5.647% -- CPU Time)
    ◷ testN_128_000_K3 measured (4829.608 kI ±1.997% -- CPU Instructions Retired)
    ◷ testN_128_000_K3 measured (3187534.869 kB ±4.782% -- Memory Peak Physical)
    ✔ testN_128_000_K3 (0.877 seconds)
    ◷ testN_65_000_K3 measured (261.899 kB ±4.609% -- Memory Physical)
    ◷ testN_65_000_K3 measured (0.000 s ±16.062% -- Clock Monotonic Time)
    ◷ testN_65_000_K3 measured (942.323 kC ±4.419% -- CPU Cycles)
    ◷ testN_65_000_K3 measured (0.000 s ±5.313% -- CPU Time)
    ◷ testN_65_000_K3 measured (3822.850 kI ±2.148% -- CPU Instructions Retired)
    ◷ testN_65_000_K3 measured (3579800.285 kB ±2.116% -- Memory Peak Physical)
    ✔ testN_65_000_K3 (0.782 seconds)

TestTopKCollectionsV1Performance
    ◷ test_N128_000_K10 measured (1.540 kB ±907.169% -- Memory Physical)
    ◷ test_N128_000_K10 measured (0.021 s ±4.328% -- Clock Monotonic Time)
    ◷ test_N128_000_K10 measured (69299.526 kC ±0.938% -- CPU Cycles)
    ◷ test_N128_000_K10 measured (0.021 s ±2.303% -- CPU Time)
    ◷ test_N128_000_K10 measured (397427.609 kI ±0.089% -- CPU Instructions Retired)
    ◷ test_N128_000_K10 measured (3712708.579 kB ±0.029% -- Memory Peak Physical)
    ✔ test_N128_000_K10 (22.519 seconds)
    ◷ test_N128_000_K100 measured (5.521 kB ±1294.579% -- Memory Physical)
    ◷ test_N128_000_K100 measured (0.034 s ±55.866% -- Clock Monotonic Time)
    ◷ test_N128_000_K100 measured (105690.080 kC ±2.766% -- CPU Cycles)
    ◷ test_N128_000_K100 measured (0.033 s ±5.763% -- CPU Time)
    ◷ test_N128_000_K100 measured (597320.084 kI ±0.099% -- CPU Instructions Retired)
    ◷ test_N128_000_K100 measured (3717253.861 kB ±0.097% -- Memory Peak Physical)
    ✔ test_N128_000_K100 (35.798 seconds)
    ◷ test_N128_000_K50 measured (8.929 kB ±1850.575% -- Memory Physical)
    ◷ test_N128_000_K50 measured (0.032 s ±8.453% -- Clock Monotonic Time)
    ◷ test_N128_000_K50 measured (100084.490 kC ±1.756% -- CPU Cycles)
    ◷ test_N128_000_K50 measured (0.032 s ±4.079% -- CPU Time)
    ◷ test_N128_000_K50 measured (566570.911 kI ±0.068% -- CPU Instructions Retired)
    ◷ test_N128_000_K50 measured (3717289.759 kB ±0.120% -- Memory Peak Physical)
    ✔ test_N128_000_K50 (33.043 seconds)
    ◷ test_N32_000_K10 measured (0.006 s ±0.899% -- Clock Monotonic Time)
    ◷ test_N32_000_K10 measured (19639.612 kC ±0.623% -- CPU Cycles)
    ◷ test_N32_000_K10 measured (0.006 s ±0.876% -- CPU Time)
    ◷ test_N32_000_K10 measured (110627.556 kI ±0.127% -- CPU Instructions Retired)
    ◷ test_N32_000_K10 measured (3714331.185 kB ±0.051% -- Memory Peak Physical)
    ✔ test_N32_000_K10 (6.745 seconds)
    ◷ test_N32_000_K100 measured (0.246 kB ±2008.593% -- Memory Physical)
    ◷ test_N32_000_K100 measured (0.015 s ±0.865% -- Clock Monotonic Time)
    ◷ test_N32_000_K100 measured (47425.919 kC ±0.322% -- CPU Cycles)
    ◷ test_N32_000_K100 measured (0.015 s ±0.739% -- CPU Time)
    ◷ test_N32_000_K100 measured (265342.137 kI ±0.157% -- CPU Instructions Retired)
    ◷ test_N32_000_K100 measured (3708173.799 kB ±0.002% -- Memory Peak Physical)
    ✔ test_N32_000_K100 (15.625 seconds)
    ◷ test_N32_000_K3 measured (0.033 kB ±2233.831% -- Memory Physical)
    ◷ test_N32_000_K3 measured (0.005 s ±0.976% -- Clock Monotonic Time)
    ◷ test_N32_000_K3 measured (17664.006 kC ±0.363% -- CPU Cycles)
    ◷ test_N32_000_K3 measured (0.006 s ±0.910% -- CPU Time)
    ◷ test_N32_000_K3 measured (100367.161 kI ±0.080% -- CPU Instructions Retired)
    ◷ test_N32_000_K3 measured (3708403.503 kB ±0.000% -- Memory Peak Physical)
    ✔ test_N32_000_K3 (6.105 seconds)
    ◷ test_N32_000_K50 measured (2.785 kB ±758.595% -- Memory Physical)
    ◷ test_N32_000_K50 measured (0.015 s ±0.874% -- Clock Monotonic Time)
    ◷ test_N32_000_K50 measured (47138.128 kC ±0.408% -- CPU Cycles)
    ◷ test_N32_000_K50 measured (0.015 s ±0.823% -- CPU Time)
    ◷ test_N32_000_K50 measured (263590.466 kI ±0.139% -- CPU Instructions Retired)
    ◷ test_N32_000_K50 measured (3711665.394 kB ±0.052% -- Memory Peak Physical)
    ✔ test_N32_000_K50 (15.519 seconds)
    ◷ test_N65_000_K10 measured (1.442 kB ±352.559% -- Memory Physical)
    ◷ test_N65_000_K10 measured (0.011 s ±0.541% -- Clock Monotonic Time)
    ◷ test_N65_000_K10 measured (36339.266 kC ±0.168% -- CPU Cycles)
    ◷ test_N65_000_K10 measured (0.011 s ±0.442% -- CPU Time)
    ◷ test_N65_000_K10 measured (207367.641 kI ±0.032% -- CPU Instructions Retired)
    ◷ test_N65_000_K10 measured (3710949.659 kB ±0.025% -- Memory Peak Physical)
    ✔ test_N65_000_K10 (12.186 seconds)
    ◷ test_N65_000_K100 measured (0.000 kB ±0.000% -- Memory Physical)
    ◷ test_N65_000_K100 measured (0.021 s ±0.587% -- Clock Monotonic Time)
    ◷ test_N65_000_K100 measured (66127.162 kC ±0.338% -- CPU Cycles)
    ◷ test_N65_000_K100 measured (0.021 s ±0.414% -- CPU Time)
    ◷ test_N65_000_K100 measured (372825.236 kI ±0.196% -- CPU Instructions Retired)
    ◷ test_N65_000_K100 measured (3710034.432 kB ±0.000% -- Memory Peak Physical)
    ✔ test_N65_000_K100 (21.751 seconds)
    ◷ test_N65_000_K50 measured (12.419 kB ±1033.458% -- Memory Physical)
    ◷ test_N65_000_K50 measured (0.021 s ±7.376% -- Clock Monotonic Time)
    ◷ test_N65_000_K50 measured (67433.426 kC ±2.080% -- CPU Cycles)
    ◷ test_N65_000_K50 measured (0.021 s ±4.323% -- CPU Time)
    ◷ test_N65_000_K50 measured (377993.021 kI ±0.091% -- CPU Instructions Retired)
    ◷ test_N65_000_K50 measured (3715596.095 kB ±0.154% -- Memory Peak Physical)
    ✔ test_N65_000_K50 (22.500 seconds)
    ◷ testN_128_000_K3 measured (1.409 kB ±376.076% -- Memory Physical)
    ◷ testN_128_000_K3 measured (0.021 s ±5.151% -- Clock Monotonic Time)
    ◷ testN_128_000_K3 measured (67795.490 kC ±1.674% -- CPU Cycles)
    ◷ testN_128_000_K3 measured (0.021 s ±3.799% -- CPU Time)
    ◷ testN_128_000_K3 measured (388492.519 kI ±0.144% -- CPU Instructions Retired)
    ◷ testN_128_000_K3 measured (3715254.096 kB ±0.026% -- Memory Peak Physical)
    ✔ testN_128_000_K3 (22.585 seconds)
    ◷ testN_65_000_K3 measured (3.916 kB ±2634.385% -- Memory Physical)
    ◷ testN_65_000_K3 measured (0.011 s ±4.185% -- Clock Monotonic Time)
    ◷ testN_65_000_K3 measured (34987.003 kC ±1.376% -- CPU Cycles)
    ◷ testN_65_000_K3 measured (0.011 s ±3.202% -- CPU Time)
    ◷ testN_65_000_K3 measured (199518.102 kI ±0.052% -- CPU Instructions Retired)
    ◷ testN_65_000_K3 measured (3714374.980 kB ±0.018% -- Memory Peak Physical)
    ✔ testN_65_000_K3 (11.916 seconds)

TestTopKCollectionsV2Performance
    ◷ test_N128_000_K10 measured (20.513 kB ±2173.724% -- Memory Physical)
    ◷ test_N128_000_K10 measured (0.034 s ±11.657% -- Clock Monotonic Time)
    ◷ test_N128_000_K10 measured (100875.136 kC ±4.761% -- CPU Cycles)
    ◷ test_N128_000_K10 measured (0.034 s ±9.075% -- CPU Time)
    ◷ test_N128_000_K10 measured (528043.107 kI ±0.152% -- CPU Instructions Retired)
    ◷ test_N128_000_K10 measured (3740859.753 kB ±0.203% -- Memory Peak Physical)
    ✔ test_N128_000_K10 (35.832 seconds)
    ◷ test_N128_000_K100 measured (4.309 kB ±6487.430% -- Memory Physical)
    ◷ test_N128_000_K100 measured (0.039 s ±22.930% -- Clock Monotonic Time)
    ◷ test_N128_000_K100 measured (105127.778 kC ±9.202% -- CPU Cycles)
    ◷ test_N128_000_K100 measured (0.038 s ±17.922% -- CPU Time)
    ◷ test_N128_000_K100 measured (529135.500 kI ±0.147% -- CPU Instructions Retired)
    ◷ test_N128_000_K100 measured (3741237.833 kB ±0.080% -- Memory Peak Physical)
    ✔ test_N128_000_K100 (40.611 seconds)
    ◷ test_N128_000_K50 measured (7.881 kB ±5013.041% -- Memory Physical)
    ◷ test_N128_000_K50 measured (0.045 s ±42.973% -- Clock Monotonic Time)
    ◷ test_N128_000_K50 measured (110410.598 kC ±12.685% -- CPU Cycles)
    ◷ test_N128_000_K50 measured (0.041 s ±22.708% -- CPU Time)
    ◷ test_N128_000_K50 measured (530278.978 kI ±0.330% -- CPU Instructions Retired)
    ◷ test_N128_000_K50 measured (3745859.939 kB ±0.112% -- Memory Peak Physical)
    ✔ test_N128_000_K50 (46.691 seconds)
    ◷ test_N32_000_K10 measured (0.008 s ±7.323% -- Clock Monotonic Time)
    ◷ test_N32_000_K10 measured (25403.294 kC ±1.825% -- CPU Cycles)
    ◷ test_N32_000_K10 measured (0.008 s ±2.344% -- CPU Time)
    ◷ test_N32_000_K10 measured (134373.865 kI ±0.397% -- CPU Instructions Retired)
    ◷ test_N32_000_K10 measured (3740122.770 kB ±0.003% -- Memory Peak Physical)
    ✔ test_N32_000_K10 (8.828 seconds)
    ◷ test_N32_000_K100 measured (7.340 kB ±1231.433% -- Memory Physical)
    ◷ test_N32_000_K100 measured (0.008 s ±2.451% -- Clock Monotonic Time)
    ◷ test_N32_000_K100 measured (25681.592 kC ±1.879% -- CPU Cycles)
    ◷ test_N32_000_K100 measured (0.008 s ±2.211% -- CPU Time)
    ◷ test_N32_000_K100 measured (135416.560 kI ±0.392% -- CPU Instructions Retired)
    ◷ test_N32_000_K100 measured (3742968.507 kB ±0.096% -- Memory Peak Physical)
    ✔ test_N32_000_K100 (8.879 seconds)
    ◷ test_N32_000_K3 measured (0.672 kB ±821.046% -- Memory Physical)
    ◷ test_N32_000_K3 measured (0.008 s ±3.771% -- Clock Monotonic Time)
    ◷ test_N32_000_K3 measured (25345.456 kC ±1.643% -- CPU Cycles)
    ◷ test_N32_000_K3 measured (0.008 s ±3.054% -- CPU Time)
    ◷ test_N32_000_K3 measured (134363.712 kI ±0.431% -- CPU Instructions Retired)
    ◷ test_N32_000_K3 measured (3741182.537 kB ±0.009% -- Memory Peak Physical)
    ✔ test_N32_000_K3 (8.753 seconds)
    ◷ test_N32_000_K50 measured (0.008 s ±34.502% -- Clock Monotonic Time)
    ◷ test_N32_000_K50 measured (25742.902 kC ±5.466% -- CPU Cycles)
    ◷ test_N32_000_K50 measured (0.008 s ±9.956% -- CPU Time)
    ◷ test_N32_000_K50 measured (135550.706 kI ±0.482% -- CPU Instructions Retired)
    ◷ test_N32_000_K50 measured (3741071.519 kB ±0.012% -- Memory Peak Physical)
    ✔ test_N32_000_K50 (9.118 seconds)
    ◷ test_N65_000_K10 measured (5.341 kB ±2419.227% -- Memory Physical)
    ◷ test_N65_000_K10 measured (0.016 s ±3.376% -- Clock Monotonic Time)
    ◷ test_N65_000_K10 measured (50360.085 kC ±1.179% -- CPU Cycles)
    ◷ test_N65_000_K10 measured (0.016 s ±2.078% -- CPU Time)
    ◷ test_N65_000_K10 measured (269714.687 kI ±0.224% -- CPU Instructions Retired)
    ◷ test_N65_000_K10 measured (3742748.831 kB ±0.057% -- Memory Peak Physical)
    ✔ test_N65_000_K10 (16.684 seconds)
    ◷ test_N65_000_K100 measured (1.393 kB ±2874.967% -- Memory Physical)
    ◷ test_N65_000_K100 measured (0.016 s ±2.405% -- Clock Monotonic Time)
    ◷ test_N65_000_K100 measured (50627.308 kC ±1.130% -- CPU Cycles)
    ◷ test_N65_000_K100 measured (0.016 s ±2.149% -- CPU Time)
    ◷ test_N65_000_K100 measured (270673.209 kI ±0.218% -- CPU Instructions Retired)
    ◷ test_N65_000_K100 measured (3742462.340 kB ±0.028% -- Memory Peak Physical)
    ✔ test_N65_000_K100 (16.792 seconds)
    ◷ test_N65_000_K50 measured (6.324 kB ±2344.681% -- Memory Physical)
    ◷ test_N65_000_K50 measured (0.016 s ±9.906% -- Clock Monotonic Time)
    ◷ test_N65_000_K50 measured (51052.907 kC ±3.550% -- CPU Cycles)
    ◷ test_N65_000_K50 measured (0.016 s ±7.327% -- CPU Time)
    ◷ test_N65_000_K50 measured (270651.132 kI ±0.212% -- CPU Instructions Retired)
    ◷ test_N65_000_K50 measured (3745767.550 kB ±0.098% -- Memory Peak Physical)
    ✔ test_N65_000_K50 (17.446 seconds)
    ◷ testN_128_000_K3 measured (4.407 kB ±4517.343% -- Memory Physical)
    ◷ testN_128_000_K3 measured (0.034 s ±24.156% -- Clock Monotonic Time)
    ◷ testN_128_000_K3 measured (100288.693 kC ±5.311% -- CPU Cycles)
    ◷ testN_128_000_K3 measured (0.034 s ±10.820% -- CPU Time)
    ◷ testN_128_000_K3 measured (527900.276 kI ±0.169% -- CPU Instructions Retired)
    ◷ testN_128_000_K3 measured (3745989.045 kB ±0.086% -- Memory Peak Physical)
    ✔ testN_128_000_K3 (36.000 seconds)
    ◷ testN_65_000_K3 measured (6.078 kB ±2652.206% -- Memory Physical)
    ◷ testN_65_000_K3 measured (0.017 s ±24.819% -- Clock Monotonic Time)
    ◷ testN_65_000_K3 measured (51450.823 kC ±6.754% -- CPU Cycles)
    ◷ testN_65_000_K3 measured (0.017 s ±14.140% -- CPU Time)
    ◷ testN_65_000_K3 measured (269474.161 kI ±0.222% -- CPU Instructions Retired)
    ◷ testN_65_000_K3 measured (3746486.971 kB ±0.107% -- Memory Peak Physical)
    ✔ testN_65_000_K3 (18.640 seconds)

TestTopKCollectionsV3Performance
    ◷ test_N128_000_K10 measured (1.606 kB ±693.875% -- Memory Physical)
    ◷ test_N128_000_K10 measured (0.020 s ±15.110% -- Clock Monotonic Time)
    ◷ test_N128_000_K10 measured (64142.883 kC ±2.149% -- CPU Cycles)
    ◷ test_N128_000_K10 measured (0.020 s ±5.127% -- CPU Time)
    ◷ test_N128_000_K10 measured (372501.093 kI ±0.033% -- CPU Instructions Retired)
    ◷ test_N128_000_K10 measured (3742730.579 kB ±0.026% -- Memory Peak Physical)
    ✔ test_N128_000_K10 (21.490 seconds)
    ◷ test_N128_000_K100 measured (5.702 kB ±1330.708% -- Memory Physical)
    ◷ test_N128_000_K100 measured (0.020 s ±1.956% -- Clock Monotonic Time)
    ◷ test_N128_000_K100 measured (65020.225 kC ±0.568% -- CPU Cycles)
    ◷ test_N128_000_K100 measured (0.020 s ±1.506% -- CPU Time)
    ◷ test_N128_000_K100 measured (377037.784 kI ±0.023% -- CPU Instructions Retired)
    ◷ test_N128_000_K100 measured (3744654.536 kB ±0.074% -- Memory Peak Physical)
    ✔ test_N128_000_K100 (21.459 seconds)
    ◷ test_N128_000_K50 measured (8.667 kB ±1116.931% -- Memory Physical)
    ◷ test_N128_000_K50 measured (0.020 s ±5.129% -- Clock Monotonic Time)
    ◷ test_N128_000_K50 measured (65029.718 kC ±1.270% -- CPU Cycles)
    ◷ test_N128_000_K50 measured (0.020 s ±2.664% -- CPU Time)
    ◷ test_N128_000_K50 measured (376755.383 kI ±0.069% -- CPU Instructions Retired)
    ◷ test_N128_000_K50 measured (3746095.394 kB ±0.078% -- Memory Peak Physical)
    ✔ test_N128_000_K50 (21.496 seconds)
    ◷ test_N32_000_K10 measured (1.212 kB ±461.292% -- Memory Physical)
    ◷ test_N32_000_K10 measured (0.005 s ±15.152% -- Clock Monotonic Time)
    ◷ test_N32_000_K10 measured (16916.606 kC ±4.222% -- CPU Cycles)
    ◷ test_N32_000_K10 measured (0.005 s ±8.090% -- CPU Time)
    ◷ test_N32_000_K10 measured (95821.283 kI ±0.213% -- CPU Instructions Retired)
    ◷ test_N32_000_K10 measured (3744927.641 kB ±0.018% -- Memory Peak Physical)
    ✔ test_N32_000_K10 (6.077 seconds)
    ◷ test_N32_000_K100 measured (0.721 kB ±466.125% -- Memory Physical)
    ◷ test_N32_000_K100 measured (0.005 s ±6.436% -- Clock Monotonic Time)
    ◷ test_N32_000_K100 measured (17635.445 kC ±2.448% -- CPU Cycles)
    ◷ test_N32_000_K100 measured (0.006 s ±4.900% -- CPU Time)
    ◷ test_N32_000_K100 measured (99466.124 kI ±0.098% -- CPU Instructions Retired)
    ◷ test_N32_000_K100 measured (3744745.582 kB ±0.015% -- Memory Peak Physical)
    ✔ test_N32_000_K100 (6.222 seconds)
    ◷ test_N32_000_K3 measured (0.000 kB ±0.000% -- Memory Physical)
    ◷ test_N32_000_K3 measured (0.005 s ±0.715% -- Clock Monotonic Time)
    ◷ test_N32_000_K3 measured (16527.812 kC ±0.252% -- CPU Cycles)
    ◷ test_N32_000_K3 measured (0.005 s ±0.453% -- CPU Time)
    ◷ test_N32_000_K3 measured (95187.091 kI ±0.076% -- CPU Instructions Retired)
    ◷ test_N32_000_K3 measured (3744260.992 kB ±0.000% -- Memory Peak Physical)
    ✔ test_N32_000_K3 (5.780 seconds)
    ◷ test_N32_000_K50 measured (0.005 s ±0.864% -- Clock Monotonic Time)
    ◷ test_N32_000_K50 measured (17459.547 kC ±0.274% -- CPU Cycles)
    ◷ test_N32_000_K50 measured (0.005 s ±0.659% -- CPU Time)
    ◷ test_N32_000_K50 measured (99313.871 kI ±0.073% -- CPU Instructions Retired)
    ◷ test_N32_000_K50 measured (3744197.488 kB ±0.000% -- Memory Peak Physical)
    ✔ test_N32_000_K50 (6.103 seconds)
    ◷ test_N65_000_K10 measured (0.147 kB ±2831.023% -- Memory Physical)
    ◷ test_N65_000_K10 measured (0.010 s ±0.891% -- Clock Monotonic Time)
    ◷ test_N65_000_K10 measured (32950.484 kC ±0.252% -- CPU Cycles)
    ◷ test_N65_000_K10 measured (0.010 s ±0.683% -- CPU Time)
    ◷ test_N65_000_K10 measured (190918.884 kI ±0.035% -- CPU Instructions Retired)
    ◷ test_N65_000_K10 measured (3744275.475 kB ±0.002% -- Memory Peak Physical)
    ✔ test_N65_000_K10 (11.104 seconds)
    ◷ test_N65_000_K100 measured (4.522 kB ±1445.367% -- Memory Physical)
    ◷ test_N65_000_K100 measured (0.011 s ±4.932% -- Clock Monotonic Time)
    ◷ test_N65_000_K100 measured (33994.746 kC ±1.464% -- CPU Cycles)
    ◷ test_N65_000_K100 measured (0.011 s ±3.083% -- CPU Time)
    ◷ test_N65_000_K100 measured (195165.390 kI ±0.067% -- CPU Instructions Retired)
    ◷ test_N65_000_K100 measured (3745215.114 kB ±0.037% -- Memory Peak Physical)
    ✔ test_N65_000_K100 (11.487 seconds)
    ◷ test_N65_000_K50 measured (2.818 kB ±930.308% -- Memory Physical)
    ◷ test_N65_000_K50 measured (0.011 s ±8.073% -- Clock Monotonic Time)
    ◷ test_N65_000_K50 measured (34237.377 kC ±2.786% -- CPU Cycles)
    ◷ test_N65_000_K50 measured (0.011 s ±5.681% -- CPU Time)
    ◷ test_N65_000_K50 measured (195444.338 kI ±0.097% -- CPU Instructions Retired)
    ◷ test_N65_000_K50 measured (3746952.113 kB ±0.043% -- Memory Peak Physical)
    ✔ test_N65_000_K50 (11.684 seconds)
    ◷ testN_128_000_K3 measured (1.180 kB ±374.784% -- Memory Physical)
    ◷ testN_128_000_K3 measured (0.020 s ±4.086% -- Clock Monotonic Time)
    ◷ testN_128_000_K3 measured (63790.070 kC ±1.145% -- CPU Cycles)
    ◷ testN_128_000_K3 measured (0.020 s ±2.216% -- CPU Time)
    ◷ testN_128_000_K3 measured (371637.292 kI ±0.064% -- CPU Instructions Retired)
    ◷ testN_128_000_K3 measured (3746118.725 kB ±0.016% -- Memory Peak Physical)
    ✔ testN_128_000_K3 (21.019 seconds)
    ◷ testN_65_000_K3 measured (3.260 kB ±319.164% -- Memory Physical)
    ◷ testN_65_000_K3 measured (0.011 s ±113.068% -- Clock Monotonic Time)
    ◷ testN_65_000_K3 measured (32987.402 kC ±6.677% -- CPU Cycles)
    ◷ testN_65_000_K3 measured (0.010 s ±13.471% -- CPU Time)
    ◷ testN_65_000_K3 measured (190181.341 kI ±0.153% -- CPU Instructions Retired)
    ◷ testN_65_000_K3 measured (3748229.672 kB ±0.065% -- Memory Peak Physical)
    ✔ testN_65_000_K3 (11.953 seconds)
```