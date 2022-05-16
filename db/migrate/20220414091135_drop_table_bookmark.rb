class DropTableBookmark < ActiveRecord::Migration[7.0]
  def change
     drop_table :bookmarkusers
     drop_table :bookmarks
  end
end
