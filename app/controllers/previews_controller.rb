class PreviewsController < ApplicationController
  def preview
    @site = params[:site]
    @res = case @site
    when "fribourg" then Open3.capture2e("bash lib/scripts/preview_fribourg.sh")
    when "romont"   then Open3.capture2e("bash lib/scripts/preview_romont.sh")
      else ["Unknown site", -1]
    end
    @exit_code = @res[1].to_s[-1].to_i
    @open_preview = params[:open_preview]
  end
end
