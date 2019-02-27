class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include SessionsHelper
    def current_applicant
        Applicant.find(session[:applicant_id])
    end
    
    private
    def logged_in?
        @current_applicant ||= Applicant.find(session[:applicant_id]) if session[:applicant_id]
    end
end
