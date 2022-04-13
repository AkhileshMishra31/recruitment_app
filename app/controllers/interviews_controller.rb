class InterviewsController < ApplicationController
	def new
		@applicant = Applicant.find(params[:createdjob_id])
		@interview= Interview.new
	end
	def create
        @applicant = Applicant.find(params[:createdjob_id])
		# @interview= Interview.create(interview_params.merge(applicant_id:  @applicant.id))
		@interview = @applicant.create_interview(interview_params)
		if @interview.save
			InterviewMailer.with(applicant: @applicant , interview: @interview ).interview_email.deliver_now
			redirect_to root_path
		end
	end

	private
	  def interview_params
        params.require(:interview).permit(:location,:interviewtiming,:dateofinterview,:interviewroom,:Docstobring,:interviewer)
	  end
end
