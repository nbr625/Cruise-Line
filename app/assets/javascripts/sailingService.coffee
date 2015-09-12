app = angular.module("CruiseApp", [])

app.service("CruiseService", ($http, $q)=>
	deferred = $q.defer()
	$http.get('cruisedata.json').then (data)->
		deferred.resolve(data)
	@getplayer = ->
		deferred.promise

	
) 

.controller("cruiseCtrl", ($scope, ravensService)->
	promise = ravensService.getPlayers()
	promise.then (data)->
		$scope.cruise_line_id
		$scope.cruise_line_name
		$scope.cruise_ship_name
		$scope.sailing_main_image
)