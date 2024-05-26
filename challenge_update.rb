require_relative 'ar.rb'

before = Product.where("stock_quantity >= 40")
before.each{|c| puts c.stock_quantity}

stock = Product.where("stock_quantity > 40")

stock.each do |c|
    c.stock_quantity = c.stock_quantity + 1
    c.save
    
end
stock.each{|c| puts c.stock_quantity}
