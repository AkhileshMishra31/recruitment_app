class ApplicationController < ActionController::Base
	 # before_action :is_role?
	 before_action :user_role

	 def user_role
    	@role = current_user.role if current_user
     end
end
