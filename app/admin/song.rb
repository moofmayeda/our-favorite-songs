ActiveAdmin.register Song do
	belongs_to :artist, optional: true
	index do
		column :artist, sortable: 'artists.name'
		column :name
		default_actions
	end

	controller do
	  def scoped_collection
	    end_of_association_chain.includes(:artist)
	  end
	end
end
