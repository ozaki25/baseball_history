BaseballHistory.Views.BattingHistories ||= {}

class BaseballHistory.Views.BattingHistories.BattingHistoryView extends Backbone.View
  template: JST["backbone/templates/batting_histories/batting_history"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
