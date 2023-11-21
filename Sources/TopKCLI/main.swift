import Benchmark
import TopK

// Hugginface

benchmark("Huggingface n=32_000, k=3") {
    _ = Hugg.topK(arr: Array.random(32_000), k: 3)
}

benchmark("Huggingface n=32_000, k=10") {
    _ = Hugg.topK(arr: Array.random(32_000), k: 10)
}

benchmark("Huggingface n=32_000, k=50") {
    _ = Hugg.topK(arr: Array.random(32_000), k: 50)
}

benchmark("Huggingface n=32_000, k=100") {
    _ = Hugg.topK(arr: Array.random(32_000), k: 100)
}

benchmark("Huggingface n=65_000, k=3") {
    _ = Hugg.topK(arr: Array.random(65_000), k: 3)
}

benchmark("Huggingface n=65_000, k=10") {
    _ = Hugg.topK(arr: Array.random(65_000), k: 10)
}

benchmark("Huggingface n=65_000, k=50") {
    _ = Hugg.topK(arr: Array.random(65_000), k: 50)
}

benchmark("Huggingface n=65_000, k=100") {
    _ = Hugg.topK(arr: Array.random(65_000), k: 100)
}

benchmark("Huggingface n=128_000, k=3") {
    _ = Hugg.topK(arr: Array.random(128_000), k: 3)
}

benchmark("Huggingface n=128_000, k=10") {
    _ = Hugg.topK(arr: Array.random(128_000), k: 10)
}

benchmark("Huggingface n=128_000, k=50") {
    _ = Hugg.topK(arr: Array.random(128_000), k: 50)
}

benchmark("Huggingface n=128_000, k=100") {
    _ = Hugg.topK(arr: Array.random(128_000), k: 100)
}

// Accelerate

benchmark("Accelerate n=32_000, k=3") {
    _ = Acc.topK(arr: Array.random(32_000), k: 3)
}

benchmark("Accelerate n=32_000, k=10") {
    _ = Acc.topK(arr: Array.random(32_000), k: 10)
}

benchmark("Accelerate n=32_000, k=50") {
    _ = Acc.topK(arr: Array.random(32_000), k: 50)
}

benchmark("Accelerate n=32_000, k=100") {
    _ = Acc.topK(arr: Array.random(32_000), k: 100)
}

benchmark("Accelerate n=65_000, k=3") {
    _ = Acc.topK(arr: Array.random(65_000), k: 3)
}

benchmark("Accelerate n=65_000, k=10") {
    _ = Acc.topK(arr: Array.random(65_000), k: 10)
}

benchmark("Accelerate n=65_000, k=50") {
    _ = Acc.topK(arr: Array.random(65_000), k: 50)
}

benchmark("Accelerate n=65_000, k=100") {
    _ = Acc.topK(arr: Array.random(65_000), k: 100)
}

benchmark("Accelerate n=128_000, k=3") {
    _ = Acc.topK(arr: Array.random(128_000), k: 3)
}

benchmark("Accelerate n=128_000, k=10") {
    _ = Acc.topK(arr: Array.random(128_000), k: 10)
}

benchmark("Accelerate n=128_000, k=50") {
    _ = Acc.topK(arr: Array.random(128_000), k: 50)
}

benchmark("Accelerate n=128_000, k=100") {
    _ = Acc.topK(arr: Array.random(128_000), k: 100)
}

// Collections V1

benchmark("Collections V1 n=32_000, k=3") {
    _ = Coll.V1.topK(arr: Array.random(32_000), k: 3)
}

benchmark("Collections V1 n=32_000, k=10") {
    _ = Coll.V1.topK(arr: Array.random(32_000), k: 10)
}

benchmark("Collections V1 n=32_000, k=50") {
    _ = Coll.V1.topK(arr: Array.random(32_000), k: 50)
}

benchmark("Collections V1 n=32_000, k=100") {
    _ = Coll.V1.topK(arr: Array.random(32_000), k: 100)
}

benchmark("Collections V1 n=65_000, k=3") {
    _ = Coll.V1.topK(arr: Array.random(65_000), k: 3)
}

benchmark("Collections V1 n=65_000, k=10") {
    _ = Coll.V1.topK(arr: Array.random(65_000), k: 10)
}

