FactoryGirl.define do

  factory :credit_card do
    number Faker::Number.number(12)
    CVV Faker::Number.number(3)
    expiration_month Faker::Date.backward(14)
    expiration_year Faker::Time.between(365.days.ago, Time.now, :all)
    first_name Faker::Name.name
    last_name Faker::Name.name
  end

end