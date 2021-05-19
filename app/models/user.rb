class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
    has_many :dogs
    has_many :comments
    has_many :photos, through: :comments

    validates :username, uniqueness: true, presence: true

    has_secure_password
end
