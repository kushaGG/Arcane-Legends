class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :check_character


 private
  def check_character
  	if (user_signed_in?)
    	if (!current_user.character)
  			redirect_to new_character_path
  		end
  	end
  end

  
end
