class TheatorsController < ApplicationController
  def create
    theator = Theator.create(movie_params)
    render json: theator
  end

  def show
    theator =Theator.find(7)
    render json: url_for(theator.image)
  end

  def download
    theator = Theator.find(3).image.download
    render json: theator
  end

  private

  def movie_params
    params.permit(:image)
  end
end
