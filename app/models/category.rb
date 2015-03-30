class Category < ActiveRecord::Base
  has_many :categories_users
  has_many :users, through: :categories_users
end
