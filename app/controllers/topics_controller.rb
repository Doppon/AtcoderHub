class TopicsController < ApplicationController
  before_action :basic, only: [:show]

  def show
    @topic = Topic.find(params[:id])
    @newpost = Post.new(topic_id: params[:id])
    @posts = Post.where(topic_id: params[:id])
  end

  def create
    @topic = Topic.new(params[:topic].permit(:title))
    @topic.save
    redirect_to topics_index_path
  end

  def delete
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_index_path
  end

  private
  def basic
    authenticate_or_request_with_http_basic do |name, password|
      # name == ENV['BASIC_AUTH_NAME'] && password == ENV['BASIC_AUTH_PASSWORD']
      name == "name" && password == "pass"
    end
  end
end
