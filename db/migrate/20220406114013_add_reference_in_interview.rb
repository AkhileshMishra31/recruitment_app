class AddReferenceInInterview < ActiveRecord::Migration[7.0]
  def change
    add_reference :interviewschedules, :applicant, foreign_key: true
  end
end
