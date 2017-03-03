class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  
  def show
    id = params[:id]
    @movie = Movie.find(id)
    
  end
  
  def create
    params.require(:movie)
    permitted = params[:movie].permit(:title,:rating,:release_date)
    @movie = Movie.create!(permitted)
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end
  
  
  def new
    @movie = Movie.new
  end
end