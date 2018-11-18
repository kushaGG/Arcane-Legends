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
    @character = current_user.characters.build(character_params)
    if @character.save
      redirect_to characters_path
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
private
  def character_params
    params.require(:character).permit(:user_id,:nickname,:character_class)
  end
   def find_character
      @character = Character.find_by(id:params[:id])
    end
end