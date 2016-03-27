class WelcomeController < ApplicationController
  def index
  	unless current_user
  		redirect_to root_path
  		
  	end
  end
end
