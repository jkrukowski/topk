import Foundation

extension Array where Element == Float {
    public static func random(_ count: Int) -> [Element] {
        (0..<count).map{ _ in 
            Float.random(in: -1_000_000 ... 1_000_000)
        }
    }
}
