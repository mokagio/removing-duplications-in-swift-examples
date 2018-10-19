@testable import FoodLogger
import Nimble
import XCTest

class FoodLoggerTests: XCTestCase {

    func testLoggerLog() {
        expectLogger(logs: "There's nothing like home made pasta", forInput: Pasta())
        expectLogger(logs: "Pizza is awesome!", forInput: Pizza())
        expectLogger(logs: "I love gelato any time of the year", forInput: Gelato())
    }

    private func expectLogger(
        logs output: String,
        forInput input: Any,
        file: FileString = #file,
        line: UInt = #line
    ) {
        let storageMock = StorageMock()
        let logger = Logger(storage: storageMock)

        logger.log(input)

        expect(storageMock.hasStored(output), file: file, line: line) == true
    }
}
