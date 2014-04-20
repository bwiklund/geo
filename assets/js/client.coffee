angular.module 'app', []


.factory 'Ticker', ($http) ->
  class Ticker
    constructor: (@nextEventId) ->

    pollLatestEvents: ->
      $http.get("/events/after/#{@nextEventId}").then (res) =>
        @nextEventId += res.data.length
        res.data


.directive 'tickerMap', (Ticker) ->
  scope:
    ticker: '='
    