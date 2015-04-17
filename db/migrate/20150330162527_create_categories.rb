class CreateCategories < ActiveRecord::Migration
  def change
    if !table_exists?("categories")
      create_table :categories do |t|
        t.string :name

        t.timestamps null: false
      end
    end
  end
end
