class PhotosController < ApplicationController
    def index
        photos = Photo.all
        render json {status: 200, photos: photos}
    end
end
