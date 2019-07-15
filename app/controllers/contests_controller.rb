class ContestsController < ApplicationController

  def show
    @contest = Contest.find(params[:id])
    @newpost = Post.new(contest_id: params[:id])
    @posts = Post.where(contest_id: params[:id])
  end

  def new
    @newContest = Contest.new
  end

  def create
    @contest = Contest.new(params[:contest].permit(:title))
    @contest.save!
    redirect_to home_index_path
  end

  # ToDo: Adminの方に移したい
  def delete
    @contest = Contest.find(params[:id])
    @contest.destroy
    redirect_to admin_contests_index_path
  end
end
