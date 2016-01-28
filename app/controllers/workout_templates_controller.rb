class WorkoutTemplatesController < ApplicationController
  protect_from_forgery with: :null_session
  
  def index
    templates = WorkoutTemplate.where user_id: params[:user_id]
    render json: templates
  end
  
  def show
    render json: (WorkoutTemplate.where params[:user_id])
  end
  
  def create
  end
  
  def destroy
    template = WorkoutTemplate.where id: params[id]
    template.destory
    head 204
  end
  
  def update
    
  end
end
