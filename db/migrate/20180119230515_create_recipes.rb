class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.integer :webuser_id, index: true
      t.integer :category_id, index: true
      t.string :title, index: true
      t.string :slug, index: true
      t.string :people_it_feeds
      t.text :description
      t.text :ingredients
      t.text :instructions

      t.timestamps
    end
  end
end
