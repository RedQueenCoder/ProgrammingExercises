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

// A future version of Swift will let us extend `Response?` directly,
// avoiding the need for this protocol:
//extension Response? {
//    var output: String? {return self?.output}
//}
protocol ResponseType {}
extension Response: ResponseType {}
extension Optional where Wrapped: ResponseType {
    var output: String? {
        return (self as? String)?.output
    }
}