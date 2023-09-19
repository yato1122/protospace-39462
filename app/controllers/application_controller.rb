class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :username, :profile, :occupation, :position])
    # 他の Devise アクションにも同様の変更を適用する場合、ここに追加します
  end
end