json.array!(@resistance_exercises) do |resistance_exercise|
  json.extract! resistance_exercise, :id, :name, :resistance, :repetitions, :sets
  json.url resistance_exercise_url(resistance_exercise, format: :json)
end
