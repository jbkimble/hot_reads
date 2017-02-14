class Api::V1::UrlsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
      url = Url.new(url_params)
    if url.save
      render json: url, :only => [:id, :url]
    else
    end
  end

  private
    def url_params
      params.require(:url).permit(:url)
    end
end
