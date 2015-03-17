ActiveAdmin.register Artist do
	form html: { enctype: "multipart/form-data" } do |f|
		f.semantic_errors *f.object.errors.keys

		f.inputs "Artist" do
			f.input :name
			f.input :artist_pic, as: :file, hint: f.template.image_tag(f.object.artist_pic.url(:thumb))
		end

		f.inputs "Song" do
			f.has_many :songs, heading: false do |s|
				s.input :name
			end
		end

		f.actions
	end

	show do
    panel "Songs" do
      table_for artist.songs do
        column :name
        column("Favorites") {|song| song.favorites.count }
      end
    end
  end

  action_item only: :show do
		link_to("New Song", new_admin_artist_song_path(artist))
	end
end
