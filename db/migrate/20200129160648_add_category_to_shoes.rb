class AddCategoryToShoes < ActiveRecord::Migration[6.0]
  def change
    add_column :shoes, :category_id, :integer
  end
end
