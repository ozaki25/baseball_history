json.array!(@batting_histories) do |batting_history|
  json.extract! batting_history, :id, :date, :opponent, :plat_appearances, :at_bats, :hits, :runs_batted_in, :runs, :stolen_bases, :strikeouts, :walks
  json.url batting_history_url(batting_history, format: :json)
end
