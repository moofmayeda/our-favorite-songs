ActiveAdmin.register Person do
	belongs_to :artist, polymorphic: true, optional: true
	belongs_to :user, polymorphic: true, optional: true
	form do |f|
		f.inputs "Details" do
			f.semantic_errors *f.object.errors.keys
			f.input :human_artist, as: :select, collection: Artist.all
			f.input :human_user, as: :select, collection: User.all
		end
		f.actions
	end
end