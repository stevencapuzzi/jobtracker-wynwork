class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include SessionsHelper
    def current_applicant
        Applicant.find(session[:applicant_id])
    end

    def current_admin
        Admin.find(session[:admin_id])
    end
    
    private
    def is_signed_in?
        if session[:applicant_id] || session[:admin_id]
        else 
         redirect_to login_url
        end
     end

     def is_admin?
        if session[:admin_id]
         redirect_to applicants_path
        end
     end
end
