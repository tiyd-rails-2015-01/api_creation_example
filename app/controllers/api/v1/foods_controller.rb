class Api::V1::FoodsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render json: Food.all
  end

  def show
    @food = Food.find(params[:id])
    render json: @food
  end

  def create
    @food = Food.new(food_params)

    if @food.save
      render json: @food
    else
      render json: "Invalid parameters"
    end
  end


  # Never trust parameters from the scary internet, only allow the white list through.
  private def food_params
    params.require(:food).permit(:name, :calories, :course)
  end
end
