class PodcastsController < ApplicationController
    before_action :set_user
    before_action :set_user_podcast, only: [:show, :update, :destroy]
    
    # GET /users/:user_id/podcasts
    def index
        json_response(@user.podcasts)
    end
    
    # GET /users/:user_id/podcasts/:id
    def show
        json_response(@podcast)
    end
    
    # POST /users/:user_id/podcasts
    def create
        @user.podcasts.create!(podcast_params)
        json_response(@user, :created)
    end
    
    # PUT /users/:user_id/podcasts/:id
    def update
        @podcast.update(podcast_params)
        head :no_content
    end
    
    # DELETE /users/:user_id/podcasts/:id
    def destroy
        @podcast.destroy
        head :no_content
    end
    
    private
    
    def podcast_params
        params.permit(:title, :author, :url, :comment)
    end
    
    def set_user
        @user = User.find(params[:user_id])
    end
    
    def set_user_podcast
        @podcast = @user.podcasts.find_by!(id: params[:id]) if @user
    end
      
end
