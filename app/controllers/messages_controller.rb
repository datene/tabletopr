class MessagesController < ApplicationController
  def show
  end

  def new
  end

  def create
    message = Message.new(messsage_params)
    message.game = @game
    message.user = current_user
    if message.save
      ActionCable.server.broadcast 'messages',
        message: message.content,
        user: message.user.first_name
      head :ok
    else
      flash[:danger] = "Something went wrong"
    end
  end

  def edit
  end

  def update
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def messsage_params
    params.require(:message).permit(:content)
  end
end