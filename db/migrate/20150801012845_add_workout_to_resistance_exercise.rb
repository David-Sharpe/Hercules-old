class AddWorkoutToResistanceExercise < ActiveRecord::Migration
  def change
    add_reference :resistance_exercises, :workout, index: true
  end
end
