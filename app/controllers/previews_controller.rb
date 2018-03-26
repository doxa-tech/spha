class PreviewsController < ApplicationController
  def preview
    @site = params[:site]
    @site_id = @site
    @res = case @site
    when "quartierlibreromont" then 
      @site = "preview.quartierlibreromont.ch"
      Open3.capture2e("bash lib/scripts/preview_quartierlibreromont.sh #{Rails.application.secrets.fribourg_user} #{Rails.application.secrets.jsport}")
    when "romont" then
      @site = "preview-eebulle.romont.ch"
      Open3.capture2e("bash lib/scripts/preview_romont.sh #{Rails.application.secrets.romont_user} #{Rails.application.secrets.jsport}")
    else 
      ["Unknown site: #{@site}", -1]
    end
    @exit_code = @res[1].to_s[-1].to_i
    @open_preview = params[:open_preview]
  end
end
