BaseballHistory.Views.BattingHistories ||= {}

class BaseballHistory.Views.BattingHistories.IndexView extends Backbone.View
  template: JST["backbone/templates/batting_histories/index"]

  initialize: () ->
    @collection = new BaseballHistory.Collections.BattingHistoriesCollection()
    @collection.fetch()
    @listenTo(@collection, 'sync', @render);

  addAll: () =>
    @collection.each(@addOne)

  addOne: (battingHistory) =>
    view = new BaseballHistory.Views.BattingHistories.BattingHistoryView({model : battingHistory})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(battingHistories: @collection.toJSON() ))
    @addAll()

    return this
