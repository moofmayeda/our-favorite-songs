class RemoveTimestampsFromSongsUsers < ActiveRecord::Migration
  def up
  	remove_column :songs_users, :created_at
  	remove_column :songs_users, :updated_at
  end

  def down
  	add_column :songs_users, :created_at, :datetime
  	add_column :songs_users, :updated_at, :datetime
  end
end
