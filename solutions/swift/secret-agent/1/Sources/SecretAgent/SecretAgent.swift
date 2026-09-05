func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  func check(_ s: String) -> String{
    if s == password{
      return (secret)
    }
    else{
      return ("Sorry. No hidden secrets here.")
    }
  }
  return check
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let a = f(room)
  let b = f(a)
  let c = f(b)
  return (a,b,c)
}
