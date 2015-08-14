class ExerciseEditorController < ApplicationController
  before_action :authenticate_user!
  
  def resistance
    my_session = session
    gon.user_id = current_user.id
  end

  def interval
  end

  def endurance
  end
end
