func totalBirdCount(_ b: [Int]) -> Int {
  var ctr = 0
  for x in b{
    ctr += x
  }
  return ctr
}

func birdsInWeek(_ b: [Int], weekNumber w: Int) -> Int {
  var ctr = 0
  if b.count >= w*7{
    for x in ((w-1)*7)...(w*7-1){
      ctr += (b[x])
    }
  }
  return ctr
}

func fixBirdCountLog(_ b: [Int]) -> [Int] {
  var ret = b
  for x in 0..<b.count{
    if x%2 == 0{
      ret[x] = b[x]+1
    }
    
  }
  return ret
}
