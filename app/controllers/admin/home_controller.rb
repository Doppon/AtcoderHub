class Admin::HomeController < ApplicationController
  before_action :basic

  def index
  end

  private
  def basic
    authenticate_or_request_with_http_basic do |name, password|
      # ToDo: 呼び出し場所を修正
      require 'dotenv'
      Dotenv.load
      name == ENV['BASIC_AUTH_NAME'] && password == ENV['BASIC_AUTH_PASSWORD']
    end
  end
end
