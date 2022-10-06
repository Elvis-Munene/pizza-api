class RestaurantPizza < ApplicationRecord
  validates :price, presence: true
  validates :pizza_id, presence: true,length: {in: 1..30}
  validates :restaurant_id, presence: true




  belongs_to :pizza
  belongs_to :restaurant
end
