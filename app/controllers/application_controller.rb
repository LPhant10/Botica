# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
    before_action :set_locale
  
    def set_locale
      I18n.locale = params[:locale] if params[:locale].present? && I18n.available_locales.include?(params[:locale].to_sym)
    end
  end
  