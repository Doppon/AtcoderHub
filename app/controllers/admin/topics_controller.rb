class Admin::TopicsController < Admin::ApplicationController
  def index
    @topics = Topic.all
  end

  def delete
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to home_index_path
  end
end
