class TagsController < ApplicationController

  def index
    # tag choosing logic
    if params[:id] == "0"
      @tag1 = Tag.find(1)
      @tag2 = Tag.find(36)
      return render json: [@tag1, @tag2]
    else
        @selected_tag = Tag.find(params[:id])
    end

    @selected_tag = Tag.find(params[:id])
    @next_tags = @selected_tag.children

    # Drink choosing logic

    if @next_tags.length === 0
      @drink_ids = []
      @previous_tags = [@selected_tag.id]
      @current_tag = @selected_tag
      while @current_tag.parents.length > 0
        @current_tag = @current_tag.parents.first
        @previous_tags << @current_tag.id
      end
      @bars_drinks = Drink.all
      @bars_drinks.each do |drink|
        @drink_tags_array = drink.tags.pluck(:id)
        @in_common = @drink_tags_array & @previous_tags

        if @in_common.length >= @previous_tags.length - 1
          @drink_ids << drink.id
        end
      end

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
