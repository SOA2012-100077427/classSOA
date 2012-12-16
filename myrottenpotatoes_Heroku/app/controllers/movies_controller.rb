# This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
    def new
      # default: render 'new' template
    end
    # in movies_controller.rb
    # replaces the create method in controller:7.1 step 4
  def create
    @movie = Movie.new(params[:movie])
    if @movie.save
      flash[:notice] = "#{@movie.title} was successfully created."
      redirect_to movies_path
    else
      render 'new' # note, 'new' template can access @movie's field values!
    end
  end
    # in app/controllers/movies_controller.rb screencast 4.4.1
     
    def show
      id = params[:id] # retrieve movie ID from URI route
      @movie = Movie.find(id) # look up movie by unique ID
      # will render app/views/movies/show.html.haml by default
    end

    # in movies_controller.rb
     
    def edit
      @movie = Movie.find params[:id]
    end
     
    # replaces the update method in controller: 7.1 step 4
   def update
     @movie = Movie.find params[:id]
     if @movie.update_attributes(params[:movie])
        flash[:notice] = "#{@movie.title} was successfully updated."
        redirect_to movie_path(@movie)
     else
       render 'edit' # note, 'edit' template can access @movie's field values!
     end
   end
    # the delete function- step 3 of 4.8
    def destroy
      @movie = Movie.find(params[:id])
      @movie.destroy
      flash[:notice] = "Movie '#{@movie.title}' deleted."
      redirect_to movies_path
    end
    # add to movies_controller.rb, anywhere inside step 6 of 5.6
    #  'class MoviesController < ApplicationController':

	def search_tmdb
	  # hardwire to simulate failure
	  #flash[:warning] = "'#{params[:search_terms]}' was not found in TMDb."
	 # @movies = Movie.find_in_tmdb(params[:search_terms]) #chp 6.3  
          redirect_to movies_path
	end
end
