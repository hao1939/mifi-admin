angular.module 'mifiAdmin'
  .factory 'SimCard', ($resource) ->
    return $resource('/admin/sim_cards/:id', null, {'update': {method:'PUT'}})
