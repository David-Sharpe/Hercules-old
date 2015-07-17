require 'JSON'
module Api
class ResistanceExercisesController < ApplicationController
  protect_from_forgery with: :null_session
  
  def show
    render json: '{"result":5}'
  end
  
  def index
    #if params[:id]
    #  render json: ResistanceExercise.find(params[:id])
    #else
    #  render json: ResistanceExercise.all

    render json: ResistanceExercise.all if params[:id].nil?
    render json: ResistanceExercise.find(params[:id]) unless params[:id].nil?
  end

  def create
    exercise = ResistanceExercise.new(resistance_params)
    #binding.remote_pry
    #exercise.update(resis)
    if exercise.save
      render json: exercise, status: 201, location: resistance_exercise_url(exercise)
    end
  end

  def update
    
    local = params[:resistance_exercise]
    id = local[:id]
    exercise = ResistanceExercise.find(id)
    #binding.remote_pry
    if exercise.update(resistance_params)
      render json: exercise, status: 200
    end
  end

  def destroy
  end
  
  private
  def resistance_params
    params.require(:resistance_exercise).permit(:name, :resistance, :unit, :repetitions, :sets)
  end
end
end