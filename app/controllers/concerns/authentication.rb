module Authentication
  extend ActiveSupport::Concern

  VALID_SESSION_DAYS = 2

  included do
    helper_method :current_user, :authenticated?

    before_action :authenticate!
  end

  class_methods do
    def allow_unauthenticated_access(**options)
      skip_before_action :authenticate!, **options
    end
  end

  private

  def authenticate!
    return if authenticated?

    redirect_to new_session_path
  end

  def login(user)
    cookies.encrypted[:user_id] = {
      value: user.id,
      expires: VALID_SESSION_DAYS.days.from_now
    }

    Current.user = user
  end

  def logout
    cookies.delete(:user_id)
    Current.user = nil
  end

  def current_user
    Current.user ||= User.find_by(id: cookies.encrypted[:user_id])
  end

  def authenticated?
    current_user.present?
  end

  def redirect_if_authenticated
    return unless authenticated?

    redirect_to root_path
  end

  def after_sign_in_path
    session.delete(:after_sign_in_path).presence || root_path
  end
end
