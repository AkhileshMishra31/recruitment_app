class AddNameFieldJob < ActiveRecord::Migration[7.0]
  def change
     add_column :companyjobs, :name, :string
  end
end
