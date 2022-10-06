class RestaurantPizzasController < ApplicationController

    class RestaurantPizzasController < ApplicationController
        ​
            wrap_parameters format:[]
        rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response
        rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_response
        ​
        ​
        ​
            def index
                restaurant_pizza = RestaurantPizza.all
                render json: restaurant_pizza
            end
        ​
            def show
                restaurant_pizza = find_restaurant_pizza
                render json: restaurant_pizza , status: :ok
            end
            
            def create
                restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
                render json: restaurant_pizza, status: :created
            end
        ​
            def update
        ​
                restaurant_pizza =find_restaurant_pizza
                restaurant_pizza.update!(restaurant_pizza_params)
                render json: restaurant_pizza ,status: :accepted
            end
        ​
            def destroy
                restaurant_pizza =find_restaurant_pizza
                restaurant_pizza.destroy
                head :no_content
            end
        ​
            private
            def find_restaurant_pizza
                restaurant_pizza = RestaurantPizza.find(params[:id])
            end
        ​
            def restaurant_pizza_params
                params.permit(:price,:restaurant_id,:pizza_id)
            end
        ​
            def record_not_found_response
                render json: {error: "Pizza restaurant not found"}
            end
        ​
            def unproccesable_entity_response(invalid)
                render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
            end
        end
end
