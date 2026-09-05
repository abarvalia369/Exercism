func dailyRateFrom(hourlyRate hr: Int) -> Double {
  return Double(hr * 8)
}

func monthlyRateFrom(hourlyRate hr: Int, withDiscount d: Double) -> Double {
  let mr = Double(hr) * 8 * 22
  let ret = mr * (1 - d / 100)
  return (ret.rounded())
}

func workdaysIn(budget b: Double, hourlyRate hr: Int, withDiscount d: Double) -> Double {
  let discountedDailyRate = Double(hr) * 8 * (1 - d / 100)
  return (b / discountedDailyRate).rounded(.down)
}