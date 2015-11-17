BaseballHistory.Views.BattingHistories ||= {}

class BaseballHistory.Views.BattingHistories.EditView extends Backbone.View
  template: JST["backbone/templates/batting_histories/edit"]

  events:
    "submit #edit-batting_history": "update"

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success: (batting_history) =>
        @model = batting_history
        window.location.hash = "/#{@model.id}"
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
