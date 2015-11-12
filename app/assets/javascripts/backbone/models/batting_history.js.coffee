class BaseballHistory.Models.BattingHistory extends Backbone.Model
  paramRoot: 'batting_history'

  defaults:
    date: null
    at_bats: null
    hits: null

class BaseballHistory.Collections.BattingHistoriesCollection extends Backbone.Collection
  model: BaseballHistory.Models.BattingHistory
  url: '/batting_histories'
