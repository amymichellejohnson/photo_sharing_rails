class PhotosController <ApplicationController

  def new
    @photo = current_user.photos.new
    @users = User.all
  end

  def create
    @photo = current_user.photos.new(photo_params)
    if @photo.save
      flash[:notice] = "Photo successfully uploaded"
      redirect_to user_photos_path
    else
      render :new
    end
  end

  def photo_params
    params.require(:photo).permit(:photo, :tagged)
  end
end
