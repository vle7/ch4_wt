class Movie < ActiveRecord::Base
  params.require(:movie).permit(:title, :rating, :description, :release_date)
end