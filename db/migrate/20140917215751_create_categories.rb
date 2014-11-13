class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :position
      t.string :categories, :ancestry

      t.timestamps
    end

    add_index :categories, :ancestry
  end
end
