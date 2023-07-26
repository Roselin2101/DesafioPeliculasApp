class MoviesController < ApplicationController
    before_action :set_movie, only: [:edit, :update, :destroy]
  
    def index
      @movies = Movie.all
   
    end

    def new
        @movie = Movie.new
      
        respond_to do |format|
          format.html { render :new }
          format.json { render json: @movie }
        end
      end

    def create
      @movie = Movie.new(movie_params)
  
      if @movie.save
        redirect_to movies_path, notice: 'Película creada exitosamente.'
      else
        render :new
      end
    end
  
    def edit
      
    end
  
    def update
      if @movie.update(movie_params)
        redirect_to movies_path, notice: 'Película actualizada exitosamente.'
      else
        render :edit
      end
    end
  
    def destroy
      @movie.destroy
      redirect_to movies_path, notice: 'Película eliminada exitosamente.'
    end
  
    private
  
    def set_movie
      @movie = Movie.find(params[:id])
    end
  
    def movie_params
      params.require(:movie).permit(:title, :duration, :description)
    end
end
  