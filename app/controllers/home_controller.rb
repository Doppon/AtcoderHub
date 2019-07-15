class HomeController < ApplicationController
  def index
    @contests = Contest.all
  end
end
