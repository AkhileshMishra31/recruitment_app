class AddFieldsToInterviewSchedule < ActiveRecord::Migration[7.0]
  def change
     add_reference :interviewschedules, :applicants, index: true
     add_column :interviewschedules, :interviewtiming, :datetime
     add_column :interviewschedules, :location, :string
  end
end
