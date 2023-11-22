import Benchmark
import TopK

let settings: BenchmarkSetting = Iterations(1_000)

// Hugginface

internal let hugginfaceBenchmarks = BenchmarkSuite(name: "Huggingface", settings: settings) { suite in
    let arr1 = Array.random(32000)
    suite.benchmark("n=32_000, k=3") {
        _ = Hugg.topK(arr: arr1, k: 3)
    }

    let arr2 = Array.random(32000)
    suite.benchmark("n=32_000, k=10") {
        _ = Hugg.topK(arr: arr2, k: 10)
    }

    let arr3 = Array.random(32000)
    suite.benchmark("n=32_000, k=50") {
        _ = Hugg.topK(arr: arr3, k: 50)
    }

    let arr4 = Array.random(32000)
    suite.benchmark("n=32_000, k=100") {
        _ = Hugg.topK(arr: arr4, k: 100)
    }

    let arr5 = Array.random(65000)
    suite.benchmark("n=65_000, k=3") {
        _ = Hugg.topK(arr: arr5, k: 3)
    }

    let arr6 = Array.random(65000)
    suite.benchmark("n=65_000, k=10") {
        _ = Hugg.topK(arr: arr6, k: 10)
    }

    let arr7 = Array.random(65000)
    suite.benchmark("n=65_000, k=50") {
        _ = Hugg.topK(arr: arr7, k: 50)
    }

    let arr8 = Array.random(65000)
    suite.benchmark("n=65_000, k=100") {
        _ = Hugg.topK(arr: arr8, k: 100)
    }

    let arr9 = Array.random(128_000)
    suite.benchmark("n=128_000, k=3") {
        _ = Hugg.topK(arr: arr9, k: 3)
    }

    let arr10 = Array.random(128_000)
    suite.benchmark("n=128_000, k=10") {
        _ = Hugg.topK(arr: arr10, k: 10)
    }

    let arr11 = Array.random(128_000)
    suite.benchmark("n=128_000, k=50") {
        _ = Hugg.topK(arr: arr11, k: 50)
    }

    let arr12 = Array.random(128_000)
    suite.benchmark("n=128_000, k=100") {
        _ = Hugg.topK(arr: arr12, k: 100)
    }
}

// Accelerate

internal let accelerateBenchmarks = BenchmarkSuite(name: "Accelerate", settings: settings) { suite in
    let arr1 = Array.random(32000)
    suite.benchmark("n=32_000, k=3") {
        _ = Acc.topK(arr: arr1, k: 3)
    }

    let arr2 = Array.random(32000)
    suite.benchmark("n=32_000, k=10") {
        _ = Acc.topK(arr: arr2, k: 10)
    }

    let arr3 = Array.random(32000)
    suite.benchmark("n=32_000, k=50") {
        _ = Acc.topK(arr: arr3, k: 50)
    }

    let arr4 = Array.random(32000)
    suite.benchmark("n=32_000, k=100") {
        _ = Acc.topK(arr: arr4, k: 100)
    }

    let arr5 = Array.random(65000)
    suite.benchmark("n=65_000, k=3") {
        _ = Acc.topK(arr: arr5, k: 3)
    }

    let arr6 = Array.random(65000)
    suite.benchmark("n=65_000, k=10") {
        _ = Acc.topK(arr: arr6, k: 10)
    }

    let arr7 = Array.random(65000)
    suite.benchmark("n=65_000, k=50") {
        _ = Acc.topK(arr: arr7, k: 50)
    }

    let arr8 = Array.random(65000)
    suite.benchmark("n=65_000, k=100") {
        _ = Acc.topK(arr: arr8, k: 100)
    }

    let arr9 = Array.random(128_000)
    suite.benchmark("n=128_000, k=3") {
        _ = Acc.topK(arr: arr9, k: 3)
    }

    let arr10 = Array.random(128_000)
    suite.benchmark("n=128_000, k=10") {
        _ = Acc.topK(arr: arr10, k: 10)
    }

    let arr11 = Array.random(128_000)
    suite.benchmark("n=128_000, k=50") {
        _ = Acc.topK(arr: arr11, k: 50)
    }

    let arr12 = Array.random(128_000)
    suite.benchmark("n=128_000, k=100") {
        _ = Acc.topK(arr: arr12, k: 100)
    }
}

// Collections V1

internal let collectionsV1Benchmarks = BenchmarkSuite(name: "CollectionsV1", settings: settings) { suite in
    let arr1 = Array.random(32000)
    suite.benchmark("n=32_000, k=3") {
        _ = Coll.V1.topK(arr: arr1, k: 3)
    }

    let arr2 = Array.random(32000)
    suite.benchmark("n=32_000, k=10") {
        _ = Coll.V1.topK(arr: arr2, k: 10)
    }

    let arr3 = Array.random(32000)
    suite.benchmark("n=32_000, k=50") {
        _ = Coll.V1.topK(arr: arr3, k: 50)
    }

    let arr4 = Array.random(32000)
    suite.benchmark("n=32_000, k=100") {
        _ = Coll.V1.topK(arr: arr4, k: 100)
    }

    let arr5 = Array.random(65000)
    suite.benchmark("n=65_000, k=3") {
        _ = Coll.V1.topK(arr: arr5, k: 3)
    }

    let arr6 = Array.random(65000)
    suite.benchmark("n=65_000, k=10") {
        _ = Coll.V1.topK(arr: arr6, k: 10)
    }

    let arr7 = Array.random(65000)
    suite.benchmark("n=65_000, k=50") {
        _ = Coll.V1.topK(arr: arr7, k: 50)
    }

    let arr8 = Array.random(65000)
    suite.benchmark("n=65_000, k=100") {
        _ = Coll.V1.topK(arr: arr8, k: 100)
    }

    let arr9 = Array.random(128_000)
    suite.benchmark("n=128_000, k=3") {
        _ = Coll.V1.topK(arr: arr9, k: 3)
    }

    let arr10 = Array.random(128_000)
    suite.benchmark("n=128_000, k=10") {
        _ = Coll.V1.topK(arr: arr10, k: 10)
    }

    let arr11 = Array.random(128_000)
    suite.benchmark("n=128_000, k=50") {
        _ = Coll.V1.topK(arr: arr11, k: 50)
    }

    let arr12 = Array.random(128_000)
    suite.benchmark("n=128_000, k=100") {
        _ = Coll.V1.topK(arr: arr12, k: 100)
    }
}

