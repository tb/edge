# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :page do
    title { Faker::Product.product_name }
    content { Faker::HTMLIpsum.fancy_string }
    slug { Faker::Product.product_name }

    trait :index do
      title { 'Index page' }
      content { "<h1>Index page</h1>#{Faker::HTMLIpsum.fancy_string}" }
      slug { '' }
    end

    trait :contact do
      title { 'Contact page' }
      content { "<h1>Contact page</h1>#{Faker::HTMLIpsum.fancy_string}" }
      slug { 'contact' }
    end
  end
end
