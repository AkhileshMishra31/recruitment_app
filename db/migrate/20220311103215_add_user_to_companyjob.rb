class AddUserToCompanyjob < ActiveRecord::Migration[7.0]
  def change
     add_reference :companyjobs, :user, index: true
  end
end
