class BaseballHistory.Models.BattingHistory extends Backbone.Model
  paramRoot: 'batting_history'

  defaults:
    date: new Date()
    at_bats: 0
    hits: 0
    runs_batted_in: 0
    stolen_bases: 0
