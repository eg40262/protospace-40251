class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
  # email、password、およびpassword_confirmationの3つのパラメータのみが許可されているので、
  # 追加のパラメータを追加する場合はbefore～を追記しなければならなかった。
end
