class Interview < ApplicationRecord
	belongs_to :applicant ,class_name: 'Applicant' 
end

