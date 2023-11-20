import Benchmark

let n10 = Array.random(10)
let n10_000 = Array.random(10_000)
let n100_000 = Array.random(100_000)

benchmark("Huggingface n=10, k=3") {
    _ = Hugg.topK(arr: n10, k: 3)
}

benchmark("Huggingface n=10_000, k=3") {
    _ = Hugg.topK(arr: n10_000, k: 3)
}

benchmark("Huggingface n=10_000, k=100") {
    _ = Hugg.topK(arr: n10_000, k: 100)
}

benchmark("Huggingface n=10_000, k=5_000") {
    _ = Hugg.topK(arr: n10_000, k: 5_000)
}

benchmark("Huggingface n=10_000, k=10_000") {
    _ = Hugg.topK(arr: n10_000, k: 10_000)
}

benchmark("Accelerate n=10, k=3") {
    _ = Acc.topK(arr: n10, k: 3)
}

benchmark("Accelerate n=10_000, k=3") {
    _ = Acc.topK(arr: n10_000, k: 3)
}

benchmark("Accelerate n=10_000, k=100") {
    _ = Acc.topK(arr: n10_000, k: 100)
}

benchmark("Accelerate n=10_000, k=5_000") {
    _ = Acc.topK(arr: n10_000, k: 5_000)
}

benchmark("Accelerate n=10_000, k=10_000") {
    _ = Acc.topK(arr: n10_000, k: 10_000)
}

benchmark("Collections V1 n=10, k=3") {
    _ = Coll.V1.topK(arr: n10, k: 3)
}

benchmark("Collections V1 n=10_000, k=3") {
    _ = Coll.V1.topK(arr: n10_000, k: 3)
}

benchmark("Collections V1 n=10_000, k=100") {
    _ = Coll.V1.topK(arr: n10_000, k: 100)
}

benchmark("Collections V1 n=10_000, k=5_000") {
    _ = Coll.V1.topK(arr: n10_000, k: 5_000)
}

benchmark("Collections V1 n=10_000, k=10_000") {
    _ = Coll.V1.topK(arr: n10_000, k: 10_000)
}

benchmark("Collections V2 n=10, k=3") {
    _ = Coll.V2.topK(arr: n10, k: 3)
}

benchmark("Collections V2 n=10_000, k=3") {
    _ = Coll.V2.topK(arr: n10_000, k: 3)
}

benchmark("Collections V2 n=10_000, k=100") {
    _ = Coll.V2.topK(arr: n10_000, k: 100)
}

benchmark("Collections V2 n=10_000, k=5_000") {
    _ = Coll.V2.topK(arr: n10_000, k: 5_000)
}

benchmark("Collections V2 n=10_000, k=10_000") {
    _ = Coll.V2.topK(arr: n10_000, k: 10_000)
}

benchmark("Collections V3 n=10, k=3") {
    _ = Coll.V3.topK(arr: n10, k: 3)
}

benchmark("Collections V3 n=10_000, k=3") {
    _ = Coll.V3.topK(arr: n10_000, k: 3)
}

benchmark("Collections V3 n=10_000, k=100") {
    _ = Coll.V3.topK(arr: n10_000, k: 100)
}

benchmark("Collections V3 n=10_000, k=5_000") {
    _ = Coll.V3.topK(arr: n10_000, k: 5_000)
}

benchmark("Collections V3 n=10_000, k=10_000") {
    _ = Coll.V3.topK(arr: n10_000, k: 10_000)
}

Benchmark.main()
