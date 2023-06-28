class DocumentaryFilmsController < ApplicationController

    before_action :set_documentary_film, only: [:edit, :update, :destroy]
  
    def index
      @documentary_films = Documentary_film.all
   
    end

    def new
        @documentary_film = Documentary_film.new
      
        respond_to do |format|
          format.html { render :new }
          format.json { render json: @documentary_film }
        end
      end

    def create
      @documentary_film = Documentary_film.new(documentary_film_params)
  
      if @documentary_film.save
        redirect_to documentary_films_path, notice: 'Película creada exitosamente.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @documentary_film.update(documentary_film_params)
        redirect_to documentary_films_path, notice: 'Película actualizada exitosamente.'
      else
        render :edit
      end
    end
  
    def destroy
      @documentary_film.destroy
      redirect_to documentary_films_path, notice: 'Película eliminada exitosamente.'
    end
  
    private
  
    def set_documentary_film
      @documentary_film = Documentary_film.find(params[:id])
    end
  
    def documentary_film_params
      params.require(:documentary_film).permit(:title, :duration, :description)
    end

end
