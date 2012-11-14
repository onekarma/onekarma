namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
  	admin = User.create!(name: "Stephen To",
    			 email: "stephen@onekarma.org",
    			 password: "Passw0rd",
    			 password_confirmation: "Passw0rd")
  	admin.toggle!(:admin)
    User.create!(name: "Example User",
    			 email: "example@example.com",
    			 password: "Passw0rd",
    			 password_confirmation: "Passw0rd")
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@example.com"
      password = "Passw0rd"
      User.create!(name: name,
      			   email: email,
      			   password: password,
      			   password_confirmation: password)
    end
  end
end