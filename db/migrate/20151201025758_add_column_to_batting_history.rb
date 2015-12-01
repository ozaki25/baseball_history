class AddColumnToBattingHistory < ActiveRecord::Migration
  def change
    add_column :batting_histories, :opponent, :string
    add_column :batting_histories, :plat_appearances, :integer
    add_column :batting_histories, :runs_batted_in, :integer
    add_column :batting_histories, :stolen_bases, :integer
    add_column :batting_histories, :runs, :integer
    add_column :batting_histories, :strikeouts, :integer
    add_column :batting_histories, :walks, :integer
  end
end
