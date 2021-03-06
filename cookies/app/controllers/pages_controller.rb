class PagesController < ApplicationController

  before_action only: :private do

    if session[:signed_in]
    else
      session[:return_to] = request.url
      redirect_to sign_in_path, notice: "Please sign in"
    end
  end

  before_action  do
    @current_user = User.find(session[:user_id]) if session[:signed_in]
  end

  def public
  end

  def private
  end
end
