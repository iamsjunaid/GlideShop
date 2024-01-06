# seeds.rb

# Creating users
User.create(name: "User1", email: "user1@example.com", password_digest: "password1")
User.create(name: "User2", email: "user2@example.com", password_digest: "password2")

# Creating products
Product.create(name: "Product1", price: 19.99)
Product.create(name: "Product2", price: 29.99)

# Creating orders
Order.create(user_id: User.first.id, product_id: Product.first.id, address: "123 Main St", amount: 19.99, status: "Pending", created_at: Time.current, updated_at: Time.current)
Order.create(user_id: User.second.id, product_id: Product.second.id, address: "456 Oak St", amount: 29.99, status: "Pending", created_at: Time.current, updated_at: Time.current)

puts "Seed data has been created successfully!"
