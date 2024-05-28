require_relative 'ar.rb'
require 'faker'

all_cat = Category.all

for i in 0..19
    puts all_cat[i].inspect
end

for i in 1..10
    new_cat = Category.create(name: Faker::Book.genre)
    for x in 1..10
        new_cat.products.build( name: Faker::Book.title,
                          description: Faker::Book.author,
                          price: Faker::Number.number(digits: 2),
                          stock_quantity: Faker::Number.number(digits: 2)

        )
    end

end