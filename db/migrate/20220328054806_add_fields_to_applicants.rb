class AddFieldsToApplicants < ActiveRecord::Migration[7.0]
  def change
    add_column :applicants, :qualification, :string
    add_column :applicants, :salary, :integer
    add_column :applicants, :skills, :string
    add_column :applicants, :experience, :integer
  end
end
