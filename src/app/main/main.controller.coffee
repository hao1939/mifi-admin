angular.module 'mifiAdmin'
  .controller 'MainCtrl', ($location, $scope, SimCard) ->
    $scope.sim_cards = SimCard.query()
    $scope.show_sim_card = (sim_card) ->
      $location.path('sim_cards/'+sim_card.id + '/edit')
    # $scope.sim_cards = [
    #   {
    #     "id":1,
    #     "ready":true,
    #     "status":"free",
    #     "network_enabled":true,
    #     "card_addr":"Alcor Micro AU9540 00 00/0",
    #     "mcc":"1300",
    #     "mnc":"62",
    #     "imsi":"083901626024119139"
    #   },
    #   {
    #     "id":2,
    #     "ready":true,
    #     "status":"free",
    #     "network_enabled":true,
    #     "card_addr":"Alcor Micro AU9540 00 00/0",
    #     "mcc":"1300",
    #     "mnc":"62",
    #     "imsi":"083901626024119139"
    #   },
    # ]
