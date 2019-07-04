class TopicsController < ApplicationController

  def show
    @topic = Topic.find(params[:id])
    @newpost = Post.new(topic_id: params[:id])
    @posts = Post.where(topic_id: params[:id])
  end

  def new
    @newTopic = Topic.new
  end

  def create
    @topic = Topic.new(params[:topic].permit(:title))
    @topic.save!
    redirect_to home_index_path
  end

  # Adminの方に移したい
  def delete
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to admin_topics_index_path
  end
end
