class AddCategoryToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :category, index: true
    add_foreign_key :users, :categories
    remove_column :users, :primary_category
  end
end
