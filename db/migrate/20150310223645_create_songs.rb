class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.text :name

      t.timestamps
    end
  end
end
