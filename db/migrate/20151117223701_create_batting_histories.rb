class CreateBattingHistories < ActiveRecord::Migration
  def change
    create_table :batting_histories do |t|
      t.date :date
      t.integer :at_bats
      t.integer :hits

      t.timestamps null: false
    end
  end
end
