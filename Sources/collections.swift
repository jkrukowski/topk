import Collections
import Foundation

internal struct IndexValuePair {
    internal var index: Int
    internal var value: Float
}

extension IndexValuePair: Comparable {
    internal static func < (lhs: IndexValuePair, rhs: IndexValuePair) -> Bool {
        lhs.value < rhs.value
    }
}

internal enum Coll {}

extension Coll {
    internal enum V1 {
        internal static func topK(arr: [Float], k: Int) -> (indexes: [Int], probs: [Float]) {
            var minV = -Float.greatestFiniteMagnitude
            var selected = Deque<(index: Int, value: Float)>()
            selected.reserveCapacity(k)

            for (i, v) in arr.enumerated() {
                if v > minV || selected.count < k {
                    // Append and sort
                    if selected.count == k {
                        _ = selected.popFirst()
                    }
                    selected.append((index: i, value: v))
                    selected.sort { $0.value < $1.value }
                    minV = selected.first!.value
                }
            }

            selected.reverse()
            let indexes = selected.map { $0.index }
            let logits = selected.map { $0.value }
            let probs = softmax(logits)

            return (indexes: indexes, probs: probs)
        }
    }
}

extension Coll {
    internal enum V2 {
        internal static func topK(arr: [Float], k: Int) -> (indexes: [Int], probs: [Float]) {
            let data = arr.enumerated().map { i, v in IndexValuePair(index: i, value: v) }
            var values = Heap<IndexValuePair>(data)

            var selected = [IndexValuePair]()
            for _ in 0 ..< k {
                if let value = values.popMax() {
                    selected.append(value)
                }
            }
            let indexes = selected.map { $0.index }
            let logits = selected.map { $0.value }
            let probs = softmax(logits)

            return (indexes: indexes, probs: probs)
        }
    }
}

extension Coll {
    internal enum V3 {
        internal static func topK(arr: [Float], k: Int) -> (indexes: [Int], probs: [Float]) {
            var minV = -Float.greatestFiniteMagnitude
            var selected = Heap<IndexValuePair>()

            for (i, v) in arr.enumerated() {
                if v > minV || selected.count < k {
                    if selected.count == k {
                        _ = selected.popMin()
                    }
                    selected.insert(IndexValuePair(index: i, value: v))
                    minV = selected.min()!.value
                }
            }

            var indexes = [Int]()
            var logits = [Float]()
            while let value = selected.popMax() {
                indexes.append(value.index)
                logits.append(value.value)
            }
            let probs = softmax(logits)

            return (indexes: indexes, probs: probs)
        }
    }
}
