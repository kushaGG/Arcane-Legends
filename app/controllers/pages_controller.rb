class PagesController < ApplicationController
	  before_action :authenticate_user!
  def index
  	@character = Character.all
  end
end
