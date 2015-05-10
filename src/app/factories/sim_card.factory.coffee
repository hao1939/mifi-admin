angular.module 'mifiAdmin'
  .factory 'SimCard', ($resource) ->
    return $resource('/api/sim_cards/:id', null, {'update': {method:'PUT'}})
