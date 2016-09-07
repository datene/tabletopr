class GamesController < ApplicationController
  before_action :set_game

  def show
    @playing_session = @game.playing_sessions.where(user: current_user).first || PlayingSession.new
    @current_chapter = @game.chapters.last
    @messages = @game.messages.order(created_at: :desc)
    @character = RpgCharacter.where(user: current_user, game: @game).first
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end
end