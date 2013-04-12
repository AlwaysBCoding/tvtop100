class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.belongs_to :moment, index: true
      t.belongs_to :ranking_board, index: true
      t.integer :rank

      t.timestamps
    end
  end
end
