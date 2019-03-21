class HomeController < ApplicationController
  def index
    @topics = Topic.all
    @newTopic = Topic.new
  end
end
