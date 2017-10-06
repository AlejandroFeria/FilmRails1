class FilmsController < ApplicationController
  before_action :find_film, only: [:edit, :update, :show, :destroy]
  def index
    @films = Filmm.all.page(params[:page]).per(3)
  end

  def new
    @film = Filmm.new
  end

  def create
    @films = Filmm.new films_params
    if @films.save
      p "SI SE GUARDO"
      redirect_to films_path
    else
      p "NO SE GUARDO"
      render :new
    end
  end

  def edit
  end

  def update
    if @films.update films_params
      p "SI SE ACTUALIZO"
      redirect_to films_path
    else
      p "NO SE ACTALIZO"
      render :edit
    end
  end

  def show
  end

  def destroy
    @films.destroy
    redirect_to films_path
  end

  private
  def films_params
    params.require(:filmm).permit(:tittle, :year, :description, :raiting,:cover)
  end

  def find_film
    @films = Filmm.find(params[:id])
  end
end
