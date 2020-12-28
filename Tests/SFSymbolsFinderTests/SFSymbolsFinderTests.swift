import XCTest
@testable import SFSymbolsFinder

final class SFSymbolsFinderTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SFSymbolsFinder().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
