class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :image
      t.text :ingredients
      t.text :method
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
