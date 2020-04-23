module AdmlogHelper
  def log_in(adm)
    session[:adm_id] = adm.id
  end
  def isadm
    session[:adm_id] != nil
  end
  def curadm
    Admin.find(session[:adm_id])
  end
end
