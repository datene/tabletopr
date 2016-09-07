class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @games = Game.all
    @playing_session = PlayingSession.new
  end
end
