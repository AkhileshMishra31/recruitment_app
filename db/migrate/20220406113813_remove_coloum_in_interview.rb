class RemoveColoumInInterview < ActiveRecord::Migration[7.0]
  def change
    remove_column :interviewschedules, :applicant_id
  end
end
