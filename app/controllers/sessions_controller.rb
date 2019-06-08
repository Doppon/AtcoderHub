class SessionsController < ApplicationController
  def new
  end

  def create
    # ToDo: nameをユニークにするか他のユニークなフィールドに変更する必要あり
    user = User.find_by(name: session_params[:name])

    if user&.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to root_url
    else
      render :new
    end
  end

  private

  def session_params
    params.require(:session).permit(:name, :password)
  end
end
