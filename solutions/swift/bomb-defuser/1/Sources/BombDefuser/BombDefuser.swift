typealias ChangeClosure = @Sendable ((String, String, String)) -> (String, String, String)

let flip: ChangeClosure = { (_ t: (a: String, b: String, c: String)) -> ( a: String, b: String, c: String ) in
             return ( (a: t.b, b: t.a, c: t.c) )
           }

let rotate: ChangeClosure = { ( _ t: (a: String, b: String, c: String) ) -> (a: String, b: String, c: String) in
                return ((a: t.b, b: t.c, c: t.a))
             }

func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> ([UInt8], (String, String, String)) -> (String, String, String) {
  return { (id: [UInt8], w: (a: String, b: String, c: String) ) -> (a: String, b: String, c: String) in
    var ret = w
    for x in id.reversed(){
      if x == 1{
        ret = rotator(ret)
      }
      else if x == 0{
        ret = flipper(ret)
      }
    }
    return ret
  }
}
