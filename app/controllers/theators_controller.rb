class TheatorsController < ApplicationController
  def create
    theator = Theator.create(movie_params)
    render json: theator
  end

  def show
    theator =Theator.find(1)
    render json: url_for(theator.image)
  end

  private

  def movie_params
    params.permit(:image)
  end
end
