class Comment < ApplicationRecord
  validates :body, presence: true
  validates :user_id, presence: true
  validates :commentable_id, presence: true
  validates :commentable_type, presence: true

  has_many :comments, as: :commentable

  belongs_to :user
  belongs_to :commentable, polymorphic: true
end
