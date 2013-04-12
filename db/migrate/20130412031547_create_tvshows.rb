class CreateTvshows < ActiveRecord::Migration
  def change
    create_table :tvshows do |t|
      t.string :name
      t.string :slug
      t.integer :seasons

      t.timestamps
    end
  end
end
