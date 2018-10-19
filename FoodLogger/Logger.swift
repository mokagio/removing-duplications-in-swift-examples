protocol Loggable {
    var logMessage: String { get }
}

class Logger {

    let storage: Storage

    init(storage: Storage) {
        self.storage = storage
    }

    func log(_ input: Loggable) {
        storage.persist(input.logMessage)
    }
}
