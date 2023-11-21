import Accelerate
import Foundation

public enum Acc {}

extension Acc {
    public static func topK(arr: [Float], k: Int) -> (indexes: [Int], probs: [Float]) {
        let arrDescriptor = BNNSNDArrayDescriptor.allocate(
            initializingFrom: arr,
            shape: .vector(arr.count)
        )
        let bestIndices = BNNSNDArrayDescriptor.allocateUninitialized(
            scalarType: Int32.self,
            shape: .vector(k)
        )
        let bestValues = BNNSNDArrayDescriptor.allocateUninitialized(
            scalarType: Float.self,
            shape: .vector(k)
        )
        try? Accelerate.BNNS.applyTopK(
            k: k,
            input: arrDescriptor,
            bestValues: bestValues,
            bestIndices: bestIndices,
            axis: 0,
            batchSize: 1,
            filterParameters: nil
        )
        let distances = bestValues.data!.withMemoryRebound(to: Float.self, capacity: k) { ptr in
            Array(UnsafeBufferPointer(start: ptr, count: k))
        }
        let indices = bestIndices.data!.withMemoryRebound(to: Int32.self, capacity: k) { ptr in
            Array(UnsafeBufferPointer(start: ptr, count: k))
        }
        return (indexes: indices.map { Int($0) }, probs: distances)
    }
}
