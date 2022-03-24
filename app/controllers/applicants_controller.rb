 class ApplicantsController < ApplicationController
    def index
        @applicants= Applicant.all
    end
	def new	
	    @job = Companyjob.find(params[:companyjob_id])
        @applicants =  @job.applicants.new
	end
	def create
		  @job = Companyjob.find(params[:companyjob_id])
          @applicant = @job.applicants.new(applicant_params.merge(user_id: current_user.id))
            if @applicant.save
                    flash[:notice] = "job has been applied"
                    redirect_to companyjob_applicants_path
            else
                    flash[:notice] = "some error using form"
                    render 'new'
            end
    end
    private 
	    def applicant_params
	        params.require(:applicant).permit(:name,:qualification,:salary,:skills,:experience,:attachment)
	    end
end
