class RpgCharactersController < ApplicationController
  before_action :set_game
  def show
    @character = RpgCharacter.find(params[:id])
  end

  def index
  end

  def new
    @rpg_character = RpgCharacter.new
  end

  def create
    rpg_character = RpgCharacter.new(rpg_character_params)
    rpg_character.user = current_user
    rpg_character.game = @game
    if rpg_character.save
      redirect_to game_rpg_character_path(@game, rpg_character)
      flash[:notice] = "Character succesfully created"
    else
      render 'new'
      flash[:notice] = "Character creation unsuccesful"
    end
  end

  def edit
    @rpg_character = RpgCharacter.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def rpg_character_params
    params.require(:rpg_character).permit(
      :class_style, 
      :level, :race, 
      :background, 
      :moral_alignment, 
      :name, 
      :experience_points,
      :armor_class,
      :initiative_modifier,
      :speed,
      :gender,
      :hitpoints,
      :picture,
      :picture_cache
      )
  end
  
end