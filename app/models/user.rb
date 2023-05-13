class User < ApplicationRecord
  validates :username, presence: true, length: { in: 6..16 }, uniqueness: true
  validates :email, presence: true, uniqueness: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP,
                              message: 'must be a valid email' }
  validates :password, presence: true, length: { in: 8..32 }, uniqueness: true

  has_many :posts
  has_many :comments
end
