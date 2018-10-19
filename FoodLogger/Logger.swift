class Logger {

    let transformation: (Any) -> String
    let storage: Storage

    init(
        transformation: @escaping (Any) -> String = extractLogMessage(fromInput:),
        storage: Storage
    ) {
        self.transformation = transformation
        self.storage = storage
    }

    func log(_ input: Any) {
        storage.persist(transformation(input))
    }
}

func extractLogMessage(fromInput input: Any) -> String {
    switch input {
    case is Gelato:
        return "I love gelato any time of the year"
    case is Pasta:
        return "There's nothing like home made pasta"
    case is Pizza:
        return "Pizza is awesome!"
    case _:
        return "\(input)"
    }
}
