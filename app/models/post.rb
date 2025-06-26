class Post < ApplicationRecord
  validates :comment, presence: true, length: { in: 1..250 }
end
