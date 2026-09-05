func bonusPoints(powerUpActive p: Bool, touchingEagle t: Bool) -> Bool {
  return ( p && t )
}

func score(touchingPowerUp p: Bool, touchingSeed s: Bool) -> Bool {
  return ( p || s )
}

func lose(powerUpActive p: Bool, touchingEagle t: Bool) -> Bool {
  return ( !p && t)
}

func win(hasPickedUpAllSeeds s: Bool, powerUpActive p: Bool, touchingEagle t: Bool) -> Bool {
  return ( s && !(!p && t) )
}
