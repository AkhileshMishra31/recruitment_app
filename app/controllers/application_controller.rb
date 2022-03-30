class ApplicationController < ActionController::Base
	 before_action :user_role
	 before_action :configure_permitted_parameters, if: :devise_controller?

	 def user_role
    	@role = current_user.role if current_user
     end

     protected
        def configure_permitted_parameters
         devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
        end
end
