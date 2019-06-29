class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
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
                                                        :birth_day,
                                                        :uid,
                                                        :provider
                                                      ])
  end

  def after_sign_up_path_for(resource)
    sms_path
  end

  def after_inactive_sign_up_path_for(resource)
    sms_path
  end

  def after_sign_out_path_for(resource)
    root_path # サインアウト後のリダイレクト先URL
  end

  private

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

end