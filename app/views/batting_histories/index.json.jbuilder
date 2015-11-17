json.array!(@batting_histories) do |batting_history|
  json.extract! batting_history, :id, :date, :at_bats, :hits
  json.url batting_history_url(batting_history, format: :json)
end
