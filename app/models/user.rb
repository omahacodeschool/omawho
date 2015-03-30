class User < ActiveRecord::Base
  has_many :categories_users
  has_many :categories, through: :categories_users
end
