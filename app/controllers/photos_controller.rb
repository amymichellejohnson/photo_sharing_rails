class PhotosController <ApplicationController

  def new
    @photo = Photo.new
  end

  def create
    @current_user = current_user
    @photo = @current_user.photos.new(photo_params)
    if @photo.save
      flash[:notice] = "Photo successfully uploaded"
      redirect_to user_photos_path
    else
      render :new
    end
  end

  def photo_params
    params.require(:photo).permit(:photo)
  end
end
