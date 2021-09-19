@testable import Clamp
import XCTest

class ClampPropertyWrapperTests: XCTestCase {
    func testClampModelValue() {
        var model = ExampleModel()

        model.someValue = 5.0
        XCTAssertEqual(5.0, model.someValue)

        model.someValue = 0.0
        XCTAssertEqual(0.0, model.someValue)

        model.someValue = 10.0
        XCTAssertEqual(10.0, model.someValue)

        model.someValue = -1.0
        XCTAssertEqual(0.0, model.someValue)

        model.someValue = 11.0
        XCTAssertEqual(10.0, model.someValue)
    }
}
