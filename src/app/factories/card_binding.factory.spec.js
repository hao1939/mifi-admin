'use strict';

describe('Service: CardBinding', function () {

  // load the service's module
  beforeEach(module('mifiAdmin'));

  // instantiate service
  var CardBinding;
  beforeEach(inject(function (_CardBinding_) {
    CardBinding = _CardBinding_;
  }));

  it('should do something', function () {
    expect(!!CardBinding).toBe(true);
  });

});
