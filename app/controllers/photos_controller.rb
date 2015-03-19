class PhotosController <ApplicationController

  def new
    @photo = Photo.new
  end

  def create
    @user = User.find(params[:current_user_id])
    @photo = @user.photos.new(photo_params)
    if @photo.save
      flash[:notice] = "Photo successfully uploaded"
      redirect_to user_photo(@photo)
    else
      render :new
    end
  end

  def photo_params
    params.require(:photo).permit(:photo)
  end
end
