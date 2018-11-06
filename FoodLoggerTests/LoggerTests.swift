@testable import FoodLogger
import XCTest

class FoodLoggerTests: XCTestCase {

    func testLoggerLogsMessageWithPasta() {
        expectLogger(toLog: "There's nothing like home made pasta", forInput: Pasta())
        expectLogger(toLog: "Pizza is awesome!", forInput: Pizza())
        expectLogger(toLog: "I love gelato any time of the year", forInput: Gelato())
    }

    private func expectLogger(
        toLog output: String,
        forInput input: Any,
        file: StaticString = #file,
        line: UInt = #line
    ) {
        let storageMock = StorageMock()
        let logger = Logger(storage: storageMock)

        logger.log(input)

        XCTAssert(
            storageMock.hasStored(output),
            "\"\(output)\" was not logged.",
            file: file,
            line: line
        )
    }
}
