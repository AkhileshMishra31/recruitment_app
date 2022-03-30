class AddUniqueIndex < ActiveRecord::Migration[7.0]
   def change
     add_index :applicants, [:companyjob_id, :user_id], unique: true
   end
end
