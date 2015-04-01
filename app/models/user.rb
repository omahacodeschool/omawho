class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :categories_users
  has_many :categories, through: :categories_users

  self.per_page = 16

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  
  validates :email, uniqueness: true
end
