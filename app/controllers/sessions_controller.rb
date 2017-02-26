class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.with_password.where("lower(name) = ?", params[:session][:name].strip.downcase).first
    if @user && @user.authenticate(params[:session][:password])
      sign_in @user, permanent: params[:session][:remember_me] == "1"
      redirect_to deploy_path, success: "Connexion réussie"
    else
      flash[:error] = "Nom d'utilisateur et/ou mot de passe incorrect(s)"
      redirect_to signin_path
    end
  end

  def destroy
    require_login!
    sign_out
    redirect_to signin_path, success: "Déconnexion réussie"
  end

  private

  def redirect_if_connected
    redirect_to deploy_path
  end
end
