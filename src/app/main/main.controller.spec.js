'use strict';

describe('controllers', function(){
  var scope;
  var SimCard = {
    query: function () {return ['sim_card1', 'sim_card2', 'sim_card3']}
  };

  beforeEach(module('mifiAdmin'));

  beforeEach(inject(function($rootScope) {
    scope = $rootScope.$new();
  }));


  it('should define more than 2 sim_cards', inject(function($controller) {
    expect(scope.sim_cards).toBeUndefined();

    $controller('MainCtrl', {
      $scope: scope,
      SimCard: SimCard
    });

    expect(angular.isArray(scope.sim_cards)).toBeTruthy();
    expect(scope.sim_cards.length).toBeGreaterThan(2);
  }));
});
