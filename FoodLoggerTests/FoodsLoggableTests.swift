@testable import FoodLogger
import XCTest

class FoodLoggableTests: XCTestCase {

    func testGelatoLoggable() {
        XCTAssertEqual(Gelato().logMessage, "I love gelato any time of the year"
    }

    func testPastaLoggable() {
        XCTAssertEqual(Pasta().logMessage, "There's nothing like home made pasta"
    }

    func testPizzaLoggable() {
        XCTAssertEqual(Pizza().logMessage, "Pizza is awesome!")
    }
}
