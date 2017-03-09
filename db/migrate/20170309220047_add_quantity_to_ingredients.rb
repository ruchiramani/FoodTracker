class AddQuantityToIngredients < ActiveRecord::Migration[5.0]
  def change
    add_column :ingredients, :quantity, :integer 
  end
end
