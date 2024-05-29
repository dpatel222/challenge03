require_relative 'ar.rb'
require 'faker'

all_cat = Category.all.includes(:products)

for i in 0..20
  puts all_cat[i].inspect
end

=begin 10.times do
    new_cat = Category.create(name: Faker::Pokemon.name)

    10.times do
      new_product = new_cat.products.new(
        name: Faker::Commerce.product_name,
        description: Faker::Book.author,
        price: Faker::Number.number(2),
        stock_quantity: Faker::Number.number(2)
      )
      

      if (new_product.save)
        puts new_product.inspect
      else
        puts "There was an error."
      end
    end

end  
=end



all_products = Product.all





all_cat.each do |category|
    puts "Category: #{category.name}"
    category.products.each do |product|
      puts "  Product: #{product.name}, Price: $#{product.price}"
    end
  
end 

