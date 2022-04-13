# Preview all emails at http://localhost:3000/rails/mailers/job_applied_mailer
class JobAppliedMailerPreview < ActionMailer::Preview
    def new_applieduser_email
      applicant = Applicant.new(name:"akhilesh",salary:"40000",qualification:"btech", skills:"java", experience:"45")
      JobAppliedMailer.with(applicant: applicant).new_applieduser_email
  end
end
