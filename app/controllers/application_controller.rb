class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  # rescue_from StandardError do |e|
  #   logger.debug 'rescue_from api_controller'
  #   logger.debug e.message, :error
  #   logger.debug e.backtrace, :error
  #   render json: { error: e.message }, status: :internal_server_error
  # end

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
