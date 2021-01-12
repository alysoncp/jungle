class User < ActiveRecord::Base

  has_secure_password

  validates :name, presence: true
  validates :email, uniqueness: true, presence: true

  validates :password, length: { minimum: 4 }, confirmation: true

 

end
