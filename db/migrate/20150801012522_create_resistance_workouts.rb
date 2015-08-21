class CreateResistanceWorkouts < ActiveRecord::Migration
  def change
    create_table :resistance_workouts do |t|
      t.references :user, index: true
      t.timestamps
    end
  end
end
