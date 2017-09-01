class PhotosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show ]
  before_action :set_photo, only: [ :show, :edit, :update, :destroy]
  before_action :set_album, only: [ :new, :create ]

  def index
    if params[:tag].present?
      @tag = params[:tag]
      @photos = Photo.where('tag LIKE ?', @tag)
    else
      @photos = Photo.all
    end
  end

  def show
  end

  def new
    @photo = Photo.new
    @albums = Album.all
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save!
      redirect_to album_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @photo.update(photo_params)
      redirect to @photo
    else
      render :edit
    end
  end

  def destroy
    @photo.destroy
    redirect_to album_photos_path
  end

  private

  def set_album
    @album = Album.find(params[:album_id])
  end

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:name, :date, :context, :album_id )
  end
end
