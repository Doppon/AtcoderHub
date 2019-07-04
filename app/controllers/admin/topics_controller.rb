# ToDo: Admin側のViewからこっちのコントローラーをみてくれていない
class Admin::TopicsController < Admin::ApplicationController
  def index
    @topics = Topic.all
  end

  def delete
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to admin_topics_index_path
  end
end
