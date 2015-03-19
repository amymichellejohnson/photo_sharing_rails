class PhotosController <ApplicationController

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.find(params[:user_id])
    @user = session[:user_id] = @user.id
  end

  def photo_params
    params.require(:photo).permit(:photo)
  end
end
