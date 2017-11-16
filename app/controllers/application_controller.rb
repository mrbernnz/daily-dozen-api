class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods
  include ExceptionHandler
  include AuthHelper

  before_action :authenticate

  protected

  def authenticate
    authenticate_token || render_unauthorized
  end

  def authenticate_token
    authenticate_with_http_token do |token, _options|
      @current_user = Athlete.find_by(token: token)
    end
  end

  def render_unauthorized
  end
end
