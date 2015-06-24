namespace :db do
  task :populate_books => :environment do
    10.times do
      title  = Faker::Commerce.product_name
      description = Faker::Lorem.sentence
      price = Faker::Commerce.price
      in_stock = Faker::Number.number(2)
      Book.create!(title: title,
                   description: description,
                   price: price,
                   in_stock: in_stock)
    end
  end
  task :populate_categories => :environment do
    5.times do
      title  = Faker::Name.title
      Category.create!(title: title)
    end
  end
  task :populate_users => :environment do
    50.times do
      name = Faker::Internet.user_name
      email = Faker::Internet.email
      password = Faker::Internet.password
      User.create!(name:name, email:email, password:password, password_confirmation:password)
    end
  end
end
