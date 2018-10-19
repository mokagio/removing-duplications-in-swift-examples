class Logger {

    let storage: Storage

    init(storage: Storage) {
        self.storage = storage
    }

    func log(_ input: Any) {
        switch input {
        case is Gelato:
            storage.persist("I love gelato any time of the year")
        case is Pasta:
            storage.persist("There's nothing like home made pasta")
        case is Pizza:
            storage.persist("Pizza is awesome!")
        case _:
            storage.persist("\(input)")
        }
    }
}
