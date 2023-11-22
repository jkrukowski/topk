import XCTest

extension XCTestCase {
    internal static var defaultOptions: XCTMeasureOptions {
        let options = XCTMeasureOptions.default
        options.iterationCount = 1_000
        return options
    }
    internal static let defaultMetrics: [any XCTMetric] = [XCTMemoryMetric(), XCTCPUMetric(), XCTClockMetric()]
}
