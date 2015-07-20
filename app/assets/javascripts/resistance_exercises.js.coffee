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
    $log.log "data.url = " + data.url
    $log.log "Saving " + JSON.stringify(data)
    $log.log '/resistance_exercises/' + data.id + '.json'
    $http.put('/resistance_exercises/' + data.id + '.json', JSON.stringify(data)).success((data) ->
      $log.log "Successful save"
    ).error((data) ->
      $log.log "Error"
      return
    )
  return workout
]
return
