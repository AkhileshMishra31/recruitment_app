class ApplicantMailer < ApplicationMailer
	default from: 'avihalve@gmail.com'
    def applicant_email
	    @job = params[:jobname]
	    @userEmail=params[:email]
	    @applicant=params[:applicant]
	    @url  = 'http://example.com/login'
	    mail(to: @userEmail, subject: 'Job Applied Confirmation')
    end
end
