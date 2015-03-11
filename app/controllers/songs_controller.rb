class SongsController < ApplicationController
	def index
		@songs = Song.all
	end

	def new
		@song = Song.new
	end

	def create
		@song = Song.new(song_params)
		if @song.save
			flash[:notice] = "Song created!"
			redirect_to song_path(@song)
		else
			render 'new'
		end
	end

	def show
		@song = Song.find(params[:id])
	end

private
	def song_params
		params.require(:song).permit(:name)
	end
end
