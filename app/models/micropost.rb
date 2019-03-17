class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :reverses_of_like, class_name: 'Like', foreign_key: 'like_id'
  has_many :likers, through: :reverses_of_like, source: :user
  
end
