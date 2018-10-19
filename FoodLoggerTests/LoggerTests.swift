@testable import FoodLogger
import XCTest

class FoodLoggerTests: XCTestCase {

    func testLoggerLogsMessage() {
        let storageMock = StorageMock()
        let input = FakeLoggable()
        let logger = Logger(storage: storageMock)

        logger.log(input)

        XCTAssert(storageMock.hasStored(input.logMessage))
    }
}

struct FakeLoggable: Loggable {

    let logMessage = "log-message"
}
