func canIBuy(vehicle: String, price: Double, monthlyBudget mb: Double) -> String {
  let mp = price/60
  if  mp<mb {
    return ("Yes! I'm getting a \(vehicle)")
  }
  else if  mp <= (mb*1.1){
    return ("I'll have to be frugal if I want a \(vehicle)")
  }
  else{
    return ("Darn! No \(vehicle) for me")
  }
}

func licenseType(numberOfWheels w: Int) -> String {
  
  if w == 2 || w == 3{
    return ("You will need a motorcycle license for your vehicle")
  }
  else if w == 4 || w == 6{
    return ("You will need an automobile license for your vehicle")
  }
  else if w == 18{
    return ("You will need a commercial trucking license for your vehicle")
  }
  else{
    return ("We do not issue licenses for those types of vehicles")
  }
  
}

func calculateResellPrice(originalPrice price: Int, yearsOld y: Int) -> Int {
  let p = Double(price)
  if y < 3{
    return Int(p*0.8)
  }
  else if y >= 3 && y < 10{
    return Int(p*0.7)
  }
  else{
    return Int(p*0.5)
  }

  
}
