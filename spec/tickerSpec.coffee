describe "ticker", ->
  it "exists", inject (Ticker) ->
    expect( Ticker ).toBeDefined()

  it "can poll the latest events", inject (Ticker, $httpBackend) ->
    ticker = new Ticker(0)
    ticker.pollLatestEvents()
    $httpBackend.expectGET("/events/after/0").respond [{},{},{}]
    $httpBackend.flush()
    expect( ticker.nextEventId ).toBe 3


describe "ticker element", ->
  it "can be created", inject (Ticker,$compile,$rootScope) ->
    scope = $rootScope.$new()
    scope.ticker = new Ticker 0
    el = $compile("<div ticker-map ticker='ticker'></div>")(scope)
    expect( el.scope().ticker ).toBeDefined()