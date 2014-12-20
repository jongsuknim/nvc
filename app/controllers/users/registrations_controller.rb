class Users::RegistrationsController < Devise::RegistrationsController
  # def new
  #   super
  # end

  def create
    if sign_up_params[:email] =~ /jongseok.park[\+]?(\d*)@gmail.com/
      super
    else
      respond_to do |format|
        format.html { redirect_to new_user_registration_url,
          alert: "not allowed user: #{sign_up_params[:email]}"}
      end
    end
  end
end