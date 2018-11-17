class ItemsController < ApplicationController
  before_action :authenticate_user!
     before_action :find_item, only: [:show, :edit, :update, :destroy]
  def index
  	@items = Item.all
  end

  def new
  	@item = Item.new
  end
  def create
  	@item = current_user.items.build(item_params)
    if @item.save
      redirect_to root_path
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
  def item_params
    params.require(:item).permit(:character_id, :name, :character_class, :rarity, :lvl)
  end
   def find_item
      @item = Item.find_by(id:params[:id])
    end
end