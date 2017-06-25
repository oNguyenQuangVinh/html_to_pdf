user = User.create!([{name: "iicanfly"},{name: "alex"}])
products = Product.create!([
  { name: "pen", price: 5.0, user_id: rand(1..2) },
  { name: "snack", price: 4.5, user_id: rand(1..2) },
  { name: "notebook", price: 10, user_id: rand(1..2) },
  { name: "biscuit", price: 5, user_id: rand(1..2) },
  { name: "book", price: 20, user_id: rand(1..2) },
  { name: "beverage", price: 11, user_id: rand(1..2) },
  { name: "nuts", price: 7, user_id: rand(1..2) },
  { name: "ice-cream", price: 15, user_id: rand(1..2) },
  { name: "beer", price: 25, user_id: rand(1..2) },
  { name: "toys", price: 22, user_id: rand(1..2) }
])
