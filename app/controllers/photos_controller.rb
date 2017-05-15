class PhotosController < ApplicationController
before_action :authenticate_user!
#params.require(:photo).permit(:caption, {pictures: []})
#params.require(:user).permit(:email, :first_name, :last_name, {avatars: []})

  def create
      @place = Place.find(params[:place_id])
      @place.photos.create(photo_params)
      redirect_to place_path(@place)

    #You can use your uploader class to store and retrieve files like this:

    #uploader = AvatarUploader.new

    #uploader.store!(my_file)

    #uploader.retrieve_from_store!('my_file.png')
  end


private

def photo_params
  params.require(:photo).permit(:file, :caption)
   #params.require(:comment).permit(:message, :rating)
end

end

