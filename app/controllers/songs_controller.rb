class SongsController < ApplicationController


  def index
    @songs = Song.all
    @user = User.find(session[:user_id])



    @cat = Emoji.find_by_alias("cat").raw
    @notes = Emoji.find_by_alias("notes").raw
    @shipit = Emoji.find_by_alias("shipit").raw
  end

  def create
    if params[:title] && params[:artist]
      song = Song.create(title:params[:title], artist:params[:artist])
      Hit.create(user_id:session[:user_id], song_id:song.id)
    redirect_to :back
    end
  end

  def show
    @song = Song.find(params[:id])
    # @users = Hit.where(song_id:params[:id])
  end

  def add
    @hit = Hit.create(user_id:session[:user_id], song_id:params[:id])

    redirect_to :back
  end
end