// Collections V2

internal let collectionsV2Benchmarks = BenchmarkSuite(name: "CollectionsV2", settings: settings) { suite in
    let arr1 = Array.random(32000)
    suite.benchmark("n=32_000, k=3") {
        _ = Coll.V2.topK(arr: arr1, k: 3)
    }

    let arr2 = Array.random(32000)
    suite.benchmark("n=32_000, k=10") {
        _ = Coll.V2.topK(arr: arr2, k: 10)
    }

    let arr3 = Array.random(32000)
    suite.benchmark("n=32_000, k=50") {
        _ = Coll.V2.topK(arr: arr3, k: 50)
    }

    let arr4 = Array.random(32000)
    suite.benchmark("n=32_000, k=100") {
        _ = Coll.V2.topK(arr: arr4, k: 100)
    }

    let arr5 = Array.random(65000)
    suite.benchmark("n=65_000, k=3") {
        _ = Coll.V2.topK(arr: arr5, k: 3)
    }

    let arr6 = Array.random(65000)
    suite.benchmark("n=65_000, k=10") {
        _ = Coll.V2.topK(arr: arr6, k: 10)
    }

    let arr7 = Array.random(65000)
    suite.benchmark("n=65_000, k=50") {
        _ = Coll.V2.topK(arr: arr7, k: 50)
    }

    let arr8 = Array.random(65000)
    suite.benchmark("n=65_000, k=100") {
        _ = Coll.V2.topK(arr: arr8, k: 100)
    }

    let arr9 = Array.random(128_000)
    suite.benchmark("n=128_000, k=3") {
        _ = Coll.V2.topK(arr: arr9, k: 3)
    }

    let arr10 = Array.random(128_000)
    suite.benchmark("n=128_000, k=10") {
        _ = Coll.V2.topK(arr: arr10, k: 10)
    }

    let arr11 = Array.random(128_000)
    suite.benchmark("n=128_000, k=50") {
        _ = Coll.V2.topK(arr: arr11, k: 50)
    }

    let arr12 = Array.random(128_000)
    suite.benchmark("n=128_000, k=100") {
        _ = Coll.V2.topK(arr: arr12, k: 100)
    }
}

// Collections V3

internal let collectionsV3Benchmarks = BenchmarkSuite(name: "CollectionsV3", settings: settings) { suite in
    let arr1 = Array.random(32000)
    suite.benchmark("n=32_000, k=3") {
        _ = Coll.V3.topK(arr: arr1, k: 3)
    }

    let arr2 = Array.random(32000)
    suite.benchmark("n=32_000, k=10") {
        _ = Coll.V3.topK(arr: arr2, k: 10)
    }

    let arr3 = Array.random(32000)
    suite.benchmark("n=32_000, k=50") {
        _ = Coll.V3.topK(arr: arr3, k: 50)
    }

    let arr4 = Array.random(32000)
    suite.benchmark("n=32_000, k=100") {
        _ = Coll.V3.topK(arr: arr4, k: 100)
    }

    let arr5 = Array.random(65000)
    suite.benchmark("n=65_000, k=3") {
        _ = Coll.V3.topK(arr: arr5, k: 3)
    }

    let arr6 = Array.random(65000)
    suite.benchmark("n=65_000, k=10") {
        _ = Coll.V3.topK(arr: arr6, k: 10)
    }

    let arr7 = Array.random(65000)
    suite.benchmark("n=65_000, k=50") {
        _ = Coll.V3.topK(arr: arr7, k: 50)
    }

    let arr8 = Array.random(65000)
    suite.benchmark("n=65_000, k=100") {
        _ = Coll.V3.topK(arr: arr8, k: 100)
    }

    let arr9 = Array.random(128_000)
    suite.benchmark("n=128_000, k=3") {
        _ = Coll.V3.topK(arr: arr9, k: 3)
    }

    let arr10 = Array.random(128_000)
    suite.benchmark("n=128_000, k=10") {
        _ = Coll.V3.topK(arr: arr10, k: 10)
    }

    let arr11 = Array.random(128_000)
    suite.benchmark("n=128_000, k=50") {
        _ = Coll.V3.topK(arr: arr11, k: 50)
    }

    let arr12 = Array.random(128_000)
    suite.benchmark("n=128_000, k=100") {
        _ = Coll.V3.topK(arr: arr12, k: 100)
    }
}

public let allBenchmarks = [
    hugginfaceBenchmarks,
    accelerateBenchmarks,
    collectionsV1Benchmarks,
    collectionsV2Benchmarks,
    collectionsV3Benchmarks
]
