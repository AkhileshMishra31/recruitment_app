class Applicant < ApplicationRecord
	 has_one_attached :attachment
	 mount_uploader :attachment, AttachmentUploader
	 belongs_to :companyjob
	 belongs_to :user
end
