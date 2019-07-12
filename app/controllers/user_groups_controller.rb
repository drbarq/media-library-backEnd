class UserGroupsController < ApplicationController
    before_action :set_user_group, only: [:update, :destroy, :show]

    def index
        @all_user_groups = UserGroup.all
        json_response(@all_user_groups)
    end 

    def show 
        json_response(@user_group)
    end 

    def create 
        @new = UserGroup.create(user_group_params)
        json_response(@new)
    end 

    def update 
        @user_group.update(user_group_params)
    end 

    def destroy
        @user_group.destroy
    end

    private

    def set_user_group
        @user_group = UserGroup.find(params[:id])
    end

    def user_group_params
      # whitelist params
      params.permit(:user_id, :group_id)
    end
end
