module SessionsHelper
    
    def log_in(applicant)
        session[:applicant_id] = applicant.id
    end

    def current_applicant
        if session[:applicant_id]
          @current_applicant ||= Applicant.find_by(id: session[:applicant_id])
        else
            @current_applicant = nil
        end
    end

    def current_admin
        if session[:admin_id]
          @current_admin ||= Admin.find_by(id: session[:admin_id])
        else
          @current_admin = nil
        end
    end

    def logged_in?
        !current_applicant.nil?
    end
end
