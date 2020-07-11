class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.references :category, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true
      t.references :gender, null: false, foreign_key: true
      t.references :size, null: false, foreign_key: true

      t.timestamps
    end
  end
end
