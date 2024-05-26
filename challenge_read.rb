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

find = Product.find(200)
puts find.name

puts find.category.name