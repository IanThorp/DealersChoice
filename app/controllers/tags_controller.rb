class TagsController < ApplicationController

  def index
    # tag choosing logic
    if !params[:id]
      @tag1 = Tag.find(1)
      @tag2 = Tag.find(36)
      return render json: [@tag1, @tag2]
    end

    @selected_tag = Tag.find(params[:id])
    if params[:id] == nil
      params[:id] = []
    end
    if params[:tags]
      @previous_tags = params[:tags]
      @previous_tags.push(@selected_tag.id)
    else
      @previous_tags = []
      @previous_tags.push(@selected_tag.id)
    end
    if @previous_tags.length > 0
    @next_tags = { children: @selected_tag.children, tags: @previous_tags }
    else
      @next_tags = { children: @selected_tag.children}
    end

    # Drink choosing logic
    @drink_ids = []
    if @next_tags[:children].length === 0
      @drink_choices = []
      @bars_drinks = Drink.all
      @bars_drinks.each do |drink|
        @drink_tags_array = drink.tags.pluck(:id)
        @in_common = @drink_tags_array & @previous_tags.map!{|num| num.to_i}

        if @in_common.length >= @previous_tags.length - 1
          @drink_ids << drink.id
        end
      end
      # params[:tags] = []

      redirect_to :action => "choose", :controller => "drinks", :id => @drink_ids
    else
      render json: @next_tags
    end
  end


end
