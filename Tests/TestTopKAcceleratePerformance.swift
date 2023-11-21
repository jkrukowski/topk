@testable import TopK
import XCTest

internal final class TestTopKAcceleratePerformance: XCTestCase {
    internal func test_N32_000_K3() {
        let arr = Array.random(32_000)
        let k = 3
        measure(metrics: Self.defaultMetrics) {
            _ = Acc.topK(arr: arr, k: k)
        }
    }

    internal func test_N32_000_K10() {
        let arr = Array.random(32_000)
        let k = 10
        measure(metrics: Self.defaultMetrics) {
            _ = Acc.topK(arr: arr, k: k)
        }
    }

    internal func test_N32_000_K50() {
        let arr = Array.random(32_000)
        let k = 50
        measure(metrics: Self.defaultMetrics) {
            _ = Acc.topK(arr: arr, k: k)
        }
    }
    
    internal func test_N32_000_K100() {
        let arr = Array.random(32_000)
        let k = 50
        measure(metrics: Self.defaultMetrics) {
            _ = Acc.topK(arr: arr, k: k)
        }
    }

    internal func testN_65_000_K3() {
        let arr = Array.random(65_000)
        let k = 3
        measure(metrics: Self.defaultMetrics) {
            _ = Acc.topK(arr: arr, k: k)
        }
    }

    internal func test_N65_000_K10() {
        let arr = Array.random(65_000)
        let k = 10
        measure(metrics: Self.defaultMetrics) {
            _ = Acc.topK(arr: arr, k: k)
        }
    }

    internal func test_N65_000_K50() {
        let arr = Array.random(65_000)
        let k = 50
        measure(metrics: Self.defaultMetrics) {
            _ = Acc.topK(arr: arr, k: k)
        }
    }
    
    internal func test_N65_000_K100() {
        let arr = Array.random(65_000)
        let k = 50
        measure(metrics: Self.defaultMetrics) {
            _ = Acc.topK(arr: arr, k: k)
        }
    }

    internal func testN_128_000_K3() {
        let arr = Array.random(128_000)
        let k = 3
        measure(metrics: Self.defaultMetrics) {
            _ = Acc.topK(arr: arr, k: k)
        }
    }

    internal func test_N128_000_K10() {
        let arr = Array.random(128_000)
        let k = 10
        measure(metrics: Self.defaultMetrics) {
            _ = Acc.topK(arr: arr, k: k)
        }
    }

    internal func test_N128_000_K50() {
        let arr = Array.random(128_000)
        let k = 50
        measure(metrics: Self.defaultMetrics) {
            _ = Acc.topK(arr: arr, k: k)
        }
    }
    
    internal func test_N128_000_K100() {
        let arr = Array.random(128_000)
        let k = 50
        measure(metrics: Self.defaultMetrics) {
            _ = Acc.topK(arr: arr, k: k)
        }
    }
}
