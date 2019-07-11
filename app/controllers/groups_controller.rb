class GroupsController < ApplicationController
    before_action :set_group, only: [:show, :update, :destroy, :podcasts, :users, :usergroups]
    
    # GET /groups
    def index
        @groups = Group.all
        json_response(@groups)
    end
    
    # POST /groups
    def create
        @group = Group.create(group_params)
        json_response(@group, :created)
    end
    
    # GET /groups/:id
    def show
        json_response(@group)
    end

    # PUT /groups/:id
    def update
        @group.update(group_params)
    end
    
    # DELETE /groups/:id
    def destroy
        @group.destroy
    end

    # # Custom Routes # #

    # Get Group Podcasts 
    def podcasts 
        podcastArray = []
        @group.user_groups.each{|user_group| 
            user_group.podcasts.each{|podcast| 
                podcastArray << podcast}}
        json_response(podcastArray)
    end  
    
    # Get Group Users
    def users 
        # byebug
        json_response(@group.users)
    end 

    def usergroups
        # byebug
        json_response(@group.user_groups)

    end

    # Get User_Groups 
    def user_groups
        
    end
    
    private
    
    def group_params
        # whitelist params
        params.permit(:name, :description)
    end
    
    def set_group
        @group = Group.find(params[:id])
    end
end
