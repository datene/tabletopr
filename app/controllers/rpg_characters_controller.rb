class RpgCharactersController < ApplicationController
  before_action :set_game
  before_action :set_character, only: [:edit, :update]
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
  end

  def update
    if @rpg_character.update(rpg_character_params)
      redirect_to game_rpg_character_path(@game, @rpg_character)
      flash[:notice] = "Character succesfully updated"
    else
      render 'edit'
      flash[:notice] = "Character update unsuccesful"
    end
  end

  def destroy
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def set_character
    @rpg_character = RpgCharacter.find(params[:id])
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