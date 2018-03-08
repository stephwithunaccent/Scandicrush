class AlbumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :home ]

  def index
    @albums = Album.all
    @album = Album.find_by(name: "Nufferton")
    @meta_title = meta_title 'Paris Photographer'
  end

  def show
    @albums = Album.all
    @album = Album.find(params[:id])
    @kas = Album.find_by(name: "Mr/Mrs Genuine of the Month")
  end

  def new
    @album = Album.new()
  end

  def create
    @album = Album.new(album_params)
    @album.user = current_user
    if @album.save!
      redirect_to @album
    else
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    if @album.save!
      redirect to @album
    else
      render :new
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_path
  end

  private

  def album_params
  params.require(:album).permit(:name, :context)
  end

end
