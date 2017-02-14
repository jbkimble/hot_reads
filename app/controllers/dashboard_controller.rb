class DashboardController < ApplicationController
  def index
    @count = 0
    @urls = Url.where(updated_at: (Time.now - 24.hours)..Time.now)
    # @urls = Url.where(updated_at: (Time.now - 24.hours)..Time.now).group(:url)
  end
end
