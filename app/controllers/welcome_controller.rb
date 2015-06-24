class WelcomeController < ApplicationController
  def index
    #reset_session
    current_user
  end
end
