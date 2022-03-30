class CreatedjobsController < ApplicationController
	before_action :authenticate_user!
	def index 
		if @role=="Company"
		 @user = current_user
		 @createdjobs= @user.companyjobs
		else
		 redirect_back(fallback_location: root_path) 
		end
	end
	def show
		if @role=="Company"
		 @applicant = Applicant.find(params[:id])
		else
		 redirect_back(fallback_location: root_path) 
		end
	end
end
