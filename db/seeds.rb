# seeds.rb

# Clear existing data
Product.destroy_all
User.destroy_all

# Create users
user1 = User.create(name: 'John Doe', email: 'john@example.com', password_digest: 'password')
user2 = User.create(name: 'Jane Smith', email: 'jane@example.com', password_digest: 'password')
# Add more users as needed

# Create products associated with users
Product.create(name: 'Product A', price: 19.99, user: user1)
Product.create(name: 'Product B', price: 29.99, user: user1)
Product.create(name: 'Product C', price: 39.99, user: user2)
# Add more products as needed
