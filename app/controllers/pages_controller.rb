class PagesController < ApplicationController
  require_login only: [:deploy]

  def home
    redirect_to deploy_path if signed_in?
  end

  def deploy
  end

  def fribourg
  end
end
