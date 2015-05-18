angular.module 'mifiAdmin'
  .controller 'CardBindingCtrl', ($scope, CardBinding) ->
    $scope.card_bindings = CardBinding.query() # list all
    $scope.deactive = (index) ->
      to_be_deactive = $scope.card_bindings[index]
      CardBinding.update({id: to_be_deactive.id}, {actived: false})
      $scope.card_bindings.splice(index, 1)
