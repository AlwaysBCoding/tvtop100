class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.belongs_to :tvshow, index: true
      t.integer :season
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
