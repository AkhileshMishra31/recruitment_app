class AddRefrenceToInterviewschedule < ActiveRecord::Migration[7.0]
  def change
    add_reference :interviewschedules, :applicant, index: true
  end
end
