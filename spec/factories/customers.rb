FactoryGirl.define do

  factory :customer do
    email Faker::Internet.email
    password Faker::Internet.password
    firstname Faker::Internet.user_name
    lastname Faker::Internet.user_name
  end

end