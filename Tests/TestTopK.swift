@testable import TopK
import XCTest

internal final class TestTopK: XCTestCase {
    internal func testAccelerate() {
        let result = Acc.topK(arr: (0 ..< 10).map { Float($0) }, k: 3)
        XCTAssertEqual(result.indexes, [9, 8, 7])
        XCTAssertEqual(result.probs, [9, 8, 7])
    }

    internal func testCollectionsV1() {
        let result = Coll.V1.topK(arr: (0 ..< 10).map { Float($0) }, k: 3)
        XCTAssertEqual(result.indexes, [9, 8, 7])
        XCTAssertEqual(result.probs, [9, 8, 7])
    }

    internal func testCollectionsV2() {
        let result = Coll.V2.topK(arr: (0 ..< 10).map { Float($0) }, k: 3)
        XCTAssertEqual(result.indexes, [9, 8, 7])
        XCTAssertEqual(result.probs, [9, 8, 7])
    }

    internal func testCollectionsV3() {
        let result = Coll.V3.topK(arr: (0 ..< 10).map { Float($0) }, k: 3)
        XCTAssertEqual(result.indexes, [9, 8, 7])
        XCTAssertEqual(result.probs, [9, 8, 7])
    }

    internal func testHuggingface() {
        let result = Hugg.topK(arr: (0 ..< 10).map { Float($0) }, k: 3)
        XCTAssertEqual(result.indexes, [9, 8, 7])
        XCTAssertEqual(result.probs, [9, 8, 7])
    }
}
