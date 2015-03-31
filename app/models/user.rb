class User < ActiveRecord::Base
  has_many :categories_users
  has_many :categories, through: :categories_users

  validates_uniqueness_of :username

  self.per_page = 16
end
