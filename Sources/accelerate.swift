import Accelerate
import Foundation

internal enum Acc {}

extension Acc {
    internal static func topK(arr: [Float], k: Int) -> (indexes: [Int], probs: [Float]) {
        let maximumSampleCount = UInt32(arr.count)
        let knn = BNNSCreateNearestNeighbors(
            maximumSampleCount,
            1,
            UInt32(k),
            BNNSDataType.float,
            nil
        )
        defer {
            BNNSDestroyNearestNeighbors(knn)
        }
        BNNSNearestNeighborsLoad(
            knn,
            maximumSampleCount,
            arr
        )
        var indices = [Int32](repeating: 0, count: k)
        var distances = [Float](repeating: 0, count: k)
        let max = max(arr)
        BNNSNearestNeighborsGetInfo(
            knn,
            Int32(max.index),
            &indices,
            &distances
        )
        return (indexes: indices.map { Int($0) }, probs: softmax(distances).reversed())
    }
}
