class PostController < ApplicationController
  def create
    @post = Post.new(params[:post].permit(:contest_id, :name, :body))
    @post.save!
    redirect_to contests_show_path(params[:post]['contest_id'])
  end

  def delete
    @post = Post.find(params[:id])
    @post.delete
    # ToDo: リダイレクト先を会話している詳細画面に遷移させたい
    redirect_to home_index_path
  end
end
