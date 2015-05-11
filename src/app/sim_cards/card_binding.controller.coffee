angular.module 'mifiAdmin'
  .controller 'CardBindingCtrl', ($scope, CardBinding) ->
    $scope.card_bindings = CardBinding.query() # list all
    $scope.deactive = (card_binding) ->
      CardBinding.update({id: card_binding.id}, {actived: false})
      card_binding.active = false
