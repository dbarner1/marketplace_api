class UsersController < ApplicationController
before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all
    json_response(@users)
  end

  # POST /todos
  def create
    @users = User.create!(user_params)
    json_response(@users, :created)
  end

  # GET /todos/:id
  def show
    json_response(@users)
  end

  # PUT /todos/:id
  def update
    @users.update(user_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @users.destroy
    head :no_content
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :user_id)
    params.permit(:first_name, :last_name, :user_id)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
