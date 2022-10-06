class PizzasController < ApplicationController

    class PizzasController < ApplicationController
        wrap_parameters format:[]
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response
    ​
        def index
            pizza = Pizza.all
            render json: pizza
        end
    ​
        def show
            pizza = find_pizza
            render json: pizza
        end
    ​
        def create
            pizza = Pizza.create!(pizza_params)
            render json: pizza, status: :created
        end
    ​
        def update
            pizza = find_pizza
            pizza.update!(pizza_params)
            render json: pizza, status: :accepted
        
        end
    ​
        def destroy
            pizza = find_pizza
            pizza.destroy
            head :no_content
        end
    ​
    ​
    ​
        private
        def find_pizza
            pizza = Pizza.find(params[:id])
        end
    ​
        def pizza_params
            params.permit(:name, :ingredients)
        end
    ​
        def record_not_found_response
           render json: {error:"Record not found"},status: :not_found
        end
    ​
        def unproccesable_entity_response(invalid)
            render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    ​
        end
    end
end
