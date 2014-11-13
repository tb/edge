class Page < ActiveRecord::Base
  # add this method for friendly urls
  def to_param
    slug
  end

  rails_admin do
    list do
      field :slug
      field :title
    end

    edit do
      field :title
      field :slug
      field :content, :ck_editor
    end
  end
end
