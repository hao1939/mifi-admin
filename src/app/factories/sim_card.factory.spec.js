'use strict';

describe('Service: SimCard', function () {

  // load the service's module
  beforeEach(module('mifiAdmin'));

  // instantiate service
  var SimCard;
  beforeEach(inject(function (_SimCard_) {
    SimCard = _SimCard_;
  }));

  it('should do something', function () {
    expect(!!SimCard).toBe(true);
  });

});
