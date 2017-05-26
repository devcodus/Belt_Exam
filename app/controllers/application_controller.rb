class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    User.find(session[:user_id]) if session[:user_id] ###check to see if vice versa order works###
    @running = Emoji.find_by_alias("notes").raw
  end

  def emoji
    @cat = Emoji.find_by_alias("cat").raw
  end

  helper_method :current_user, :emoji
end
