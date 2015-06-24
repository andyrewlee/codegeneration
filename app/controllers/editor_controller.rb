class EditorController < ApplicationController
  def index
    @editor = true
    current_user
  end

  def show
    @editor = true
    if !signed_in? 
      deny_access 
    end
  end
end
