class CreateMoments < ActiveRecord::Migration
  def change
    create_table :moments do |t|
      t.belongs_to :episode, index: true
      t.string :title
      t.text :analysis
      t.string :media_type
      t.string :media_url
      t.string :image

      t.timestamps
    end
  end
end
