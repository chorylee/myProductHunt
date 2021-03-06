class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :image_url
      t.string :product_URL, null: false 

      t.timestamps
    end
    add_index :products, :name, unique: true
  end
end
