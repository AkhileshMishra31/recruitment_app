class InterviewMailer < ApplicationMailer
	default from: 'ks2956831@gmail.com'

	def interview_email
	    @applicant = params[:applicant]
	    @job =@applicant.companyjob 
	    @date=@applicant.interview.dateofinterview
		@time=@applicant.interview.interviewtiming
	    mail(to: @applicant.email, subject: 'Welcome to My Awesome Site')
	 end

end
