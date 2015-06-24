FactoryGirl.define do

  factory :book do
    title    { Faker::Commerce.product_name }
    price    { Faker::Number.number(4) }
    in_stock { Faker::Number.number(3) }
  end

end