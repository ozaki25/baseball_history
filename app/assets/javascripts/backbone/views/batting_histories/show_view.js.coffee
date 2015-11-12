BaseballHistory.Views.BattingHistories ||= {}

class BaseballHistory.Views.BattingHistories.ShowView extends Backbone.View
  template: JST["backbone/templates/batting_histories/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
