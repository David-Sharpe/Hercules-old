class ResistanceExercisesController < ApplicationController
  before_action :set_resistance_exercise, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @resistance_exercises = ResistanceExercise.all
    respond_with(@resistance_exercises)
  end

  def show
    respond_with(@resistance_exercise)
  end

  def new
    @resistance_exercise = ResistanceExercise.new
    respond_with(@resistance_exercise)
  end

  def edit
  end

  def create
    @resistance_exercise = ResistanceExercise.new(resistance_exercise_params)
    @resistance_exercise.save
    respond_with(@resistance_exercise)
  end

  def update
    @resistance_exercise.update(resistance_exercise_params)
    respond_with(@resistance_exercise)
  end

  def destroy
    @resistance_exercise.destroy
    respond_with(@resistance_exercise)
  end

  private
    def set_resistance_exercise
      @resistance_exercise = ResistanceExercise.find(params[:id])
    end

    def resistance_exercise_params
      params.require(:resistance_exercise).permit(:name, :resistance, :repetitions, :sets)
    end
end
