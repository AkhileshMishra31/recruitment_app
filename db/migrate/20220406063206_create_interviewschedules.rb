class CreateInterviewschedules < ActiveRecord::Migration[7.0]
  def change
    create_table :interviewschedules do |t|

      t.timestamps
    end
  end
end
