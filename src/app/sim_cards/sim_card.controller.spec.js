'use strict';

describe('controllers', function(){
  var scope;
  var SimCard = {
    get: function () {return {id: 1, status: 'free'} }
  };

  beforeEach(module('mifiAdmin'));

  beforeEach(inject(function($rootScope) {
    scope = $rootScope.$new();
  }));


  it('should assign a sim_card', inject(function($controller) {
    expect(scope.sim_card).toBeUndefined();

    $controller('SimCardCtrl', {
      $scope: scope,
      SimCard: SimCard
    });

    expect(angular.isObject(scope.sim_card)).toBeTruthy();
  }));
});
