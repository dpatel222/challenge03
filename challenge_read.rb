require_relative 'ar.rb'

number_of_products = Product.count

first_product = Product.first[:name]

# puts first_product

all_producs = Product.all

# the inspect tells us that there are 8 coloums which are
# product_id
# name
# descrpition
# price
# stock_quantity
# category_id
# created_at
# updated_at

# puts all_producs[0].inspect

price_name = Product.where('price > 10 AND name LIKE "C%"')
 
price_name.each{ |p| puts p.name}
price_name.each{ |p| puts p.price}



# We see that there is a category_id coloum so we can assume it has a assocaition with the category table

# puts "There are #{number_of_products} in the products table."