class Article < ApplicationRecord
  belongs_to :user
  
  validates :title, presence: true, length: { minimum: 5, maximum: 15 }
  validates :description, presence: true, length: { minimum: 20, maximum: 150 }
end
