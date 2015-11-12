class BaseballHistory.Routers.BattingHistoriesRouter extends Backbone.Router
  initialize: (options) ->
    @battingHistories = new BaseballHistory.Collections.BattingHistoriesCollection()
    @battingHistories.reset options.battingHistories

  routes:
    "new"      : "newBattingHistory"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newBattingHistory: ->
    @view = new BaseballHistory.Views.BattingHistories.NewView(collection: @batting_histories)
    $("#batting_histories").html(@view.render().el)

  index: ->
    @view = new BaseballHistory.Views.BattingHistories.IndexView(collection: @batting_histories)
    $("#batting_histories").html(@view.render().el)

  show: (id) ->
    batting_history = @batting_histories.get(id)

    @view = new BaseballHistory.Views.BattingHistories.ShowView(model: batting_history)
    $("#batting_histories").html(@view.render().el)

  edit: (id) ->
    batting_history = @batting_histories.get(id)

    @view = new BaseballHistory.Views.BattingHistories.EditView(model: batting_history)
    $("#batting_histories").html(@view.render().el)
