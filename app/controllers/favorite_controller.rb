class FavoriteController < ApplicationController
  def index
    @favorites = Favorite.all
    @films = Filmm.all
  end

  def add_favorite
    id_filmm = params[:id]
    Favorite.create(user_id: current_user.id, filmm_id: id_filmm)
    redirect_to favorites_path
  end
  def lisfavorite
    @favorites = Favorite.all
    @films = Filmm.all.page(params[:page]).per(3)

  end
  def showlist
    @films = Filmm.find(params[:id])
  end
end
