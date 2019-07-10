class PodcastsController < ApplicationController
    before_action :set_podcast, only: [:update, :destroy]

    def index
        @podcasts = Podcast.all
        json_response(@podcasts)
    end 

    def create 
        Podcast.create(podcast_params)
    end 

    def update 
        @podcast.update(podcast_params)
    end 

    def destroy
        @podcast.destroy
    end

    private

    def set_podcast
        @podcast = Podcast.find(params[:id])
    end

    def podcast_params
      # whitelist params
      params.permit(:episodeName, :showName, :url, :comment, :user_id)
    end

end
