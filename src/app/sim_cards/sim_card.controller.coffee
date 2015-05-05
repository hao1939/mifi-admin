angular.module 'mifiAdmin'
  .controller 'SimCardCtrl', ($scope, $routeParams, SimCard) ->
    $scope.id = $routeParams.id
    $scope.sim_card = SimCard.get({id: $scope.id})
    $scope.update = () ->
      SimCard.update({id: $scope.id}, $scope.sim_card)
