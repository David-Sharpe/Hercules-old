require 'JSON'

class ResistanceExercisesController < ApplicationController
  protect_from_forgery with: :null_session
  
  def get
    render json: ResistanceExercise.all
  end

  def post
  end

  def put
  end

  def delete
  end
end
