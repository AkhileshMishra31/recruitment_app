class AddDescriptionFieldInCompanyjobs < ActiveRecord::Migration[7.0]
  def change
    add_column :companyjobs, :description, :text
  end
end
