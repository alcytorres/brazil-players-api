class PlayersController < ApplicationController

  def index
    @photos = Player.all
    render json: {message: "Hello"}
  end

  def show
    @player = Player.find_by(id: params[:id])
    render :show
  end

end
