class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: { in: 2..300 }
  validates :body, length: { maximum: 10_000 }
  validates :user_id, presence: true

  has_many :comments, as: :commentable

  belongs_to :user
end
