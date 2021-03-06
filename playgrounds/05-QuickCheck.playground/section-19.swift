
extension Character : Arbitrary {
  static func arbitrary() -> Character {
    return Character(UnicodeScalar(random(from: 65, to:90)))
  }

  func smaller() -> Character? { return nil }
}

extension String : Arbitrary {
    static func arbitrary() -> String {
        let randomLength = random(from: 0, to: 100)
        let randomCharacters = repeat(randomLength) { _ in Character.arbitrary() }
        return reduce(randomCharacters, "", +)
    }
    
}