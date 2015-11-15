#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.BaseballHistory =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  initialize: ->
    window.router = new BaseballHistory.Routers.BattingHistoriesRouter()
    Backbone.history.start(pushState: true)
