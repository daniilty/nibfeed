class AdmlogController < ApplicationController
  def log
    redirect_to root_url if isadm
  end
  def logout
  end
  def dosome
    adm = Admin.find_by(email: params[:session][:email].downcase)
    if adm && adm.authenticate(params[:session][:password])
      log_in adm
      redirect_to root_url 
    else
      redirect_to root_url
    end
  end
  def destroy 
    session.delete(:adm_id)
  end
end
