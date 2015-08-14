# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

app = angular.module 'ResistanceExercise', []
user_id = gon.user_id
app.controller 'ResistanceExerciseController', ['$http', '$log', ($http, $log) -> 
  workout = @
  workout.exercises = [{'name': 'Bench'}, {'name': 'Squat'}]
  $http.get('/resistance_exercises.json?user_id='+user_id).success((data) ->
    $log.log "Success" + " " + user_id
    workout.exercises = data
    return
  ).error( (data) ->
    return
  )
  @save = (data) ->
    $log.log "data.url = " + data.url
    $log.log "Saving " + JSON.stringify(data)
    $http.put('/resistance_exercises/' + data.id + '.json', JSON.stringify(data)).success((data) ->
      $log.log "Successful save"
    ).error((data) ->
      $log.log "Error"
      return
    )
  @delete = (data) ->
    $log.log "Deleting" + JSON.stringify(data)
    $http.delete('/resistance_exercises/' + data.id).success((data) ->
      $log.log "Deleted"
      workout.exercises.splice(data.index, 1)
    ).error((data) ->
      $log.log "Error"
      return
    )
  @create = ->
    $log.log 'Posting'
    $http.post('/resistance_exercises.json', '{"name":""}').success((data) ->
      $log.log data
      workout.exercises.push(data)
    ).error((data) ->
        $log.log "Error"
        return
    )
  
  
  return workout
]
return
