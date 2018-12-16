class PagesController < ApplicationController
	before_action :authenticate_user!
  def index
  	@character = Character.all
  	if (user_signed_in?)
      if (!current_user.character.nil?)
        redirect_to character_path(current_user.character)
      end
    end 
  end
end
