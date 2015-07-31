class User < ActiveRecord::Base

  has_secure_password
  has_many :pintures
  validates :email, :username, :password, presence: true
  validates :email, uniqueness: true, length: { minimum: 4 }
  validates :username, uniqueness: true, length: { minimum: 3 }
  validates :password, length: { minimum: 5 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX }

end
