class ResistanceWorkoutsController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :require_user_id
  
  def index
    workouts = ResistanceWorkout.where user_id: params[:user_id]
    render json: (workouts)
    
  end
  
  def show
    render json: (ResistanceWorkout.find_by id: params[:id], user_id: params[:user_id])
  end
  
  def create
    workout = ResistanceWorkout.new(user_id: params[:user_id])
    render json: workout if workout.save
  end
  
  def destroy
    workout = ResistanceWorkout.find_by(id: params[id], user_id: params[:user_id])
    workout.destroy
    head 204
  end
  

  def update
  end
  
  private
  
  def require_user_id
    raise ArgumentError unless params[:user_id]
  end
end
