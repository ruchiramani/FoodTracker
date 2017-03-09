class DayRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :day_recipes do |t|
      t.integer :day_id
      t.integer :recipe_id 
    end
  end
end
