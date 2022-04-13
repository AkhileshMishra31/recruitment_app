 class ApplicantsController < ApplicationController
    
    def index
        @applicants= Applicant.all
    end
	def new
	    @job = Companyjob.find(params[:companyjob_id])
        @applicant =  @job.applicants.new
	end
	def create
		  @job = Companyjob.find(params[:companyjob_id])
          @userEmail=@job.user.email
          @applicant = @job.applicants.new(applicant_params.merge(user_id: current_user.id))
            if @applicant.save
                ApplicantMailer.with(jobname: @job, applicant:@applicant , email:@userEmail).applicant_email.deliver_now
                    flash[:notice] = "job has been applied"
                    redirect_to companyjobs_path
            else
                    flash[:notice] = "some error using form"
                    render 'new'
            end
    end
    private 
	    def applicant_params
	        params.require(:applicant).permit(:name,:qualification,:salary,:skills,:experience,:email,:avatar,:phonenumber)
	    end
end
