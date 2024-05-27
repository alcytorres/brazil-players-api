class PlayersController < ApplicationController

  def index
    @photos = Player.all
    render json: {message: "Hello"}
  end

end
