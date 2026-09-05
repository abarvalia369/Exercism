func getName(_ item: (name: String, amount: Int)) -> String {
  return item.name
  
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
  return (name: name, amount: amount)

}

func updateQuantity(_ i: [(name: String, amount: Int)], toy: String, amount a: Int) ->  [(name: String, amount: Int)] {
  var c = i
  for x in c.indices{
    if c[x].name == toy{
      c[x].amount = a
    }
  }
  return c

}

func addCategory(_ items: [(name: String, amount: Int)], category c: String) -> [(name: String, amount: Int, category: String)] {
  var ary: [(name: String, amount: Int, category: String)] = []
  for x in items.indices{
    ary.append((name: items[x].name, amount: items[x].amount, category: c))    

  }
  return ary

}
