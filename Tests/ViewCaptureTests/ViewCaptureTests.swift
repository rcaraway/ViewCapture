import XCTest
@testable import ViewCapture

final class ViewCaptureTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ViewCapture().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
