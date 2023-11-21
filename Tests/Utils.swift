import XCTest

extension XCTestCase {
    internal static let defaultMetrics: [any XCTMetric] = [XCTMemoryMetric(), XCTCPUMetric(), XCTClockMetric()]
}
