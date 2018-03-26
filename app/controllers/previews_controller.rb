class PreviewsController < ApplicationController
  def preview
    @site = params[:site]
    @res = case @site
    when "quartierlibreromont.ch" then Open3.capture2e("bash lib/scripts/preview_quartierlibreromont.sh #{Rails.application.secrets.fribourg_user} #{Rails.application.secrets.jsport}")
    when "romont.eebulle.ch"   then Open3.capture2e("bash lib/scripts/preview_romont.sh #{Rails.application.secrets.romont_user} #{Rails.application.secrets.jsport}")
      else ["Unknown site", -1]
    end
    @exit_code = @res[1].to_s[-1].to_i
    @open_preview = params[:open_preview]
  end
end
