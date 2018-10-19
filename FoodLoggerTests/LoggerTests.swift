@testable import FoodLogger
import XCTest

class FoodLoggerTests: XCTestCase {

    func testLoggerLogs() {
        let storageMock = StorageMock()
        let logger = Logger(
            transformation: { _ in return "something" },
            storage: storageMock
        )

        logger.log("any input")

        XCTAssert(storageMock.hasStored("something"))
    }

    func testTransformation() {
        XCTAssertEqual(
            extractLogMessage(fromInput: Gelato()),
            "I love gelato any time of the year"
        )
        XCTAssertEqual(
            extractLogMessage(fromInput: Pasta()),
            "There's nothing like home made pasta"
        )
        XCTAssertEqual(
            extractLogMessage(fromInput: Pizza()),
            "Pizza is awesome!"
        )
    }
}
