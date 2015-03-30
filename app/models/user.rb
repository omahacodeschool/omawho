class User < ActiveRecord::Base
  belongs_to :category, through: :categories_users
end
