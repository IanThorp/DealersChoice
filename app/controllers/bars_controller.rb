class BarsController < ApplicationController

  def search
    parameters = {
      term: 'cocktail bars',
      offset: 15,
      sort: 2,
    }

    yelp_params = Yelp.client.search('San Francisco', parameters)
  end

  def index
    session[:drink_ids] = nil
    search
    render json: search
  end

  # must fetch new Yelp params on new view/page to get access to search bar feature
  #scrapped and is now stretch goal
  def searchBar

  end

  def show

  end


end
