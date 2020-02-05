class User < ApplicationRecord
  has_secure_password

  validates :username, uniqueness: { message: "is already in use. Try again!"}
  validates :username, :email, presence: true
end
