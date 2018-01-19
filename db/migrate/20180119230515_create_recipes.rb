class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.integer :webuser_id
      t.integer :category_id
      t.string :title
      t.string :people_it_feeds
      t.text :description
      t.text :ingredients
      t.text :instructions

      t.timestamps
    end
  end
end
