// TODO: define the 'birthday' String constant
let birthday = "Birthday"
// TODO: define the 'valentine' String constant
let valentine = "Valentine's Day"
// TODO: define the 'anniversary' String constant
let anniversary = "Anniversary"
// TODO: define the 'space' Character constant
let space: Character = " "
// TODO: define the 'exclamation' Character constant
let exclamation: Character = "!"
func buildSign(for o: String, name n: String) -> String {
  let s = String(space)
  let e = String(exclamation)
  return ("Happy " + o + s + n + e)
}

func graduationFor(name: String, year: Int) -> String {
  let e = String(exclamation)
  return ("Congratulations " + name + e + "\n" + "Class of \(year)")
}

func costOf(sign: String) -> Int {
  let ctr = sign.count
  return ( 20+ctr*2)
}
