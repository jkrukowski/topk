import Accelerate
import Foundation

extension Array where Element == Float {
    internal static func random(_ count: Int) -> [Element] {
        (0..<count).map{ _ in 
            Float.random(in: 0 ... 1_000_000)
        }
    }
}

internal func max(_ arr: [Float]) -> (value: Float, index: Int) {
    let len = vDSP_Length(arr.count)
    var value: Float = -Float.greatestFiniteMagnitude
    var index: UInt = 0
    vDSP_maxvi(arr, 1, &value, &index, len)
    return (value: value, index: Int(index))
}

internal func softmax(_ x: [Float]) -> [Float] {
    var x = x
    let len = vDSP_Length(x.count)

    // Find the maximum value in the input array.
    var max: Float = 0
    vDSP_maxv(x, 1, &max, len)

    // Subtract the maximum from all the elements in the array.
    // Now the highest value in the array is 0.
    max = -max
    vDSP_vsadd(x, 1, &max, &x, 1, len)

    // Exponentiate all the elements in the array.
    var count = Int32(x.count)
    vvexpf(&x, x, &count)

    // Compute the sum of all exponentiated values.
    var sum: Float = 0
    vDSP_sve(x, 1, &sum, len)

    // Divide each element by the sum. This normalizes the array contents
    // so that they all add up to 1.
    vDSP_vsdiv(x, 1, &sum, &x, 1, len)

    return x
}