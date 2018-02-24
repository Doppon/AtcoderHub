class TopicsController < ApplicationController
  def index
    @topics = Topic.all
    @newTopic = Topic.new
  end

  def show
  end

  def create
    @topic = Topic.new(params[:topic].permit(:title))
    @topic.save
    redirect_to topics_index_path
  end
  
end
