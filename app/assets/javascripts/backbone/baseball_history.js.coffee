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
  initialize: (battingHistories) ->
    window.router = new BaseballHistory.Routers.BattingHistoriesRouter({battingHistories: battingHistories})
    Backbone.history.start(pushState: true)

