require 'JSON'

class ResistanceWorkoutsController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :require_user_id
  
  def index
    render json: (ResistanceWorkout.find_by user_id: params[:user_id])
    
  end
  
  def show
    render json: (ResistanceWorkout.find_by id:params[:id], user_id: params[:user_id])
  end
  
  def create
    workout = ResistanceWorkout.new(params[:user_id])
    render json: workout
  end
  
  def destroy
    
  end
  

  def update
  end
  
  private
  
  def require_user_id
    raise ArgumentError unless params[:user_id]
  end
end
