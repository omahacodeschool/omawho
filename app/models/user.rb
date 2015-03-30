class User < ActiveRecord::Base
  has_one :categories_users
  has_one :category, through: :categories_users
end
