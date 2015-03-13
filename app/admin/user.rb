ActiveAdmin.register User do
	index do
		column :id
		column :username, sortable: :username do |user|
			link_to(user.username, admin_user_path(user))
		end
		column :email
		column :last_sign_in_at
	end

	form do |f|
    f.inputs "User Details" do
      f.input :username
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
