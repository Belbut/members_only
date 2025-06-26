class Post < ApplicationRecord
  belongs_to :user

  validates :comment, presence: true, length: { in: 1..250 }
end
