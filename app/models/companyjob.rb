class Companyjob < ApplicationRecord
    has_many :applicants
	belongs_to :user
	has_one_attached :avatar
end
