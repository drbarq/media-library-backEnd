class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy, :podcasts, :groups]

  # GET /users
  def index
    @users = User.all
    json_response(@users)
  end

  # POST /users
  def create
    @user = User.create(user_params)
    json_response(@user)
  end

  # GET /users/:id
  def show
    json_response(@user)
  end

  # PUT /users/:id
  def update
    @user.update(user_params)
  end

  # DELETE /users/:id
  def destroy
    @user.destroy
  end

# # Custom Routes # #
  def podcasts 
    json_response(@user.podcasts)
  end 

  def groups 
    json_response(@user.groups)
  end 

  private

  def user_params
    # whitelist params
    params.permit(:name, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
