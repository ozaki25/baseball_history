BaseballHistory.Views.BattingHistories ||= {}

class BaseballHistory.Views.BattingHistories.NewView extends Backbone.View
  template: JST["backbone/templates/batting_histories/new"]

  events:
    "submit #new-batting_history": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (batting_history) =>
        @model = batting_history
        window.location.hash = "/#{@model.id}"

      error: (batting_history, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
