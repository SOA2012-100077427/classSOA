class MoviesController < ApplicationController
  def search_tmdb
   @movies = Movie.find_in_tmdb(params[:search_terms])
  end
  def index
   @movies = Movie.all
  end
  def new
   # default: render 'new' template
  end
  def show 
    id = params[:id]
    @movie = Movie.find(id)
  end
  def create
    @movie = Movie.new(params[:movie])
    if @movie.save
      flash[:notice] = "#{@movie.title} was successfully created."
      redirect_to movies_path
    else
      render 'new' # note, 'new' template can access @movie's field values!
    end
  end
  def edit
    @movie = Movie.find params[:id]
  end
  def update
    @movie = Movie.find params[:id]
    if @movie.update_attributes(params[:movie])
      flash[:notice] = "#{@movie.title} was successfully updated."
      redirect_to movie_path(@movie)
    else
      render 'edit' # note, 'edit' template can access @movie's field values!
    end
  end
  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}'deleted."
    redirect_to movies_path
  end
  def search_tmdb
    flash[:warning] = "'#{params[:search_terms]}' was not found in TMDb."
    redirect_to movies_path
  end
end
