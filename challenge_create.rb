require_relative 'ar.rb'

# Method 1 
product_one = Product.new

product_one.name = "Laptop"
product_one.description = "New laptop product Description"
product_one.price = 10.00
product_one.stock_quantity = 10

product_one.save



# Method 2

phone = Product.new( name: "Phone",
                     description: "A new Phone for the table",
                     price: 12.00,
                     stock_quantity: 20

)

phone.save

# Methond 3

cards = Product.create( name: "Cards",
                        description: "Pokemon Cards",
                        price: 16.00,
                        stock_quantity: 27

)

glass = Product.create( name: "Glass",
                        
)

glass.save