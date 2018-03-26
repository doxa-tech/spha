class DeploysController < ApplicationController
  require 'open3'

  def deploy
    @site = params[:site]
    @res = case @site
<<<<<<< HEAD
    when "quartierlibreromont_ch" then Open3.capture2e("bash lib/scripts/deploy_quartierlibreromont.sh #{Rails.application.secrets.fribourg_user} #{Rails.application.secrets.jsport}")
    when "romont_eebulle_ch"   then Open3.capture2e("bash lib/scripts/deploy_romont.sh #{Rails.application.secrets.romont_user} #{Rails.application.secrets.jsport}")
=======
    when "quartierlibreromont" then Open3.capture2e("bash lib/scripts/deploy_quartierlibreromont.sh #{Rails.application.secrets.fribourg_user} #{Rails.application.secrets.jsport}")
    when "romont"   then Open3.capture2e("bash lib/scripts/deploy_romont.sh #{Rails.application.secrets.romont_user} #{Rails.application.secrets.jsport}")
>>>>>>> parent of 0121c1e... refactoring
      else ["Unknown site", -1]
    end
    @exit_code = @res[1].to_s[-1].to_i
  end

end
