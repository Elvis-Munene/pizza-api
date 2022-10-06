class RestaurantPizzaSerializer < ActiveModel::Serializer
  class RestaurantPizzaSerializer < ActiveModel::Serializer
    attributes :id, :price, :pizza_id, :restaurant_id
  end

end
