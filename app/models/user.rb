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

  def linkedin_username
    matches = self.linkedin.match(regex_pattern)
    matches[4]
  end

  def facebook_username
    matches = self.facebook.match(regex_pattern)
    matches[4]
  end

  def twitter_username
    matches = self.twitter.match(regex_pattern)
    matches[4]
  end

  def instagram_username
    matches = self.instagram.match(regex_pattern)
    matches[4]
  end

  def github_username
    matches = self.github.match(regex_pattern)
    matches[4]
  end

  def tumblr_username
    matches = self.tumblr.match(regex_pattern)
    matches[4]
  end

  def dribbble_username
    matches = self.dribbble.match(regex_pattern)
    matches[4]
  end

  def pinterest_username
    matches = self.pinterest.match(regex_pattern)
    matches[4]
  end

  private

  def regex_pattern
    # This method returns a new Regexp object using the given pattern.
    pattern = "^(https?:\/\/)?(www.)?(facebook.com\/|linkedin.com\/|twitter.com\/|instagram.com\/|github.com\/|dribbble.com\/|pinterest.com\/)?(.*)"
    Regexp.new(pattern, Regexp::IGNORECASE)
  end

end
