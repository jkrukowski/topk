import Foundation

internal enum Hugg {}

extension Hugg {
    internal static func topK(arr: [Float], k: Int) -> (indexes: [Int], probs: [Float]) {
        var minV = -Float.greatestFiniteMagnitude
        var selected: [(index: Int, value: Float)] = []
        selected.reserveCapacity(k)

        for (i, v) in arr.enumerated() {
            if v > minV || selected.count < k {
                // Append and sort
                if selected.count == k {
                    selected.remove(at: 0)
                }
                selected.append((i, v))
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