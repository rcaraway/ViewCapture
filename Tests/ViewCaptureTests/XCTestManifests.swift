import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ViewCaptureTests.allTests),
    ]
}
#endif
