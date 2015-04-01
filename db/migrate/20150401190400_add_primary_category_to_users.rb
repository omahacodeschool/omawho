class AddPrimaryCategoryToUsers < ActiveRecord::Migration
  def change
    add_column :users, :primary_category, :integer
  end
end
