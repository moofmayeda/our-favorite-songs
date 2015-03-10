class CreateJoinTable < ActiveRecord::Migration
  def change
    create_table :users_songs do |t|
    	t.integer :user_id
    	t.integer :song_id
    	t.timestamps
    end
  end
end
