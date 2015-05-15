angular.module 'mifiAdmin'
  .controller 'StaticCardAssignmentCtrl', ($scope, StaticCardAssignment) ->
    $scope.static_card_assignments = StaticCardAssignment.query() # list all
    $scope.update = (static_card_assignment) ->
      static_card_assignment.sim_card_id = static_card_assignment.new_sim_card_id
      StaticCardAssignment.update({id: static_card_assignment.id}, {sim_card_id: static_card_assignment.sim_card_id})
    $scope.delete = (static_card_assignment) ->
      StaticCardAssignment.delete({id: static_card_assignment.id})
      $scope.static_card_assignments = StaticCardAssignment.query()
