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
    @character.lvl = '1'
    if @character.character_class == "Warrior"
      @character.damage = '15'
      @character.hp = '300'
    end
    if @character.character_class == "Rogue"
      @character.damage = '19'
      @character.hp = '250'
    end
    if @character.character_class == "Mage"
      @character.damage = '23'
      @character.hp = '200'
    end
    if @character.save
      redirect_to character_path(current_user.character)
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
  	@character.destroy
    redirect_to root_path
  end

  def check_character
    
  end
 
private
  def character_params
    params.require(:character).permit(:user_id,:nickname,:character_class, :lvl, :avatar)
  end
  def find_character
    @character = Character.find_by(id:params[:id])
  end
end