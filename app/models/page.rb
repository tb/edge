class Page < ActiveRecord::Base
  # add this method for friendly urls
  def to_param
    slug
  end

  rails_admin do
    list do
      field :title
      field :slug do
        formatted_value do
          link = "/#{value}"
          (bindings[:view].link_to(link, link, target: :blank)).html_safe
        end
      end
    end

    edit do
      field :title
      field :slug
      field :content, :ck_editor
    end
  end
end
