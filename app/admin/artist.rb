ActiveAdmin.register Artist do
	form do |f|
		f.semantic_errors *f.object.errors.keys

		f.inputs "Artist" do
			f.input :name
		end

		f.inputs "Song" do
			f.has_many :songs, heading: false do |s|
				s.input :name
			end
		end

		f.actions
	end
end
