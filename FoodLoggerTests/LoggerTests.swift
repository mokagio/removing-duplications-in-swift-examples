@testable import FoodLogger
import XCTest

class FoodLoggerTests: XCTestCase {

    func testLoggerLogsMessageWithPasta() {
        let storageMock = StorageMock()
        let logger = Logger(storage: storageMock)

        logger.log(Pasta())

        XCTAssert(storageMock.hasStored("There's nothing like home made pasta"))
    }

    func testLoggerLogsMessageWithPizza() {
        let storageMock = StorageMock()
        let logger = Logger(storage: storageMock)

        logger.log(Pizza())

        XCTAssert(storageMock.hasStored("Pizza is awesome!"))
    }

    func testLoggerLogsMessageWithGelato() {
        let storageMock = StorageMock()
        let logger = Logger(storage: storageMock)

        logger.log(Gelato())

        XCTAssert(storageMock.hasStored("I love gelato any time of the year"))
    }
}
