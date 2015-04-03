class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :categories_users
  has_many :categories, through: :categories_users

  #self.per_page = 16

  # add password_confirmation
  validates :password, presence: true, confirmation: true, length: { minimum: 6 }, if: ->(record) { record.new_record? || record.password.present? }
  validates :password_confirmation, presence: true, if: ->(record) { record.new_record? || record.password.present? }
  

  validates :email, uniqueness: true

  mount_uploader :avatar, AvatarUploader

  def full_name
    first_name + " " + last_name
  end
end
