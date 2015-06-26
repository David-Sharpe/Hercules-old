# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

app = angular.module 'ResistanceExercise', []

app.controller 'ResistanceExerciseController', ['$http', '$log', ($http, $log) -> 
  workout = @
  workout.exercises = [{'name': 'Bench'}, {'name': 'Squat'}]
  $http.get('/resistance_exercises.json').success((data) ->
    $log.log "Success"
    workout.exercises = data
    return
  ).error( (data) ->
    return
  )
  @save = (data) ->
    $log.log "Saving " + JSON.stringify(data)
    return
    $http.put(data.url, '{"resistance_exercise": "id": 1, "Name": "Bench Press"}}').success((data) ->
      $log.log "Successful save"
    ).error((data) ->
      $log.log "Error"
      return
    )
  return workout
]
return
