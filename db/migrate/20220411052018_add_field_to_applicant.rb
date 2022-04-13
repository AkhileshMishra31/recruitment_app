class AddFieldToApplicant < ActiveRecord::Migration[7.0]
  def change
     add_column :applicants, :phonenumber, :string
  end
end
