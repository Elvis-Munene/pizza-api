class RestaurantsController < ApplicationController

    class RestaurantsController < ApplicationController
        wrap_parameters format: []
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_response
    ​
        def index
            restaurant = Restaurant.all
            render json: restaurant
        end
    ​
        def show
            restaurant = find_restaurant
            render json: restaurant, status: :ok
        end
    ​
        def create
            restaurant = Restaurant.create!(restaurant_params)
            render json: restaurant, status: :created
        end
    ​
        def update
            restaurant = find_restaurant
            restaurant.update!(restaurant_params)
            render json: restaurant, status: :accepted
        end
    ​
        def destroy
            restaurant = find_restaurant
            restaurant.destroy
            head :no_content
        end
    ​
        private
    ​
        def find_restaurant
            restaurant = Restaurant.find(params[:id])
    ​
        end
    ​
        def restaurant_params
            parameters.permit(:name, :address)
        end
    ​
        def record_not_found_response
            render json: {error: "Restaurant not found"}, status: :not_found
        end
    ​
        def unproccesable_entity_response(invalid)
            render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
        end
    ​
    ​
    end
end
