class CompanyjobsController < ApplicationController
	before_action :authenticate_user!, :except => [:index]

	def index
		 if current_user
	      @email = current_user.email 
	    end
		@jobs = Companyjob.all
	end

	def show
		@currentUser = current_user.id
		@job = Companyjob.find(params[:id])
	end

  def new
    if @role == "Company" 	
     @job = Companyjob.new
    else
   	 redirect_back(fallback_location: root_path)
   	end
  end

  def create
    	@user = current_user
	    @job = @user.companyjobs.create(job_params)
	    if @job.save
	      redirect_to @job
	    else
	      render :new, status: :unprocessable_entity
	    end
  end

	def edit
		if @role == "Company" 	
	   @job = Companyjob.find(params[:id])
	  else
   	 redirect_back(fallback_location: root_path)
   	end
	end

	def update
	    @job = Companyjob.find(params[:id])
	    if @job.update(job_params)
	      redirect_to @job
	    else
	      render :edit, status: :unprocessable_entity
	    end
	end

	def destroy
	    @job = Companyjob.find(params[:id])
	    @job.destroy
	    redirect_to root_path, status: :see_other
	end

  private
    def job_params 
      params.require(:companyjob).permit(:name, :experience, :salary, :qualification, :skills, :avatar)
    end
    def user_role
    	@role = current_user.role if current_user
    end
end

