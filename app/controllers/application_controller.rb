class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :check_character


  #private
  def check_character
  	if (user_signed_in?)
    	if (!current_user.character)
  			redirect_to new_character_path
  		#else
  			#redirect_to character_path(current_user.character)
  		end
  	end
  #	if (user_signed_in?)
  #  	if (current_user.character)
  #			redirect_to character_path(current_user.character)
  #		else
  #			redirect_to new_character_path
  #		end
  #	else 
  #		redirect_to new_user_session_path
  #	end
  end
end
