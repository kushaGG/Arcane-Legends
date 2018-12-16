class EnemysController < ApplicationController
  before_action :authenticate_user!
  before_action :find_enemy, only: %i[show,edit,update,destroy]
  def index
  	@enemys= Enemy.all
  end

  def new
  	@enemy=Enemy.new
  end

  def create
  	@enemy = Enemy.new(params_enemy)
  	if @enemy.save
  		redirect_to enemys_path
  	end
  end

  def edit; end

  def update; end

  def destroy; end

  private 

  def params_enemy
  	params.require(:enemy).permit(:name, :lvl, :hp, :damage, :num, :location_id, :boss)
  end

  def find_enemy
  	@enemy= Enemy.find(params[:id])
  end
end
