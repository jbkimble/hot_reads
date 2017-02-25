class DashboardController < ApplicationController
  def index
    @count = 0
    @urls = Url.where(updated_at: (Time.now - 24.hours)..Time.now).group('url').limit(10).count
  end
end
