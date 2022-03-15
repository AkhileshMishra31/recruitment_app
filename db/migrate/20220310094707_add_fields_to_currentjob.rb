class AddFieldsToCurrentjob < ActiveRecord::Migration[7.0]
  def change
     add_column :companyjobs, :experience, :integer
     add_column :companyjobs, :salary, :integer
     add_column :companyjobs, :qualification, :string
     add_column :companyjobs, :skills, :text
  end
end
