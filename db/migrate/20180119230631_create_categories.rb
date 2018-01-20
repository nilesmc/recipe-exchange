class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :title, index: true
      t.string :slug, index: true
      t.text :description

      t.timestamps
    end
  end
end
