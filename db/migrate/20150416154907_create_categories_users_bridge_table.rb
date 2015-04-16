class CreateCategoriesUsersBridgeTable < ActiveRecord::Migration
  def change
    if !table_exists?("categories_users")
      create_table :categories_users do |t|
        t.integer :category_id, index: true
        t.integer :user_id, index: true
      end
    end
  end
end
