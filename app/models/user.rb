class User < ActiveRecord::Base
  #before_save { self.email = email.downcase }
  before_save { email.downcase! }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
#must be at least 6 characters and include one number and one letter
  #VALID_PASSWORD_REGEX = /\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*(_|[^\w])).+\z/
  #
  validates :password, presence: true, length: { minimum: 6 }#, format: { with: VALID_PASSWORD_REGEX }

  has_secure_password
end
