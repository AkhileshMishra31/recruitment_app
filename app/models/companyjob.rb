class Companyjob < ApplicationRecord
	 validates :name,:experience,:salary,:description,:location,:skills,:companyname,:jobtype,:avatar,:jobcategory, presence: true
     has_many :applicants
	 belongs_to :user
	 has_one_attached :avatar
end
