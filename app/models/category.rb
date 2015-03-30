class Category < ActiveRecord::Base
  has_many :users, through: :categories_users
end
