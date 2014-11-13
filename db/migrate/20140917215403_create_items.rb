class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.boolean :published
      t.integer :position
      t.text :description
      t.references :category
      t.hstore :properties

      t.timestamps
    end
  end
end
