class ChaptersController < ApplicationController
  before_action :set_game, only: [:new, :create]
  def show
  end

  def index
  end

  def new
    @chapter = Chapter.new
  end

  def create
    chapter = Chapter.new(chapter_params)
    chapter.game = @game
    if chapter.save
      redirect_to game_path(@game)
      flash[:notice] = "Succesfully started new chapter"
    else
      render 'new'
      flash[:danger] = "Something went wrong"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def chapter_params
    params.require(:chapter).permit(:title, :description)
  end

  def set_game
    @game = Game.find(params[:game_id])
  end
  
end