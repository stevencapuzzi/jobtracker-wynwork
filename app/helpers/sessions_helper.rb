module SessionsHelper
    
    def log_in(applicant)
        session[:applicant_id] = applicant.id
    end

    def current_user
        if session[:user_id]
          @current_applicant ||= Applicant.find_by(id: session[:applicant_id])
        end
    end

    def logged_in?
        !current_applicant.nil?
    end
end
