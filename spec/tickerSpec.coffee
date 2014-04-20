describe "ticker", ->
  it "exists", inject (Ticker) ->
    expect( Ticker ).toBeDefined()

  it "can poll the latest events", inject (Ticker, $httpBackend) ->
    ticker = new Ticker(0)
    ticker.pollLatestEvents()
    $httpBackend.expectGET("/events/after/0").respond [{},{},{}]
    $httpBackend.flush()
    expect( ticker.nextEventId ).toBe 3