benchmark("Collections V1 n=65_000, k=50") {
    _ = Coll.V1.topK(arr: Array.random(65_000), k: 50)
}

benchmark("Collections V1 n=65_000, k=100") {
    _ = Coll.V1.topK(arr: Array.random(65_000), k: 100)
}

benchmark("Collections V1 n=128_000, k=3") {
    _ = Coll.V1.topK(arr: Array.random(128_000), k: 3)
}

benchmark("Collections V1 n=128_000, k=10") {
    _ = Coll.V1.topK(arr: Array.random(128_000), k: 10)
}

benchmark("Collections V1 n=128_000, k=50") {
    _ = Coll.V1.topK(arr: Array.random(128_000), k: 50)
}

benchmark("Collections V1 n=128_000, k=100") {
    _ = Coll.V1.topK(arr: Array.random(128_000), k: 100)
}

// Collections V2

benchmark("Collections V2 n=32_000, k=3") {
    _ = Coll.V2.topK(arr: Array.random(32_000), k: 3)
}

benchmark("Collections V2 n=32_000, k=10") {
    _ = Coll.V2.topK(arr: Array.random(32_000), k: 10)
}

benchmark("Collections V2 n=32_000, k=50") {
    _ = Coll.V2.topK(arr: Array.random(32_000), k: 50)
}

benchmark("Collections V2 n=32_000, k=100") {
    _ = Coll.V2.topK(arr: Array.random(32_000), k: 100)
}

benchmark("Collections V2 n=65_000, k=3") {
    _ = Coll.V2.topK(arr: Array.random(65_000), k: 3)
}

benchmark("Collections V2 n=65_000, k=10") {
    _ = Coll.V2.topK(arr: Array.random(65_000), k: 10)
}

benchmark("Collections V2 n=65_000, k=50") {
    _ = Coll.V2.topK(arr: Array.random(65_000), k: 50)
}

benchmark("Collections V2 n=65_000, k=100") {
    _ = Coll.V2.topK(arr: Array.random(65_000), k: 100)
}

benchmark("Collections V2 n=128_000, k=3") {
    _ = Coll.V2.topK(arr: Array.random(128_000), k: 3)
}

benchmark("Collections V2 n=128_000, k=10") {
    _ = Coll.V2.topK(arr: Array.random(128_000), k: 10)
}

benchmark("Collections V2 n=128_000, k=50") {
    _ = Coll.V2.topK(arr: Array.random(128_000), k: 50)
}

benchmark("Collections V2 n=128_000, k=100") {
    _ = Coll.V2.topK(arr: Array.random(128_000), k: 100)
}

// Collections V3

benchmark("Collections V3 n=32_000, k=3") {
    _ = Coll.V3.topK(arr: Array.random(32_000), k: 3)
}

benchmark("Collections V3 n=32_000, k=10") {
    _ = Coll.V3.topK(arr: Array.random(32_000), k: 10)
}

benchmark("Collections V3 n=32_000, k=50") {
    _ = Coll.V3.topK(arr: Array.random(32_000), k: 50)
}

benchmark("Collections V3 n=32_000, k=100") {
    _ = Coll.V3.topK(arr: Array.random(32_000), k: 100)
}

benchmark("Collections V3 n=65_000, k=3") {
    _ = Coll.V3.topK(arr: Array.random(65_000), k: 3)
}

benchmark("Collections V3 n=65_000, k=10") {
    _ = Coll.V3.topK(arr: Array.random(65_000), k: 10)
}

benchmark("Collections V3 n=65_000, k=50") {
    _ = Coll.V3.topK(arr: Array.random(65_000), k: 50)
}

benchmark("Collections V3 n=65_000, k=100") {
    _ = Coll.V3.topK(arr: Array.random(65_000), k: 100)
}

benchmark("Collections V3 n=128_000, k=3") {
    _ = Coll.V3.topK(arr: Array.random(128_000), k: 3)
}

benchmark("Collections V3 n=128_000, k=10") {
    _ = Coll.V3.topK(arr: Array.random(128_000), k: 10)
}

benchmark("Collections V3 n=128_000, k=50") {
    _ = Coll.V3.topK(arr: Array.random(128_000), k: 50)
}

benchmark("Collections V3 n=128_000, k=100") {
    _ = Coll.V3.topK(arr: Array.random(128_000), k: 100)
}

Benchmark.main()
