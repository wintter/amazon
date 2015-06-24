FactoryGirl.define do
  # This will use the User class (Admin would have been guessed)
  factory :address do
    adress Faker::Address.street_name
    zipcode Faker::Address.zip_code
    city Faker::Address.city
    phone Faker::PhoneNumber.cell_phone
  end
end