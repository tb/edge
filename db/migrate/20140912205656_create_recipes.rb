class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :instructions

      t.timestamps
    end
  end
end
