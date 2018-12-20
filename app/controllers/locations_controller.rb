class LocationsController < ApplicationController
	before_action :authenticate_user!
	before_action :find_location, only: [:index , :show, :edit, :update, :destroy]
  
  def index
  	redirect_to location_path(current_user.character.location_id) if current_user.character.location_id
  	@locations=Location.all
  end

  def new
  	@location = Location.new
  end

  def create
  	@location = Location.new(location_params)
  	if @location.save
  		redirect_to locations_path
  	end
  end

  def show
  	find_character
  	if(@character.location_id)
  		redirect_to location_path(character.location_id) unless @character.location_id = @location.id 
  	else
  		@character.update(location_id: @location.id)
  	end
  	if(@character.fight_enemy_id)


      if (@character.fight_enemy.enemy.hp <= 0)
        @character.fight_enemy.dead
      else
        @character.fight_enemy.fight
      end
  		

  		if @character.fight_enemy.enemy.boss
        if @character.fight_enemy.enemy.hp <= 0
          @character.fight_enemy.dead
          flash[:notice] = "You WIN"
          redirect_to locations_path
        end
  			
  		end

  		#Якщо битва продовжується
  	else
  		#якщо битви нема 
  		if(@character.num)
  			@character.update(num: @character.num+1) 
  		else
  			@character.update(num: 1)
  		end
  		@enemy = Enemy.find_by(location_id: @location.id, num: @character.num)
  		@fight_enemy =@character.build_fight_enemy(enemy_id: @enemy.id) 
  		@fight_enemy.save
  		@character.update(fight_enemy_id: @fight_enemy.id)

  	end
  end

  private
  	def location_params
      	params.require(:location).permit(:bosse_id,:enemy_id,:name)
    end

    def find_location
    	@location = Location.find_by(id:params[:id])
  	end

  	def find_character
  		@character = current_user.character
  	end
end
