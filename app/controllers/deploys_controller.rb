class DeploysController < ApplicationController
  require 'open3'

  def deploy
    @site = params[:site]
    @res = case @site
      when "fribourg" then Open3.capture2e('bash lib/scripts/deploy_fribourg.sh')
      when "romont"   then Open3.capture2e('bash lib/scripts/deploy_romont.sh')
      else ["Unknown site", -1]
    end
    # @res = Open3.capture2e('bash lib/scripts/test.sh')
    # p @res[0]
    # flash.now[:notice] = "Here is my flash notice"
  end

end
