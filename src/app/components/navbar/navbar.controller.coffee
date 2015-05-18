angular.module "mifiAdmin"
  .controller "NavbarCtrl", ($scope) ->
    $scope.my_base = angular.element(document.querySelector('base')).attr('href')
    $scope.date = new Date()
