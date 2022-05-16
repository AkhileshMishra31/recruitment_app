class Bookmarkuser < ApplicationRecord
	belongs_to :user
	belongs_to :companyjob
end
