class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale

  def set_locale
    if params[:locale]
      I18n.locale = params[:locale]
    end
      #locale = I18n.locale
      ##locale = extract_locale_from_accept_language_header
      #if locale == "en"
        #I18n.locale = locale.to_sym
      #end

      #if locale == "bg"
        #I18n.locale = locale.to_sym
      #end
    #end

    I18n.locale = :en unless [ :bg, :en ].include?(I18n.locale)
  end

  def default_url_options(options={})
    { :locale => I18n.locale }
  end

  #def extract_locale_from_accept_language_header
    #request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first if request.env['HTTP_ACCEPT_LANGUAGE']
  #end
end
