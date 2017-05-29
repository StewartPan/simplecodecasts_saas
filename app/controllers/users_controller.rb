class UsersController < ApplicationController
    # before_action :set_user, only: [:show, :edit, :update, :destroy]
    # before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]
    mount_uploader :avatar, AvatarUploader

    def show
        @user = User.find( params[:id] )
    end
    
    def index
        @users = User.all
    end
    
    # private
    #     def set_user
    #         @user = User.find(params[:id])
    #     end
        
    #     def set_s3_direct_post
    #         @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
    #     end
end

