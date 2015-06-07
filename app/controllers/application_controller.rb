class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  after_filter  :set_csrf_cookie_for_ng

  def set_csrf_cookie_for_ng
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  end

  def render_with_protection(json_content, parameters = {})
    render parameters.merge(content_type: 'application/json', text: "\n" + json_content)
  end

  protected

  def verified_request?
    super || form_authenticity_token == request.headers['X_XSRF_TOKEN']
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |c|
      c.permit(:email, :password, :password_confirmation, :firstName, :lastName, :street, :streetNr, :zipCode, :city, :birthDate, :birthPlace, :socialSecurityNumber, :nationality, :mobileNumber)
    end
  end
end
