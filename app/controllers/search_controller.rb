class SearchController < ApplicationController
  def index
    number = params[:number]
    @dogs = SearchFacade.dog_images(number)
  end
end
