@testable import FoodLogger

class StorageMock: Storage {

    private var messages: [String] = []

    func persist(_ message: String) {
        messages.append(message)
    }

    func hasStored(_ message: String) -> Bool {
        return messages.contains(message)
    }
}
