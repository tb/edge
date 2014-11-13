# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Recipe.create!(name: 'Baked Potato w/ Cheese')
Recipe.create!(name: 'Garlic Mashed Potatoes')
Recipe.create!(name: 'Potatoes Au Gratin')
Recipe.create!(name: 'Baked Brussel Sprouts')

include FactoryGirl::Syntax::Methods

admin = create :user,
               email: 't.bak@selleo.com',
               password: 'secret123'

(1..3).each do
  category = create :category
  (1..10).each do
    create :item, category: category
  end
end

# properties = [
#   { name: 'Brand', type: 'String' },
#   { name: 'Screen size', type: 'Float' },
#   { name: 'Colours', type: 'Array' }
# ]
