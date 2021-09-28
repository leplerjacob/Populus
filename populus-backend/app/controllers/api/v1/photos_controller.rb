module Api
    module V1
        class PhotosController < ApplicationController
            def index
                photos = Photo.all
                render json: {status: 200, photos: photos}
            end

            def create
                byebug
                # uploaded_photo.attach(params[:profile_picture])
            end
        # 
            def upload_photo
                # test code
                first = User.first
                photo = Photo.new(location: "DC", description: "first photo", tags: "basic", user_id: first.id)
                photo.file.attach(params[:file])
                photo.save()
            end
        end
    end
end

