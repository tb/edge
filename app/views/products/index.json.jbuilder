json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :category_id
end
