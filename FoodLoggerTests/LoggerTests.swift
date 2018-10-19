@testable import FoodLogger
import Nimble
import XCTest

class FoodLoggerTests: XCTestCase {

    func testLoggerLogsMessageWithPasta() {
        let storageMock = StorageMock()
        let logger = Logger(storage: storageMock)

        logger.log(Pasta())

        expect(storageMock.hasStored("There's nothing like home made pasta")) == true
    }

    func testLoggerLogsMessageWithPizza() {
        let storageMock = StorageMock()
        let logger = Logger(storage: storageMock)

        logger.log(Pizza())

        expect(storageMock.hasStored("Pizza is awesome!")) == true
    }

    func testLoggerLogsMessageWithGelato() {
        let storageMock = StorageMock()
        let logger = Logger(storage: storageMock)

        logger.log(Gelato())

        expect(storageMock.hasStored("I love gelato any time of the year")) == true
    }
}
