typealias Response = String

extension Response {
    var isCorrectAnswer: Bool {return self == answer}
    
    var output: String {
        guard !self.isEmpty else {return "Please enter a response!"}
        
        return isCorrectAnswer
            ? "Correct! \(self) said \(quoteText())"
            : "Sorry, \(self) did not say that. Try again."
    }
}