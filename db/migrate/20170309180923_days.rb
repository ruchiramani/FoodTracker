class Days < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.integer :calorie_intake
      t.datetime :name
    end
  end
end
