class EditorController < ApplicationController
  def index
    @editor = 'test'
    current_user
  end
end
