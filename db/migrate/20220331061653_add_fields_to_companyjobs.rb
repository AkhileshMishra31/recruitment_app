class AddFieldsToCompanyjobs < ActiveRecord::Migration[7.0]
  def change
    add_column :companyjobs, :companyname, :string
    add_column :companyjobs, :jobtype, :string
    add_column :companyjobs, :jobcategory, :string
    add_column :companyjobs, :location, :string
  end
end
