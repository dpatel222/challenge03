require_relative 'ar.rb'

number_of_products = Product.count

first_product = Product.first[:name]

# puts first_product

all_producs = Product.all

# the inspect tells us that there are 8 coloums which are
# product_id
# name
# description
# price
# stock_quantity
# category_id
# created_at
# updated_at

puts all_producs[0].inspect

price_name = Product.where('price > 10 AND name LIKE "C%"')

# We see that there is a category_id coloum so we can assume it has a assocaition with the category table
 
price_name.each{ |p| puts p.name}
#price_name.each{ |p| puts p.price}

stock = Product.where("stock_quantity < 5")

stock.each{|s| puts s.name}
#stock.each{|s| puts s.stock_quantity}



# puts "There are #{number_of_products} in the products table."

laptop = Product.where(:name => "Laptop").first
puts laptop.inspect

phone = Product.where(:name => "Phone").first
puts phone.inspect

cards = Product.where(:name => "Cards").first
puts cards.inspect

glass = Product.where(:name => "Glass").first
puts glass.inspect

find = Product.find(155)
puts find.name

puts find.category.name
puts "=========================================="
beverages = Category.where(:name => 'Beverages').first

puts beverages.inspect

new_one = beverages.products.build( name: "New Drink",
                                    description: "A new Drink for the table",
                                    price: 123.00,
                                    stock_quantity: 201)

new_one.save

drink = Product.where(:name => "New Drink").first
puts drink.inspect

puts new_one.inspect

new_cat = Product.find(157)
puts new_cat.name
puts new_cat.category.inspect

condiments = Category.where(:name => 'Condiments',).first

puts condiments.inspect

x = condiments.products.where('price > 10')

x.each{|p| puts p.name, p.price}

