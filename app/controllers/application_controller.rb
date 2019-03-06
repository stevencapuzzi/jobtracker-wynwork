class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include SessionsHelper
    def current_applicant
       if session[:applicant_id]
          Applicant.find(session[:applicant_id])
       else
        nil
       end
    end

    def current_admin
      if session[:admin_id]
        Admin.find(session[:admin_id])
      else
        nil
      end
    end
    
    private
    def is_signed_in?
        if session[:applicant_id] || session[:admin_id]
        else 
         redirect_to login_url
        end
     end

     def admin_home?
        if session[:admin_id]
         redirect_to applicants_path
        end
     end

     def is_admin?
        if session[:admin_id]
            return true
        end
    end
end
