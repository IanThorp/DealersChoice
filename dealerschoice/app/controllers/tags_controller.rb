class TagsController < ApplicationController

  def index

    @selected_tag = Tag.find(params[:id])
    if session[:tags] == nil
      session[:tags] = []
    end
    session[:tags] << @selected_tag.id
    @next_tags = @selected_tag.children

    if @next_tags.length === 0
      @all_drinks = Drinks.all
      @all_drinks.each do |drink|
        @in_common = drink.tags.pluck(:id) & session[:tags]
        @drink_choices = []
        if @in_common.length = session[:tags].length
          @drink_choices << drink
        end
      end
      render json: @drink_choices
    end

    render json: @next_tags

  end

end
