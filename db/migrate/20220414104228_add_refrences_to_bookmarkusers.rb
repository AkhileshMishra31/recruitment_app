class AddRefrencesToBookmarkusers < ActiveRecord::Migration[7.0]
  def change
     add_reference :bookmarkusers, :companyjob, foreign_key: true
     add_reference :bookmarkusers, :user, foreign_key: true
  end
end
