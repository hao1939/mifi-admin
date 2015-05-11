'use strict';

describe('controllers', function(){
  var scope;
  var CardBinding = {
    query: function () {return ['card_binding1', 'card_binding1', 'card_binding1']}
  };

  beforeEach(module('mifiAdmin'));

  beforeEach(inject(function($rootScope) {
    scope = $rootScope.$new();
  }));


  it('should assign card_bindings', inject(function($controller) {
    expect(scope.card_bindings).toBeUndefined();

    $controller('CardBindingCtrl', {
      $scope: scope,
      CardBinding: CardBinding
    });

    expect(scope.card_bindings.length).toBeGreaterThan(2);
  }));
});
