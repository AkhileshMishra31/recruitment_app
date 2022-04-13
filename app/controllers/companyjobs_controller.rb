class CompanyjobsController < ApplicationController
	before_action :authenticate_user!, :except => [:index]

	def index
		 if current_user
	      @email = current_user.email 
	    end
		@jobs = Companyjob.all.order('created_at desc')
	end

	def show
		@currentUser = current_user.id
		@job = Companyjob.find(params[:id])
		@jobapplied = true;
		@job.applicants.each do |applicant|
			if applicant.user_id == current_user.id
				@jobapplied = false;
			end
		end
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
	def search
		@query = params[:query]
    @jobs=Companyjob.where(['location LIKE(?) OR jobtype LIKE(?) OR companyname LIKE(?) OR name LIKE(?)', "%#{@query }%", "%#{@query }%", "%#{@query}%", "%#{@query}%"])
    render :index
	end

  private
    def job_params 
	      params.require(:companyjob).permit(:name, :experience, :salary, :qualification, :skills, :avatar, :description,:companyname,
	      :jobtype,:jobcategory,:location)
    end
    def user_role
    	@role = current_user.role if current_user
    end
end

