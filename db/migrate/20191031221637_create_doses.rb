class CreateDoses < ActiveRecord::Migration[5.2]
  def change
    create_table :doses do |t|
      t.integer :quantity
      t.string :measure
      t.text :description
      t.references :recipes, foreign_key: true
      t.references :ingredients, foreign_key: true

      t.timestamps
    end
  end
end
