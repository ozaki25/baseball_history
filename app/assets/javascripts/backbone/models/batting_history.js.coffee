class BaseballHistory.Models.BattingHistory extends Backbone.Model
  paramRoot: 'batting_history'

  defaults:
    date: new Date()
    at_bats: 0
    hits: 0

class BaseballHistory.Collections.BattingHistoriesCollection extends Backbone.Collection
  model: BaseballHistory.Models.BattingHistory
  url: '/batting_histories'
