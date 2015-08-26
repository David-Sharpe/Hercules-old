# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

app = angular.module 'ResistanceExercise', []
user_id = gon.user_id
workout_id = 1
app.controller 'ResistanceWorkoutsController', ['$http', '$log', ($http, $log) ->
  user_workouts = @
  @selected_workout = null
  $http.get('/resistance_workouts.json?user_id=' + user_id).success((data) ->
    user_workouts.workouts = data
    @selected_workout = user_workouts[0]
    return
  ).error((data) ->
    return
  )

  workout = @
  @load_workout = (data) ->
    workout_id = @selected_workout.id
    workout.exercises = [{'name': 'Bench'}, {'name': 'Squat'}]
    $http.get('/resistance_exercises.json?workout_id='+ workout_id).success((data) ->
      workout.exercises = data
      $log.log workout.exercises
      return
    ).error((data) ->
      return
    )
    
  @create_workout = (data) ->
    $http.post('/resistance_workouts.json?user_id=' + user_id).success((data) ->
      $log.log 'Made new workout'
      user_workouts.workouts.push(data)
    ).error((data) ->
      $log.log 'Workout create error'
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
      data.workout_id = workout_id
      workout.exercises.push(data)
    ).error((data) ->
        $log.log "Error"
        return
    )
  return workout
]
return
