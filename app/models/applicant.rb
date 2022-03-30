class Applicant < ApplicationRecord
	 validates :name, presence: true
	 validates :qualification, presence: true
	 validates :salary, presence: true 
	 validates :skills, presence: true
	 validates :experience, presence: true
	 has_one_attached :attachment
	 mount_uploader :attachment, AttachmentUploader
	 belongs_to :companyjob
	 belongs_to :user
end
