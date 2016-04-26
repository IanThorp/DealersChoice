  class DrinksController < ApplicationController

  def choose

    if params[:choice_id]
      # If drink is chosen, return json of the drink
      if params[:choice_id] == "0"
        # If no drink is chosen, send back choice_id of zero
        redirect_to root_path
      end
      @drink = Drink.find(params[:choice_id])
      params[:choice_id].clear
      redirect_to bar_drink_path(id: @drink.id, bar_id: @drink.bar_id)
    end
    @drink_ids = params[:id]
    @drink_ids.shuffle!
    @drink_objs = []
    @drink_ids.each do |drink_id|
      @drink_objs << Drink.find(drink_id)
    end
    render json: {current_drink: @drink_objs}
  end

  def index
    @bar = Bar.find(params[:bar_id])
    @bar_menu = {bar: @bar, drinks: @bar.drinks}
    render json: @bar_menu
  end

  def show
    @drink = Drink.find(params[:id])
    @drink_data = {drink: @drink, reviews: @drink.reviews}
    render json: @drink_data
  end

end
