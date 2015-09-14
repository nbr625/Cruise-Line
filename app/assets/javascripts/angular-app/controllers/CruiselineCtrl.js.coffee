angular.module('app.cruiselineApp').controller("CruiselineListCtrl", [
  '$scope', 'CruiselineService',
  ($scope, CruiselineService)->

    CruiselineService.list().then((cruiselines) ->
      $scope.cruiselines = cruiselines
      console.dir cruiselines
    )
])