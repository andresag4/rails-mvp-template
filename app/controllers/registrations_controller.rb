class RegistrationsController < ApplicationController
  allow_unauthenticated_access

  before_action :redirect_if_authenticated

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      login @user
      redirect_to root_path, notice: t("controllers.registration.create.success")
    else
      render :new, alert: t("controllers.registration.create.failure")
    end
  end

  private

  def user_params
    params.expect(user: [:email, :password, :password_confirmation])
  end
end
