class Users::SessionsController < Devise::SessionsController
before_action :configure_sign_in_params, only: [:create]

<<<<<<< HEAD
  GET /resource/sign_in
=======
  # GET /resource/sign_in
>>>>>>> master
  def new
    super
  end

<<<<<<< HEAD
  POST /resource/sign_in
  def create
    super
  end

  DELETE /resource/sign_out
  def destroy
    super
  end

  protected

=======
  # POST /resource/sign_in
  def create
    resource = User.find_for_database_authentication(email: params[:email])

    if resource.valid_password?(params[:password])
      render json: {:success=>true, :auth_token=>resource.confirmation_token, :email=>resource.email, :id => resource.id}
    end
    "failed"
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  protected

>>>>>>> master
  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  end
end
