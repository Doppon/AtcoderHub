# ToDo: Admin側のViewからこっちのコントローラーをみてくれていない
class Admin::ContestsController < Admin::ApplicationController
  def index
    @contests = Contest.all
  end

  def delete
    @contest = Contest.find(params[:id])
    @contest.destroy
    redirect_to admin_contests_index_path
  end
end
