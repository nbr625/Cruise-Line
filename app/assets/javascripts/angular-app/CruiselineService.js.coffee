angular.module('app.cruiselineApp')
	.factory('CruiselineService', [
		'Restangular', 'Cruiseline',
		(Restangular, Cruiseline)->
			model = 'cruiselines'
			

			Restangular.extendModel(model, (obj)->
				angular.extend(obj, Cruiseline)
			)

			list: ()-> 
				Restangular.all(model).getList()
	])



