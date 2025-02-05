class SessionsController < ApplicationController
  allow_unauthenticated_access only: [:new, :create]

  before_action :redirect_if_authenticated, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    if user
      login user
      redirect_to after_sign_in_path
    else
      redirect_to new_session_path, alert: t("controllers.sessions.create.alert")
    end
  end

  def destroy
    logout
    redirect_to root_path
  end

  private

  def session_params
    params.expect(user: [:email, :password])
  end

  def user
    @_user ||= User.authenticate_by(email: session_params[:email], password: session_params[:password])
  end
end
