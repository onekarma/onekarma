FactoryGirl.define do
  factory :user do
    name     "Example User"
    email    "example@example.com"
    password "Passw0rd"
    password_confirmation "Passw0rd"
  end
end