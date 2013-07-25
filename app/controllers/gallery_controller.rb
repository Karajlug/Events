class GalleryController < ApplicationController

  def index
    @albums = Album.all
  end

  def pictures(album_id)
  end

  def videos(album_id)
  end

  def docs(album_id)
  end

end
