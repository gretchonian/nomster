class PhotosController < ApplicationController
before_action :authenticate_user!
#params.require(:photo).permit(:caption, {pictures: []})
#params.require(:user).permit(:email, :first_name, :last_name, {avatars: []})

  def create
      @place = Place.find(params[:place_id])
      @place.photos.create(photo_params)
      redirect_to place_path(@place)
#u = User.new
#u.avatar = params[:file] # Assign a file like this, or

# like this
#File.open('somewhere') do |f|
 # u.avatar = f
#end

#u.save!
#u.avatar.url # => '/url/to/file.png'
#u.avatar.current_path # => 'path/to/file.png'
#u.avataSr_identifier # => 'file.png'
#Note: u.avatar will never return nil, even if there is no photo associated to it. To check if a photo was saved to the model, use u.avatar.file.nil? instead.
    #You can use your uploader class to store and retrieve files like this:

  end


private

def photo_params
  params.require(:photo).permit(:picture, :caption)
   #params.require(:comment).permit(:message, :rating)
end

end

