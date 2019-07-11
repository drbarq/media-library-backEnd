class UserGroupsController < ApplicationController
    before_action :set_user_group, only: [:update, :destroy]

    def index
        @user_groups = User_group.all
        json_response(@user_groups)
    end 

    def create 
        User_group.create(user_group_params)
    end 

    def update 
        @user_group.update(user_group_params)
    end 

    def destroy
        @user_group.destroy
    end

    private

    def set_podcast
        @user_group = User_group.find(params[:id])
    end

    def user_group_params
      # whitelist params
      params.permit(:user_id, :group_id)
    end
end
