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
		 if @applicant.avatar.attached?
		 	@present= true;
		 end
		 if @applicant.interview
		 	@date=@applicant.interview.dateofinterview
		 	@time=@applicant.interview.interviewtiming
		 	@schedule= true
		 else
		 	@schedule= false
		 end
		else
		 redirect_back(fallback_location: root_path) 
		end
	end
end
