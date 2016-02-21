typealias Response = String

extension Response {
    var isCorrectAnswer: Bool {return self == answer}
    
    var output: String {
        return isCorrectAnswer
            ? "Correct! \(self) said \(quoteText())"
            : "Sorry, \(self) did not say that. Try again."
    }
}