class Admin::HomeController < ApplicationController
  # ToDo: BASIC認証を管理画面全てに適応したい
  # => helper_method を用いて解決できそう
  before_action :basic

  def index
  end

  private

  def basic
    authenticate_or_request_with_http_basic do |name, password|
      # ToDo: 呼び出し場所を修正したい
      require 'dotenv'
      Dotenv.load
      name == ENV['BASIC_AUTH_NAME'] && password == ENV['BASIC_AUTH_PASSWORD']
    end
  end
end
