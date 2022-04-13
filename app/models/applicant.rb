class Applicant < ApplicationRecord
	 has_one_attached :avatar 
	 has_one :interview ,class_name: 'Interview'
	 validates :name,:qualification,:salary,:skills,:experience,:avatar , presence: true
	 # validates :qualification, presence: true
	 # validates :salary, presence: true 
	 # validates :skills, presence: true
	 # validates :experience, presence: true
	 belongs_to :companyjob
	 belongs_to :user
end
