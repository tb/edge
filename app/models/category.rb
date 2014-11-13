class Category < ActiveRecord::Base
  has_ancestry
  has_many :items

  rails_admin do
    list do
      field :name
    end

    edit do
      field :name
      field :items
    end

    nestable_tree position_field: :position,
                  max_depth: 3
  end
end
