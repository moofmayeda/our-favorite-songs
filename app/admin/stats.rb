ActiveAdmin.register_page "Stats" do
  content do
  	columns do
  		column do
		  	panel "Top Songs" do
		  		table_for Song.joins(:favorites).select('songs.*, COUNT(song_id) AS "song_count"').group("songs.id").order("song_count DESC") do
		  			column :name
		  			column :artist
		  			column {|song| song.favorites.count }
		  		end
		  	end
		  end
		  column do
		  	panel "Top Artists" do
		  	end
		  end
		end
  end
end
