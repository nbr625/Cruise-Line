cruise_line = angular.module('cuise_line', [

])

cruise_line.controller('CruiseCtrl', ($scope, 'cruises')->
	CruiseFactory().success (data)->
		$scope.cruises = data
	}
})

cruise_line.factory('cruises', ($http)-> 
	var promise = null

	 ->
		if (promise)->
			return promise
		else ->
			promise = $http.get('cruisedata.json')

			return promise
		}	
		success( (data, status, headers, config)-> {

	#cruise_lines

	$scope.cruise_line_id
	$scope.cruise_line_name
	$scope.cruise_ship_name
	$scope.sailing_main_image

	#sailing options

	$scope.cruise_line.sailing_price
	$scope.cruise_line.sailing_date



})
