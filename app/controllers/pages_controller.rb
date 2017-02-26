class PagesController < ApplicationController
  require_login only: [:deploy]

  def home
  end

  def deploy
  end

  def fribourg
  end
end
