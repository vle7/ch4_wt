class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  
  def show
    begin
    id = params[:id]
    @movie = Movie.find(id)
    end
    
    rescue ActiveRecord::RecordNotFound
    raise
    
  end
end