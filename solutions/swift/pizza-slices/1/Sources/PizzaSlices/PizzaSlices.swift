func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    if let d = diameter, d>=0, let s = slices, s>=1 {
      return ( (Double.pi*d*d)/(4*Double(s) ))
    }
      return nil
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
  let areaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
  let areaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))
  
  switch (areaA, areaB){
    case let(a?, b?) where a > b:
      return "Slice A is bigger"
    case let(a?, b?) where a < b:
      return "Slice B is bigger"
    case let(a?, b?):
      return "Neither slice is bigger"
    case (nil, _?):
      return "Slice B is bigger"
    case (_?,nil):
      return "Slice A is bigger"
    case (nil, nil):
    return "Neither slice is bigger"
  }
    
    
}
  

