# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name { Faker::Product.product_name }
    description { Faker::HTMLIpsum.fancy_string }
  end
end
