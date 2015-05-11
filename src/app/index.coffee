angular.module 'mifiAdmin', ['ngResource', 'ngRoute', 'ui.bootstrap']
  .config ($routeProvider, $locationProvider) ->
    $routeProvider
      .when '/index.html',
        templateUrl: 'app/main/main.html'
        controller: 'MainCtrl'
      .when '/sim_cards/:id/edit',
        templateUrl: 'app/sim_cards/sim_card.edit.html'
        controller: 'SimCardCtrl'
      .when '/card_bindings',
        templateUrl: 'app/sim_cards/card_binding.index.html'
        controller: 'CardBindingCtrl'
      .otherwise
        redirectTo: '/index.html'
    $locationProvider.html5Mode(true)
