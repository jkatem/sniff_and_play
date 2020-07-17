class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :photo
  belongs_to :dog
end
