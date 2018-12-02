class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :check_character
  before_action :redir_char


 private
  def check_character
  	if (user_signed_in?)
    	if (!current_user.character)
  			redirect_to new_character_path
  		end
  	end
  end

  def redir_char
    if (user_signed_in?)
      if (!current_user.character.nil?)
        redirect_to character_path(current_user.character)
      end
    end 
  end
end
