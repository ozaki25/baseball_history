class AddColumnToBattingHistory < ActiveRecord::Migration
  def change
    add_column :batting_histories, :runs_batted_in, :integer
    add_column :batting_histories, :stolen_bases, :integer
  end
end
