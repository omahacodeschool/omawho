class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_and_belongs_to_many :categories

  #self.per_page = 16

  # add password_confirmation
  validates :password, presence: true, confirmation: true, length: { minimum: 6 }, if: ->(record) { record.new_record? || record.password.present? }
  validates :password_confirmation, presence: true, if: ->(record) { record.new_record? || record.password.present? }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :bio, length: { maximum: 400 }
  validates :tagline, length: { maximum: 30 }


  validates :email, uniqueness: true

  mount_uploader :avatar, AvatarUploader

  def full_name
    first_name + " " + last_name
  end
  
  def category_id
    self.category.id
  end
  
  def category
    self.categories.first
  end
end
