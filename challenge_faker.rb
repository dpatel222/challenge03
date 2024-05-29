require_relative 'ar.rb'
require 'faker'

all_cat = Category.all.includes(:products)

for i in 0..20
  puts all_cat[i].inspect
end

=begin 10.times do
    new_cat = Category.create(name: Faker::Pokemon.name)

    10.times do
      new_cat.products.create(
        name: Faker::Book.title,
        description: Faker::Book.author,
        price: Faker::Number.number(2),
        stock_quantity: Faker::Number.number(2)
      )
    end

end
=end

all_products = Product.all

=begin for i in 0..100
    puts all_products[i].inspect
end
=end




all_cat.each do |category|
    puts "Category: #{category.name}"
    category.products.each do |product|
      puts "  Product: #{product.name}, Price: $#{product.price}"
    end
  
end 

