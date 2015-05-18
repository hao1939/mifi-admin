angular.module 'mifiAdmin'
  .controller 'StaticCardAssignmentCtrl', ($scope, StaticCardAssignment) ->
    $scope.static_card_assignments = StaticCardAssignment.query() # list all
    $scope.new_static_card_assignment = {}
    $scope.update = (static_card_assignment) ->
      static_card_assignment.sim_card_id = static_card_assignment.new_sim_card_id
      StaticCardAssignment.update({id: static_card_assignment.id}, {sim_card_id: static_card_assignment.sim_card_id})
    $scope.delete = (index) ->
      to_be_deleted = $scope.static_card_assignments[index]
      StaticCardAssignment.delete({id: to_be_deleted.id})
      $scope.static_card_assignments.splice(index, 1)
    $scope.create = (new_static_card_assignment) ->
      StaticCardAssignment.save(new_static_card_assignment).$promise.then((new_static_card_assignment) ->
        $scope.static_card_assignments.push(new_static_card_assignment)
        )
