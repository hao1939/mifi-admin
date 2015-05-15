angular.module 'mifiAdmin'
  .factory 'StaticCardAssignment', ($resource) ->
    return $resource('/api/static_card_assignments/:id', null, {'update': {method:'PUT'}})
