class TagsController < ApplicationController

  def index
    # tag choosing logic
    
    if !params[:id]
      @tag1 = Tag.find(1)
      p "WENT THROUGH THE LOOOOOOOP"
      @tag2 = Tag.find(36)
      return render json: [@tag1, @tag2]
    else
        @selected_tag = Tag.find(params[:id])
    end
    if session[:tags] == nil
      session[:tags] = []

    end
    session[:tags] << @selected_tag.id
    @next_tags = @selected_tag.children

    # Drink choosing logic
    @drink_ids = []
    if @next_tags.length === 0
      @drink_choices = []
      @bars_drinks = Drink.all
      @bars_drinks.each do |drink|
        @drink_tags_array = drink.tags.pluck(:id)
        @in_common = @drink_tags_array & session[:tags]

        if @in_common.length >= session[:tags].length - 1
          @drink_ids << drink.id
        end
      end
      session[:tags].clear

      redirect_to :action => "choose", :controller => "drinks", :id => @drink_ids
    else
      render json: @next_tags
    end
  end

  def new
  end

  def show
    @tag = Tag.find(params[:id])
    render json: @tag
  end


end
