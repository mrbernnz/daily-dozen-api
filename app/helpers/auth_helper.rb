module AuthHelper
  def signed_in?
    !current_user.nil?
  end

  def current_user
    @current_user
  end

  def correct_user
    render_unauthorized unless current_user == Athlete.find(params[:id])
  end

  def signed_in_user
    render_unauthorized unless signed_in?
  end

  private

  def render_unauthorized
    render json: { error: I18n.t('unauthorized') }, status: :unauthorized
  end
end
