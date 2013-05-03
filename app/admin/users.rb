ActiveAdmin.register User do

  # make it work with strong parameters
  controller do
    def resource_params
      return [] if request.get?
      user_params = params[:user]
      user_params[:password] = user_params[:password_confirmation] = user_params[:encrypted_password]
      [ params.require(:user).permit(:email, :password, :password_confirmation) ]
    end
  end

end
