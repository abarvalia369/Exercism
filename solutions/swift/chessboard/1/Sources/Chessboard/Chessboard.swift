// TODO: define the 'ranks' constant
// TODO: define the 'files' constant
let ranks = (1...8)
let files = ("A"..."H")

func isValidSquare(rank: Int, file: String) -> Bool {
  return ( ranks.contains(rank) && files.contains(file) )
}

func getRow(_ board: [String], rank: Int) -> [String] {
  var a = board
  return Array(a[((rank-1)*8)...(rank * 8 - 1)])
  // 0-7
  // 8-15
  // 16-23

  // rank * 8 - 1
}
