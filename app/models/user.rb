class User < ApplicationRecord
  has_many :companyjobs
  has_many :applicants
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   def has_applied?(companyjob_id)
     applicants.find companyjob_id
   end
end
