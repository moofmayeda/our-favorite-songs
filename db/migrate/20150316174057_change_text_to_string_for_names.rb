class ChangeTextToStringForNames < ActiveRecord::Migration
  def change
  	change_column :artists, :name, :string
  	change_column :songs, :name, :string
  end
end
