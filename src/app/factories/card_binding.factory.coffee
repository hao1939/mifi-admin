angular.module 'mifiAdmin'
  .factory 'CardBinding', ($resource) ->
    return $resource('/api/card_bindings/:id', null, {'update': {method:'PUT'}})
