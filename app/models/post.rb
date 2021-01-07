class Post < ApplicationRecord
  default_scope { order(created_at: :desc) }

  validates :body, :user_id, presence: true
  belongs_to :user
end
