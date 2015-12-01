class BaseballHistory.Models.BattingHistory extends Backbone.Model
  paramRoot: 'batting_history'

  defaults:
    date: moment(new Date()).format("YYYY-MM-DD")
    opponent: ""
    plat_appearances: 0
    at_bats: 0
    hits: 0
    runs_batted_in: 0
    runs: 0
    stolen_bases: 0
    strikeouts: 0
    walks: 0
