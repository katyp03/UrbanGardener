class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:fname, :lname, :email, :username, :bio, :hometown, :propic, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:fname, :lname, :email, :username, :bio, :hometown, :propic, :password, :password_confirmation, :current_password)
  end

    # protected

    # def configure_permitted_parameters
    #   devise_parameter_sanitizer.for(:sign_up) << :propic  
    #   devise_parameter_sanitizer.for(:account_update) << :propic
    # end

	# def configure_permitted_parameters
 #   		devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:propic) }
 #   		devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:propic) }  
	# end

end
