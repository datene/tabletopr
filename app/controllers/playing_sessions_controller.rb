class PlayingSessionsController < ApplicationController
  before_action :set_game
  def create
    playing_session = PlayingSession.new
    playing_session.user = current_user
    playing_session.game = @game
    if playing_session.save!
      redirect_to game_path(@game)
      flash[:notice] = "Succesfully joined game"
    else
      render 'new'
      flash[:danger] = "Unable to join game"
    end
  end

  def destroy
    playing_session = PlayingSession.find(params[:id])
    playing_session.destroy
    redirect_to root_path
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end
end
