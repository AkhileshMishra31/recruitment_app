class AddIdsToApplicants < ActiveRecord::Migration[7.0]
  def change
    add_reference :applicants, :user, index: true
    add_reference :applicants, :companyjob, index: true
  end
end
