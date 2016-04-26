  class DrinksController < ApplicationController

  def choose
    # Need to recieve params[:choice_id](drink selected id).

    if params[:drink_ids] == nil
      params[:drink_ids] = params[:id]
    end
    # params[:drink_ids]
    p 'HERE IT IS RIGHT ABOVE AND BELOW'
    p params[:id]
    if params[:choice_id]
      # If drink is chosen, return json of the drink
      @drink = Drink.find(params[:choice_id])
      params[:choice_id].clear
      redirect_to bar_drink_path(id: @drink.id, bar_id: @drink.bar_id)
    elsif params[:drink_ids].length > 0
      # if drink is not chosen, return next drink
      @drink_id = params[:drink_ids].shuffle!.pop
      @drink = Drink.find(@drink_id)
      render json: {current_drink: @drink, drink_ids: params[:drink_ids]}
    else
      # Need something for edge case if they don't like any drinks
      redirect_to root_path
    end
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
