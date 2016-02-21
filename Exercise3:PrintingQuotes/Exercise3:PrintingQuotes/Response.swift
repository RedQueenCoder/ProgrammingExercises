typealias Response = String

extension Response {
    var isCorrectAnswer: Bool {return self == answer}
}