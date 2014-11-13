class Item < ActiveRecord::Base
  belongs_to :category

  delegate :name, to: :category, prefix: true, allow_nil: true


  rails_admin do
    list do
      field :name
      field :published
      field :category
    end

    edit do
      field :name
      field :published
      field :description, :ck_editor
      field :category
    end
  end
end
