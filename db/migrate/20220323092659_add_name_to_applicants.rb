class AddNameToApplicants < ActiveRecord::Migration[7.0]
  def change
    add_column :applicants, :name, :string
  end
end
