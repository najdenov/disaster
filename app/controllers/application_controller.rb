class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale

  def set_locale
    if params[:locale]
      I18n.locale = params[:locale]
    end

    I18n.locale = :en unless [ :bg, :en ].include?(I18n.locale)
  end

  def default_url_options(options={})
    { :locale => I18n.locale }
  end
end
