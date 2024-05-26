require_relative 'ar.rb'
phone = Product.where(:name => "Phone").first

phone.destroy unless phone.nil?

puts phone.inspect