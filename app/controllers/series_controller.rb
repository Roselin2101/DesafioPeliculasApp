class SeriesController < ApplicationController

    before_action :set_serie, only: [:edit, :update, :destroy]
  
    def index
      @series = Serie.all
   
    end

    def new
        @series = Serie.new
      
        respond_to do |format|
          format.html { render :new }
          format.json { render json: @serie }
        end
      end

    def create
      @serie = Serie.new(serie_params)
  
      if @serie.save
        redirect_to movies_path, notice: 'Serie creada exitosamente.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @serie.update(serie_params)
        redirect_to series_path, notice: 'Serie actualizada exitosamente.'
      else
        render :edit
      end
    end
  
    def destroy
      @serie.destroy
      redirect_to series_path, notice: 'Serie eliminada exitosamente.'
    end
  
    private
  
    def set_serie
      @serie = Serie.find(params[:id])
    end
  
    def serie_params
      params.require(:serie).permit(:title, :duration, :description)
    end
end


