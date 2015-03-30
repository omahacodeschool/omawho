class CreateCategoriesUsers < ActiveRecord::Migration
  def change
    create_table :categories_users do |t|
      t.integer :category_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
