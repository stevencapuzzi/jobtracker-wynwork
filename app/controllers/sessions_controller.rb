class SessionsController < ApplicationController

  def new
  end

  def create
    applicant = Applicant.find_by_email(params[:email])
    if applicant && applicant.authenticate(params[:password])
      session[:applicant_id] = applicant.id
      redirect_to root_url, notice: "Logged In"
    else
      redirect_to new_session_path, notice: "Email or passwword is invalid"
    end
  end

  def destroy
   session[:applicant_id] = nil
   redirect_to new_session_path notice: 'Logged out!'
 end 



  private
  def alloed_params
    params.require(:applicant).permit(:email, :password_digest)
  end
end

