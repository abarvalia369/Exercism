// TODO: define the 'expectedMinutesInOven' constant
let expectedMinutesInOven = 40
// TODO: define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes value: Int) -> Int {
  return (expectedMinutesInOven - value)
}
// TODO: define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers value: Int) -> Int {
  return (value * 2)
}
// TODO: define the 'totalTimeInMinutes' function
func totalTimeInMinutes(layers l: Int, elapsedMinutes e: Int) -> Int {
  return (l * 2 + e)
}