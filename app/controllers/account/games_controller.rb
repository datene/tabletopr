class Account::GamesController < ApplicationController
  before_action :set_game, only: [:edit, :update, :destroy]
  def index
  end

  def new
    @game = Game.new
  end

  def create
    game = Game.new(game_params)
    game.creator = current_user
    game.gm = current_user
    if game.save!
      redirect_to game_path(game)
    else
      render 'new'
    end
  end

  def edit
    @players = set_players
  end

  def update
    if @game.update(game_params)
      redirect_to game_path(@game)
      flash[:notice] = "Succesfully updated game"
    else
      render 'new'
    end
  end

  def destroy
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def set_players
    result = []
    @game.creator == @game.gm ? result << @game.creator : result << @game.gm << @game.creator
    @game.users.each do |user|
      result << user unless result.include?(user)
    end
    result
  end

  def game_params
    result = params.require(:game).permit(:name, :description, :photo, :photo_cache)
    result[:gm_id] = params[:gm_id]
    result
  end
end
