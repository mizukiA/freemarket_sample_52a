class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :nickname,
                                                        :family_name,
                                                        :last_name,
                                                        :family_name_kana,
                                                        :last_name_kana,
                                                        :birth_year,
                                                        :birth_month,
                                                        :birth_day
                                                      ])
  end

  def after_sign_out_path_for(resource)
    root_path # サインアウト後のリダイレクト先URL
  end
end
