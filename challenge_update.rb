require_relative 'ar.rb'

stock = Product.where("stock_quantity > 40")

stck.each do |c|
    c.stock_quantity + 1
    c.save
end