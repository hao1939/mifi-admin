angular.module 'mifiAdmin', ['ngResource', 'ngRoute', 'ui.bootstrap']
  .config ($routeProvider, $locationProvider) ->
    $routeProvider
      .when "/",
        templateUrl: "app/main/main.html"
        controller: "MainCtrl"
      .otherwise
        redirectTo: "/"
    $locationProvider.html5Mode(true)
