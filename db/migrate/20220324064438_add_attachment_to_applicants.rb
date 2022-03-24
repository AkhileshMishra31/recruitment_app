class AddAttachmentToApplicants < ActiveRecord::Migration[7.0]
  def change
     add_column :applicants, :attachment, :string
  end
end
