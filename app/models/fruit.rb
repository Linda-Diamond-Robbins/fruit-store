class Fruit < ApplicationRecord
  belongs_to :supplier # hey Rails, please write me a method called supplier
  belongs_to :user
  has_many :images # hey Rails, please write me a method called images
  has_many :orders
  validates :price, presence: true
  has_many :category_fruits
  


  # def tax
end
