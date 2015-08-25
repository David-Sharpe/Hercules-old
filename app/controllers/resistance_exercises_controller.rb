#require 'JSON'

class ResistanceExercisesController < ActionController::Base
  protect_from_forgery with: :null_session
  
  def show
    render json: ResistanceExercise.find(params[:id])
  end
  
  def index
   render json: ResistanceExercise.where(workout_id: params[:workout_id])
  end

  def create
    exercise = ResistanceExercise.new(resistance_params)
    if exercise.save
      render json: exercise, status: 201, location: resistance_exercise_url(exercise)
    end
  end

  def update
    
    local = params[:resistance_exercise]
    id = local[:id]
    exercise = ResistanceExercise.find(params[:id])
    if exercise.update(resistance_params)
      render json: exercise, status: 200
    end
  end

  def destroy
    ResistanceExercise.find(params[:id]).destroy
    head 204
    
  end
  
  private
  def resistance_params
    params.require(:resistance_exercise).permit(:name, :resistance, :unit, :repetitions, :sets, :workout_id)
  end
end
