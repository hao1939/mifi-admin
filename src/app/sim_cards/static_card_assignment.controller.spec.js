'use strict';

describe('controllers', function(){
  var scope;
  var StaticCardAssignment = {
    query: function () {return ['static_card_assignment1', 'static_card_assignment2', 'static_card_assignment3']}
  };

  beforeEach(module('mifiAdmin'));

  beforeEach(inject(function($rootScope) {
    scope = $rootScope.$new();
  }));


  it('should assign static_card_assignments', inject(function($controller) {
    expect(scope.static_card_assignments).toBeUndefined();

    $controller('StaticCardAssignmentCtrl', {
      $scope: scope,
      StaticCardAssignment: StaticCardAssignment
    });

    expect(scope.static_card_assignments.length).toBeGreaterThan(2);
  }));
});
