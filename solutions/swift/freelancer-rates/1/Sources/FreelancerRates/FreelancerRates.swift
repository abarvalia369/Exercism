func dailyRateFrom(hourlyRate hr: Int) -> Double {
  return Double(hr * 8)
}

func monthlyRateFrom(hourlyRate hr: Int, withDiscount d: Double) -> Double {
  let r = Double(hr)
  let ret = (r-d)*22*8
  return (ret.rounded())
}

func workdaysIn(budget b: Double, hourlyRate hr: Int, withDiscount d: Double) -> Double {
  let r = Double(hr)
  let ret = b - (r-d) * 8
  return ret.rounded(.down)
}