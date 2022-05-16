class CreateBookmarkusers < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarkusers do |t|

      t.timestamps
    end
  end
end
