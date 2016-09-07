class GamesController < ApplicationController
  before_action :set_game

  def show
    @playing_session = @game.playing_sessions.where(user: current_user).first || PlayingSession.new
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end
end