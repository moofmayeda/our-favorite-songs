ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      span :class => "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.

    columns do
      column do
        panel "Recent Favorites" do
          ul do
            Favorite.recent.map do |favorite|
              li link_to(favorite.user.username, admin_user_path(favorite.user)) + " favorited " + link_to(favorite.song.name, admin_song_path(favorite.song)) + " by " + link_to(favorite.song.artist.name, admin_artist_path(favorite.song.artist))
            end
          end
        end
      end

      column do
        panel "Your favorite songs" do
          table_for current_user.songs do |t|
            t.column :name
            t.column :artist
          end
        end
      end
    end
  end # content
end