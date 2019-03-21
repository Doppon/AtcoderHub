class Admin::HomeController < ApplicationController
  before_action :basic

  def index
  end

  private
  def basic
    authenticate_or_request_with_http_basic do |name, password|
      # name == ENV['BASIC_AUTH_NAME'] && password == ENV['BASIC_AUTH_PASSWORD']
      name == "name" && password == "pass"
    end
  end
end
