class AddArtistPicColumnToArtists < ActiveRecord::Migration
  def change
  	add_attachment :artists, :artist_pic
  end
end
