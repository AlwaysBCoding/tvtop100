class CreateRankingBoards < ActiveRecord::Migration
  def change
    create_table :ranking_boards do |t|
      t.belongs_to :tvshow, index: true
      t.belongs_to :user, index: true
      t.integer :capacity, default: 100

      t.timestamps
    end
  end
end
