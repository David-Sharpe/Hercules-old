# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

app = angular.module 'ResistanceExercise', []

app.controller 'ResistanceExerciseController', ['$http', '$log', ($http, $log) -> 
	workout = @
	workout.exercises = [{'name': 'Bench'}, {'name': 'Squat'}]
	@barg = [{"name": "Jimmy"}]
	$http.get('/resistance_exercises.json').success((data) ->
		$log.log "Success"
		workout.exercises = data
		return	
	).failure((data) ->
		$log.log "Failed request"
		workout.exercises = [{'name': 'Bench'}, {'name': 'Squat'}]
		return
	)
	return
]
