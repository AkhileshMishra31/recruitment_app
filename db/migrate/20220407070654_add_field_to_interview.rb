class AddFieldToInterview < ActiveRecord::Migration[7.0]
  def change
    add_column :interviews, :interviewtiming, :datetime
    add_column :interviews, :interviewer, :string
    add_column :interviews, :dateofinterview, :date
    add_column :interviews, :interviewroom, :string
    add_column :interviews, :Docstobring, :string
  end
end
