require 'JSON'

class ResistanceExercisesController < ApplicationController
  protect_from_forgery with: :null_session
  
  def get
    #if params[:id]
    #  render json: ResistanceExercise.find(params[:id])
    #else
    #  render json: ResistanceExercise.all

    render json: ResistanceExercise.all if params[:id].nil?
    render json: ResistanceExercise.find(params[:id]) unless params[:id].nil?
  end

  def post
  end

  def put
    
    local = params[:resistance_exercise]
    id = local[:id]
    exercise = ResistanceExercise.find(id)
    #binding.remote_pry
    if exercise.update(resistance_params)
      render json: exercise, status: 200
    end
  end

  def delete
  end
  
  private
  def resistance_params
    params.require(:resistance_exercise).permit(:name, :resistance, :unit, :repetitions, :sets)
  end
end
