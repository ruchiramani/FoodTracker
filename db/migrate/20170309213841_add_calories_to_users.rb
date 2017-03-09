class AddCaloriesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :calories, :integer
  end
end
