class ApplicationController < ActionController::Base
  # authenticate_user!メソッドにより、ログインしていないユーザーをログインページに遷移させる
  before_action :authenticate_user!

  # もしdevise controllerに係る処理であればmethod実行
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    # devise_parameter_sanitizer : 特定のカラムを許容する
    # nameはもともと無いカラムのため許容してあげる必要がある
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
