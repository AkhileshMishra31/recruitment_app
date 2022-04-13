class CreateInterviews < ActiveRecord::Migration[7.0]
  def change
    create_table :interviews do |t|

      t.timestamps
    end
  end
end
