class CharactersController < ApplicationController
  before_action :authenticate_user!
     before_action :find_character, only: [:show, :edit, :update, :destroy]
  def index
  	@characters = Character.all
  end

  def new
  	@character = Character.new
  end
  def create
    @character = current_user.build_character(character_params)
    if @character.character_class == "Warrior"
      @character.STR = '20'
      @character.DEX = '15'
      @character.INT = '13'
    end
    if @character.character_class == "Rogue"
      @character.STR = '15'
      @character.DEX = '20'
      @character.INT = '14'
    end
     if @character.character_class == "Mage"
      @character.STR = '13'
      @character.DEX = '15'
      @character.INT = '20'
    end
    if @character.save
      redirect_to characters_path
    else
      render 'new'
    end
  end

  def show

  end

  def edit
  end
  def update
  	
  end

  def destroy
  	
  end

  def check_character
    
  end
private
  def character_params
    params.require(:character).permit(:user_id,:nickname,:character_class, :lvl)
  end
   def find_character
      @character = Character.find_by(id:params[:id])
    end
end