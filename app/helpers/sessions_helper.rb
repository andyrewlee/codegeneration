module SessionsHelper
  def sign_in(user)
    session[:user_id] = user.id
    self.current_user = user
    redirect_to "/users/#{user.id}"
  end

  def current_user=(user)
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end

  def current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end

  def signed_in?
    !current_user.nil?
  end

  def deny_access
    flash[:errors] = ["Please sign in to access that page"]
    redirect_to '/sessions/new'
  end
end
