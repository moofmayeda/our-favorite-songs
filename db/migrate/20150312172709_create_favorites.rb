class CreateFavorites < ActiveRecord::Migration
  def up
  	create_table :favorites do |t|
  		t.belongs_to :song, index: true
  		t.belongs_to :user, index: true
  		t.timestamps
  	end
  	drop_table :songs_users
  end

  def down
  	drop_table :favorites
  	create_table :songs_users, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :song, index: true
  	end
  end
end
