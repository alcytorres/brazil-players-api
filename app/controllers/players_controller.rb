class PlayersController < ApplicationController

  def index
    @photos = Player.all
    render json: {message: "Hello"}
  end

  def show
    @player = Player.find_by(id: params[:id])
    render :show
  end

  def create
    @player = Player.create(
      name: params[:name],
      position: params[:position],
      nationality: params[:nationality],
      dob: params[:dob],
    )
    render :show
  end

  def update
    @player = Player.find_by(id: params[:id])
    @player.update(
      name: params[:name] || @player.name,
      position: params[:position] || @player.position,
      nationality: params[:nationality] || @player.nationality,
      dob: params[:dob] || @player.dob,
    )
    render :show
  end

end
