ActiveAdmin.register User do
	index do
		column :id
		column :username, sortable: :username do |user|
			link_to(user.username, admin_user_path(user))
		end
		column :email
		column :last_sign_in_at
	end
end
