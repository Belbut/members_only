class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, uniqueness: true, presence: true, length: { in: 3..20 }
  validates :email, uniqueness: true, presence: true
  validates :password, length: { in: Devise.password_length }
end
