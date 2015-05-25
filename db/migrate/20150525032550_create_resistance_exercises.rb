class CreateResistanceExercises < ActiveRecord::Migration
  def change
    create_table :resistance_exercises do |t|
      t.string :name
      t.decimal :resistance
      t.integer :repetitions
      t.integer :sets

      t.timestamps
    end
  end
end
