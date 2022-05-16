class Companyjob < ApplicationRecord
	 validates :name,:experience,:salary,:description,:location,:skills,:companyname,:jobtype,:avatar,:jobcategory, presence: true
     has_many :applicants
     has_many :bookmarkusers
	 belongs_to :user
	 has_one_attached :avatar
end
