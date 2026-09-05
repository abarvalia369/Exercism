func getCard(at i: Int, from stack: [Int]) -> Int {
  return stack[i]
  
}

func setCard(at i: Int, in stack: [Int], to new: Int) -> [Int] {
  var s: [Int] = stack
  guard i >= 0 && i < s.count else {
        return s // or however the spec wants you to handle it
  }
  s[i] = new
  return s
  
}

func insert(_ new: Int, atTopOf stack: [Int]) -> [Int] {
  var s: [Int] = stack
  
  s.append(new)
  return (s)
  
}

func removeCard(at i: Int, from stack: [Int]) -> [Int] {
  var s: [Int] = stack
  guard i >= 0 && i < s.count else {
        return s // or however the spec wants you to handle it
  }
  s.remove(at:i)
  return s
  
}

func insert(_ new: Int, at i: Int, from stack: [Int]) -> [Int] {
  var s: [Int] = stack
  guard i >= 0 && i <= s.count else {
        return s // or however the spec wants you to handle it
  }
  s.insert(new, at: i)
  return s
  
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  return ( size == stack.count)
  
}



