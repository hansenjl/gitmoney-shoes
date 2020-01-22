class CreateShoes < ActiveRecord::Migration[4.2]
  def change
    create_table :shoes do |t|
      t.string :brand
      t.string :color
      t.string :condition
      t.integer :price
    end
  end
end


