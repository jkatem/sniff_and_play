class Photo < ApplicationRecord
  belongs_to :dog
  has_many :comments
  has_many :users, through: :comments
end
